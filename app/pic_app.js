const {app, express, sqlmap , session} = require("../server")

exports.teacher_pic_page_mark_get= (req, res)=>{
  var {class_section, subject, page}= req.query;
  if(class_section==undefined) {
    var {className, sectionName}= req.query
  } else {
  var class_section_temp= class_section.split('$%&')
 var className= class_section_temp[0];
 var sectionName= class_section_temp[1];
  } 
  
  

 if(page==1) var offset=0; else var offset=page-1; const limit=20; 

 sqlmap.query(`SELECT COUNT(student_id) as student_row FROM students WHERE domain='${req.hostname}' AND  class='${className}' AND section='${sectionName}'`
 ,(err_row, count_row)=>{
   if(err_row) console.log(err_row.sqlMessage);
  const student_row= count_row[0].student_row;
  const pagination= student_row / limit 
  if(Math.ceil(pagination)==page) var nextbtnstatus= 'disabled'; else nextbtnstatus=''
  if(page==1) var prevbtnstatus= 'disabled';  else prevbtnstatus=''

 
      sqlmap.query(`SELECT ID, student_id, name, avatar, roll FROM students WHERE domain='${req.hostname}' AND  class='${className}' AND section='${sectionName}'  ORDER BY roll LIMIT ${limit} OFFSET ${offset*limit}`,
      (errStudent, infoStudentData)=>{
  
        sqlmap.query(`SELECT subject_code, subject FROM subject WHERE domain='${req.hostname}' AND  class='${className}' AND subject='${subject}'`
        , (errSubjectCode, infoSubjectCode)=>{
         const subject_code= infoSubjectCode[0].subject_code;
      if(infoStudentData){
          const infoStudent= infoStudentData;
          res.render('pic/pic-page-mark-teacher', {infoStudent, className, sectionName, subject, subject_code, pagination, page, nextbtnstatus, prevbtnstatus})
      }
      else res.send('<center><h1>student not found!</h1></center>')
  
  
      })

      })

      })

}



exports.teacher_pic_mark_post= (req, res)=>{
  const teacher_pdsid= req.session.pdsId;
  const session= new Date().getUTCFullYear();
  const {className,sectionName, pi, student_id, roll, name, avatar, chapter, subject, checkout, bg_color}= req.body;
  sqlmap.query(`SELECT student_id FROM pic_mark WHERE domain='${req.hostname}' AND   class='${className}' AND section='${sectionName}' AND student_id=${student_id} AND subject='${subject}' AND chapter='${chapter}'`,
   (errCheck, infoCheck)=>{
      if(errCheck) console.log(errCheck.sqlMessage);
      if(infoCheck===undefined || infoCheck.length===0){

          sqlmap.query(`INSERT INTO pic_mark (domain, session, class, section, student_id, subject, roll, name, avatar, chapter, pi, checkout, bg_color)
          VALUES('${req.hostname}', ${session}, '${className}', '${sectionName}',  ${student_id}, '${subject}', ${roll}, '${name}', '${avatar}', '${chapter}', ${pi}, '${checkout}', '${bg_color}')`, (errPost, nextPost)=>{
              if(errPost) console.log(errPost.sqlMessage);
              else { 
                  
                  res.send({msg: 'success'}) 

              }
          })
      }
        else console.log(undefined+'!503');
  })

}



exports.teacher_pic_mark_checkout= (req, res)=>{
  const teacher_pdsid= req.session.pdsId;

  const {className, sectionName, subject}= req.body;
  sqlmap.query(`SELECT checkout, bg_color FROM pic_mark WHERE domain='${req.hostname}' AND  class='${className}' AND section='${sectionName}' AND subject='${subject}'`, (errFind, info_checkout)=>{
      if(errFind) console.log(errFind.sqlMessage);
      res.send({info_checkout})
  })
}




exports.teacher_pic_subject_get=(req, res)=>{


   const {className}= req.body;
 
     sqlmap.query( `SELECT subject, subject_code FROM subject WHERE domain='${req.hostname}' AND  class='${className}' GROUP BY subject ORDER BY ID DESC`, (err, info)=>{
 
       if (err) console.log(err.sqlMessage);
 
       let listData= 
       `
       <option selected value="" disabled >বিষয় নির্বাচন করুন</option>
       `
       for (const i in info) {

     listData+= `<option vlaue='${info[i].subject}'>${info[i].subject}</option>`

       }
 
       res.send({listData})
 
     } )
 
 }





 exports.privet_pic_report_student_get= ( req , res)=>{
  const {className, sectionName}= req.params;

  sqlmap.query(`SELECT ID, student_id, name, roll, avatar FROM pic_mark WHERE domain='${req.hostname}' AND  class='${className}' AND section='${sectionName}'
   GROUP BY student_id ORDER BY roll`
  ,(errStudent, infoStudentData)=>{
  if(infoStudentData.length>0){
      const infoStudent= infoStudentData;
      res.render('pic/pic-page-report-student-privet', {infoStudent, className, sectionName})
  }
  else res.send('<center><h1>student not found!</h1></center>')


  })

}




exports.privet_pic_report_get= ( req , res)=>{
  const {className, sectionName, student_id}= req.params;

  sqlmap.query(`SELECT * FROM subject WHERE domain='${req.hostname}' AND  class='${className}' GROUP BY subject ORDER BY subject`, (err_subject, infoSubject)=>{
  sqlmap.query(`SELECT student_id, name, avatar, pi, roll, bg_color FROM pic_mark WHERE domain='${req.hostname}' AND  class='${className}' AND section='${sectionName}'
   AND student_id='${student_id}' ORDER BY roll`
  ,(errStudent, infoStudentData)=>{
  if(infoStudentData){
      const infoStudent= infoStudentData;
      res.render('pic/pic-page-report-get-privet', {infoStudent, infoSubject, student_id, className, sectionName})
  }
  else res.send('<center><h1>student not found!</h1></center>')


  })
  })

}






exports.privet_pic_report_get_checkout= (req, res)=>{

  const {className, sectionName, student_id}= req.body;
  sqlmap.query(`SELECT checkout, bg_color FROM pic_mark WHERE domain='${req.hostname}' AND  student_id='${student_id}' AND class='${className}' AND section='${sectionName}' ORDER BY roll`, (errFind, info_checkout)=>{
      if(errFind) console.log(errFind.sqlMessage);
      else {  
          
          res.send({info_checkout}) 
      }
  })
}
