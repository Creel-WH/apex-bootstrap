const { chromium } = require('playwright');
(async () => {
  const browser = await chromium.launch({ headless: true });
  const page = await browser.newPage();
  try {
    await page.goto('https://apex.jasolar.com:10443/ords/prdapex23/_/landing', { waitUntil: 'networkidle', timeout: 120000 });
    const info = await page.evaluate(() => {
      const cards = Array.from(document.querySelectorAll('.card')).map((card, idx) => ({
        idx,
        text: (card.innerText || card.textContent || '').trim(),
        buttons: Array.from(card.querySelectorAll('button')).map(btn => ({
          id: btn.id || '',
          text: (btn.innerText || btn.textContent || '').trim(),
          cls: btn.className || '',
          disabled: btn.disabled,
          visible: !!(btn.offsetWidth || btn.offsetHeight || btn.getClientRects().length)
        }))
      }));
      return cards;
    });
    console.log(JSON.stringify(info, null, 2));
  } finally {
    await browser.close();
  }
})().catch(err => { console.error(err.stack || String(err)); process.exit(1); });
