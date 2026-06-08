const { chromium } = require('playwright');
(async () => {
  const browser = await chromium.launch({ headless: true });
  const page = await browser.newPage();
  try {
    await page.goto('https://apex.jasolar.com:10443/ords/prdapex23/', { waitUntil: 'networkidle', timeout: 120000 });
    const data = await page.evaluate(() => ({
      url: location.href,
      body: document.body.innerText,
      buttons: Array.from(document.querySelectorAll('a,button,[role="button"],.card,.card__button-text')).map(el => ({text:(el.innerText||el.textContent||'').trim(), tag:el.tagName, cls:el.className||'', href:el.href||''})).filter(x => x.text).slice(0,80)
    }));
    console.log(JSON.stringify(data, null, 2));
  } finally {
    await browser.close();
  }
})().catch(err => { console.error(err.stack || String(err)); process.exit(1); });
