const { chromium } = require('playwright');
const path = require('path');

(async () => {
  const pageSql = String.raw`D:\ja-projects\apex\apex-bootstrap\export\sales-tools@test\f138\apex\f138\application\pages\page_00133.sql`;
  const browser = await chromium.launch({ headless: true });
  const page = await browser.newPage();
  try {
    await page.goto('https://apex.jasolar.com:10443/ords/prdapex23/_/landing', { waitUntil: 'networkidle', timeout: 120000 });
    await page.locator('.card').nth(1).locator('button.card__go-button-cdb').click();
    await page.waitForLoadState('networkidle');

    const loginText = await page.locator('body').innerText();
    if (!/Workspace|workspace|工作区/.test(loginText)) {
      throw new Error('Builder login page not reached:\n' + loginText.slice(0, 2500));
    }

    await page.locator('input[name*="WORKSPACE" i], input[id*="WORKSPACE" i]').first().fill('JA_PROD');
    await page.locator('input[name*="USERNAME" i], input[id*="USERNAME" i]').first().fill('JA016181');
    await page.locator('input[type="password"]').first().fill('lwh123..');
    const signIn = page.getByRole('button', { name: /Sign In|登录|Log In/i }).first();
    if (await signIn.count()) {
      await signIn.click();
    } else {
      await page.keyboard.press('Enter');
    }
    await page.waitForLoadState('networkidle');

    const appListText = await page.locator('body').innerText();
    if (!/销售工具集/.test(appListText)) {
      throw new Error('App list not reached:\n' + appListText.slice(0, 2500));
    }

    await page.getByText(/销售工具集\s*138/).first().click();
    await page.waitForLoadState('networkidle');

    const appHomeText = await page.locator('body').innerText();
    if (!/Export|Import|Utilities|Shared Components/i.test(appHomeText)) {
      throw new Error('App home not reached:\n' + appHomeText.slice(0, 2500));
    }

    const importExportLink = page.getByRole('link', { name: /Export \/ Import|Import \/ Export/i }).first();
    if (await importExportLink.count()) {
      await importExportLink.click();
      await page.waitForLoadState('networkidle');
    } else {
      throw new Error('Import/Export entry not found');
    }

    const importText = await page.locator('body').innerText();
    if (!/Import/i.test(importText)) {
      throw new Error('Import page not reached:\n' + importText.slice(0, 2500));
    }

    const importPageLink = page.getByText(/Import Page|Page Import|Import/i).first();
    if (await importPageLink.count()) {
      await importPageLink.click();
      await page.waitForLoadState('networkidle');
    }

    const fileInput = page.locator('input[type="file"]').first();
    if (!await fileInput.count()) {
      throw new Error('File input not found:\n' + (await page.locator('body').innerText()).slice(0, 2500));
    }
    await fileInput.setInputFiles(pageSql);

    for (let i = 0; i < 6; i++) {
      const buttons = await page.getByRole('button').evaluateAll(btns => btns.map(b => (b.innerText || b.textContent || '').trim()).filter(Boolean));
      const target = buttons.find(t => /Next|Install Page|Replace Page|Import Page|Install|Replace|Import|导入|替换|下一步/.test(t));
      if (!target) break;
      await page.getByRole('button', { name: target }).first().click();
      await page.waitForLoadState('networkidle');
    }

    const finalText = await page.locator('body').innerText();
    const screenshot = path.join(String.raw`D:\ja-projects\apex\apex-bootstrap\output\playwright`, 'prod-p133-import-result.png');
    await page.screenshot({ path: screenshot, fullPage: true });
    console.log(finalText);
  } finally {
    await browser.close();
  }
})().catch(err => {
  console.error('AUTOMATION_FAILED');
  console.error(err && err.stack ? err.stack : String(err));
  process.exit(1);
});
