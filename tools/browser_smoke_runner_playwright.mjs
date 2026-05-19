#!/usr/bin/env node

import { chromium } from 'playwright';
import fs from 'node:fs/promises';
import path from 'node:path';

const [specPath, outputDir] = process.argv.slice(2);

if (!specPath || !outputDir) {
  console.error('Usage: browser_smoke_runner_playwright.mjs <spec_json_path> <output_dir>');
  process.exit(1);
}

const spec = JSON.parse(await fs.readFile(specPath, 'utf8'));
await fs.mkdir(outputDir, { recursive: true });

const screenshotPath = path.join(outputDir, 'smoke.png');
const failureScreenshotPath = path.join(outputDir, 'failure.png');
const consolePath = path.join(outputDir, 'console.json');
const resultPath = path.join(outputDir, 'result.json');

const consoleEntries = [];
const navigationEvents = [];
const browser = await chromium.launch({ headless: true });
const page = await browser.newPage();
const mode = spec.mode || ((Array.isArray(spec.steps) || Array.isArray(spec.assertions)) ? 'functional' : 'smoke');
page.on('console', (msg) => {
  consoleEntries.push({
    type: msg.type(),
    text: msg.text(),
  });
});

const fail = async (message) => {
  try {
    await page.screenshot({ path: failureScreenshotPath, fullPage: true });
  } catch {}
  await fs.writeFile(consolePath, JSON.stringify(consoleEntries, null, 2) + '\n');
  await fs.writeFile(resultPath, JSON.stringify({
    status: 'failure',
    message,
    attachments: [failureScreenshotPath, consolePath],
    navigation: navigationEvents,
    url: page.url(),
    title: await page.title().catch(() => null),
  }, null, 2) + '\n');
  await browser.close();
  process.exit(1);
};

const waitTimeout = 10000;

const isTimeoutError = (error) => {
  const message = error instanceof Error ? error.message : String(error);
  return message.includes('Timeout') || message.includes('timeout');
};

const firstErrorLine = (error) => {
  const message = error instanceof Error ? error.message : String(error);
  return message.split('\n')[0];
};

const gotoWithFallback = async (url, readyCheck) => {
  try {
    await page.goto(url, { waitUntil: 'networkidle', timeout: 30000 });
    return;
  } catch (error) {
    if (!isTimeoutError(error)) {
      throw error;
    }
    navigationEvents.push({
      type: 'goto_fallback',
      url,
      from: 'networkidle',
      to: 'domcontentloaded',
      reason: firstErrorLine(error),
    });
  }

  await page.goto(url, { waitUntil: 'domcontentloaded', timeout: 30000 });
  if (readyCheck) {
    await readyCheck();
  }
};

const waitForOptionalNetworkIdle = async (label) => {
  try {
    await page.waitForLoadState('networkidle', { timeout: waitTimeout });
  } catch (error) {
    if (!isTimeoutError(error)) {
      throw error;
    }
    navigationEvents.push({
      type: 'optional_networkidle_timeout',
      label,
      reason: firstErrorLine(error),
    });
  }
};

const scopeFromTarget = (target = {}) => {
  if (target?.frame_selector) {
    return page.frameLocator(target.frame_selector);
  }
  return page;
};

const locatorFromTarget = (target, purpose) => {
  const scope = scopeFromTarget(target);
  if (target?.selector) {
    return scope.locator(target.selector).first();
  }
  if (target?.text) {
    return scope.getByText(target.text, { exact: false }).first();
  }
  throw new Error(`${purpose} requires selector or text`);
};

const runStep = async (step, index) => {
  const action = step?.action || step?.type;

  switch (action) {
    case 'click':
      await locatorFromTarget(step, `Step ${index + 1} click`).click();
      return;
    case 'fill':
      if (!step?.selector || typeof step.value !== 'string') {
        throw new Error(`Step ${index + 1} fill requires selector and value`);
      }
      await scopeFromTarget(step).locator(step.selector).first().fill(step.value);
      return;
    case 'set_value':
      if (!step?.selector || typeof step.value !== 'string') {
        throw new Error(`Step ${index + 1} set_value requires selector and value`);
      }
      await scopeFromTarget(step).locator(step.selector).first().evaluate((element, value) => {
        element.value = value;
        element.dispatchEvent(new Event('input', { bubbles: true }));
        element.dispatchEvent(new Event('change', { bubbles: true }));
      }, step.value);
      return;
    case 'apex_submit':
      await page.evaluate((request) => {
        if (!globalThis.apex?.submit) {
          throw new Error('apex.submit is not available on the page');
        }
        globalThis.apex.submit({ request, validate: true });
      }, step.request || 'LOGIN');
      await page.waitForLoadState('domcontentloaded');
      await waitForOptionalNetworkIdle(`step-${index + 1}-apex-submit`);
      return;
    case 'press':
      if (!step?.key) {
        throw new Error(`Step ${index + 1} press requires key`);
      }
      await page.keyboard.press(step.key);
      return;
    case 'wait_for_text':
      if (!step?.text) {
        throw new Error(`Step ${index + 1} wait_for_text requires text`);
      }
      await scopeFromTarget(step).getByText(step.text, { exact: false }).first().waitFor({ state: 'visible', timeout: waitTimeout });
      return;
    case 'wait_for_selector':
      if (!step?.selector) {
        throw new Error(`Step ${index + 1} wait_for_selector requires selector`);
      }
      await scopeFromTarget(step).locator(step.selector).first().waitFor({ state: 'visible', timeout: waitTimeout });
      return;
    case 'goto':
      if (!step?.url) {
        throw new Error(`Step ${index + 1} goto requires url`);
      }
      await gotoWithFallback(step.url);
      return;
    default:
      throw new Error(`Unsupported browser functional step: ${action ?? '<missing>'}`);
  }
};

const runAssertion = async (assertion, index) => {
  switch (assertion?.type) {
    case 'text_visible':
      if (!assertion?.text) {
        throw new Error(`Assertion ${index + 1} text_visible requires text`);
      }
      await scopeFromTarget(assertion).getByText(assertion.text, { exact: false }).first().waitFor({ state: 'visible', timeout: waitTimeout });
      return;
    case 'selector_visible':
      if (!assertion?.selector) {
        throw new Error(`Assertion ${index + 1} selector_visible requires selector`);
      }
      await scopeFromTarget(assertion).locator(assertion.selector).first().waitFor({ state: 'visible', timeout: waitTimeout });
      return;
    case 'url_includes':
      if (!assertion?.value) {
        throw new Error(`Assertion ${index + 1} url_includes requires value`);
      }
      await page.waitForURL(url => url.href.includes(assertion.value), { timeout: waitTimeout });
      return;
    case 'title_includes':
      if (!assertion?.value) {
        throw new Error(`Assertion ${index + 1} title_includes requires value`);
      }
      await page.waitForFunction((expected) => document.title.includes(expected), assertion.value, { timeout: waitTimeout });
      return;
    default:
      throw new Error(`Unsupported browser functional assertion: ${assertion?.type ?? '<missing>'}`);
  }
};

try {
  if (spec.login_url) {
    await gotoWithFallback(spec.login_url, async () => {
      await page.locator('#F4550_P1_USERNAME').waitFor({ state: 'visible', timeout: waitTimeout });
    });

    if (spec.workspace) {
      await page.locator('#F4550_P1_COMPANY').fill(spec.workspace);
    }
    if (spec.username) {
      await page.locator('#F4550_P1_USERNAME').fill(spec.username);
    }
    if (spec.password) {
      await page.locator('#F4550_P1_PASSWORD').fill(spec.password);
    }

    await page.getByRole('button', { name: 'Sign In' }).click();
    await page.waitForURL(url => !url.href.includes('/workspace-sign-in/'), { timeout: 20000 });
    await page.waitForLoadState('domcontentloaded');
    await waitForOptionalNetworkIdle('apex-builder-login');

    if (/sign in/i.test(await page.title())) {
      await fail('APEX Builder login did not complete successfully');
    }
  }

  await gotoWithFallback(spec.url);

  if (Array.isArray(spec.steps)) {
    for (const [index, step] of spec.steps.entries()) {
      await runStep(step, index);
    }
  }

  if (spec.contains_text) {
    const locator = page.getByText(spec.contains_text, { exact: false }).first();
    await locator.waitFor({ state: 'visible', timeout: 10000 });
  }

  if (spec.selector) {
    await page.locator(spec.selector).waitFor({ state: 'visible', timeout: 10000 });
  }

  if (Array.isArray(spec.assertions)) {
    for (const [index, assertion] of spec.assertions.entries()) {
      await runAssertion(assertion, index);
    }
  }

  await page.screenshot({ path: screenshotPath, fullPage: true });
  await fs.writeFile(consolePath, JSON.stringify(consoleEntries, null, 2) + '\n');
  await fs.writeFile(resultPath, JSON.stringify({
    status: 'success',
    message: mode === 'functional' ? `Functional checks passed for ${spec.url}` : `Opened ${spec.url}`,
    attachments: [screenshotPath, consolePath],
    navigation: navigationEvents,
  }, null, 2) + '\n');
  await browser.close();
} catch (error) {
  await fail(error instanceof Error ? error.message : String(error));
}
