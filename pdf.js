const {sqlmap, path, fs, bodyParser, app, ejs}= require('./server'); 
const { log } = require("console");
const pdf = require('html-pdf');
const puppeteer= require('puppeteer')


app.get("/p", (req, res) => {
  var className= 'Six';
var sectionName= 'A';
var student_id=709131;

sqlmap.query(`SELECT * FROM bi_catagory GROUP BY catagory_name ORDER BY ID`, (err_catagory, infoCatagory)=>{

  sqlmap.query(`SELECT * FROM subject WHERE class='${className}' GROUP BY subject ORDER BY subject`, (err_subject, infoSubject)=>{

    sqlmap.query(`SELECT student_id, name, avatar, pi, bg_color FROM transcript_report WHERE class='${className}' AND section='${sectionName}'
    AND student_id='${student_id}'`
    ,(errStudent, infoStudent)=>{

  sqlmap.query(`SELECT student_id, name, avatar, pi, bg_color FROM transcript_report WHERE class='${className}' AND section='${sectionName}'
   AND student_id='${student_id}' AND transcript_name='half'`
  ,(errStudentHalf, infoStudentHalf)=>{

if(errStudentHalf) console.log(errStudentHalf.sqlMessage);

sqlmap.query(`SELECT student_id, name, avatar, pi, bg_color FROM transcript_report WHERE class='${className}' AND section='${sectionName}'
AND student_id='${student_id}' AND transcript_name='full'`
   ,(errStudentFull, infoStudentFull)=>{
 if(errStudent) console.log(errStudent.sqlMessage);

  if(infoStudentHalf || infoStudentFull){

  
    //   console.log('starting...');

    //   path.join(__dirname, "/views/transcript/transcript-page-report-get-privet.ejs"), {infoStudentHalf, infoStudentFull, infoCatagory, infoStudent, infoSubject, student_id, className, sectionName}
   



//   !??????????????????????!/

  }


  })
  })
  })

  })
  })


})




app.get("/pdf", async (req, res) => {
    console.log(10000000);
    const browser = await puppeteer.launch({headless: 'new'});
    const page = await browser.newPage();
    
    await page.goto('http://localhost:30/pu/student/page', {
        waitUntil: 'networkidle2', timeout: 90000,
    });

    
    
    
    const pdf = await page.pdf({
        path: './pdf/demo.pdf',
        format: 'letter',
        printBackground: true,
        scale: 0.5,
    });
    
    await browser.close();
    
    res.contentType("application/pdf");
    console.log('done!.');
    res.send(pdf);

});
