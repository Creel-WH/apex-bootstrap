const { chromium } = require('playwright');
(async () => {
  const browser = await chromium.launch({ headless: true });
  const page = await browser.newPage();
  try {
    await page.goto('https://apex.jasolar.com:10443/ords/prdapex23/_/landing', { waitUntil: 'networkidle', timeout: 120000 });
    await page.locator('.card').nth(1).locator('button.card__go-button-cdb').click();
    await page.waitForLoadState('networkidle');
    const data = await page.evaluate(() => ({
      url: location.href,
      body: document.body.innerText,
      inputs: Array.from(document.querySelectorAll('input,button,select,label')).map(el => ({tag:el.tagName,id:el.id||'',name:el.name||'',type:el.type||'',text:(el.innerText||el.textContent||el.value||'').trim()})).filter(x => x.id || x.name || x.text)
    }));
    console.log(JSON.stringify(data, null, 2));
  } finally {
    await browser.close();
  }
})().catch(err => { console.error(err.stack || String(err)); process.exit(1); });
