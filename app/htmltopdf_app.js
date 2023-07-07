const {puppeteer, sqlmap, fs }= require('../server')

// puppeteer...................


async function  pdfdoc(){

// Create a browser instance
const browser = await puppeteer.launch({headless: true});

// Create a new page
const page = await browser.newPage();
// await page.addStyleTag({ content: 'a {text-decoration: none;}'})

await page.setDefaultNavigationTimeout(0);
//Get HTML content from HTML file
// const html = fs.readFileSync('./views/bi/bi-page-report-init-teacher.ejs', 'utf-8');
// await page.setContent(html, { waitUntil: 'domcontentloaded' });

// Website URL to export as pdf
const website_url = 'http://saanvi.seawebit.com/pu/all/student?className=Six&sectionName=A'

// Open URL in current page
await page.goto(website_url, { waitUntil: 'networkidle0' }, {timeout: 0});

//To reflect CSS used for screens instead of print
await page.emulateMediaType('screen');

// Downlaod the PDF
const pdf = await page.pdf({
  path: 'result.pdf',
  margin: { top: '100px', right: '50px', bottom: '100px', left: '50px' },
  printBackground: true,
  format: 'A4',
  
});



// Close the browser instance
await browser.close();

console.log('working');


}
pdfdoc()