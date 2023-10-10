const {app, express, sqlmap, session } = require("../server")


exports.teacher_pis_page_mark_get= (req, res)=>{
  var {class_section, subject, page}= req.query;
  if(class_section==undefined) {
    var {className, sectionName}= req.query
  } else {
  var class_section_temp= class_section.split('$%&')
 var className= class_section_temp[0];
 var sectionName= class_section_temp[1];
  }
 if(page==1) var offset=0; else var offset=page-1; const limit=20; 

 sqlmap.query(`SELECT COUNT(student_uuid) as student_row FROM students WHERE domain='${req.hostname}' AND  class='${className}' AND section='${sectionName}'`
 ,(err_row, count_row)=>{
   if(err_row) console.log(err_row.sqlMessage);
  const student_row= count_row[0].student_row;
  const pagination= student_row / limit 
  if(Math.ceil(pagination)==page) var nextbtnstatus= 'disabled'; else nextbtnstatus=''
  if(page==1) var prevbtnstatus= 'disabled';  else prevbtnstatus=''

 
      sqlmap.query(`SELECT * FROM students WHERE domain='${req.hostname}' AND  class='${className}' AND section='${sectionName}'  ORDER BY roll LIMIT ${limit} OFFSET ${offset*limit}`,
      (errStudent, infoStudentData)=>{

        sqlmap.query(`SELECT * FROM subject WHERE domain='${req.hostname}' AND  class='${className}'  AND subject='${subject}'`
        , (errSubjectCode, infoSubjectCode)=>{
         const subject_code= infoSubjectCode[0].subject_code;

      if(infoStudentData){
          const infoStudent= infoStudentData;
          res.render('pis/pis-page-mark-teacher', {infoStudent, className, sectionName, subject, subject_code, pagination, page, nextbtnstatus, prevbtnstatus})
      }
      else res.send('<center><h1>student not found!</h1></center>')
  
  
      })
      })

      })
}



exports.teacher_pis_mark_post= (req, res)=>{
  const teacher_uuid= req.session.teacher_uuid; 
  const session= new Date().getUTCFullYear();
  const domain= req.hostname;
  const {className,sectionName, pi, student_uuid, roll, name, avatar, chapter, subject, checkout, bg_color}= req.body;
  sqlmap.query(`SELECT * FROM pic_mark WHERE domain='${req.hostname}' AND   class='${className}' AND section='${sectionName}' AND student_uuid='${student_uuid}' AND subject='${subject}' AND chapter='${chapter}'`, (err_pic, info_pic)=>{
    if(err_pic) console.log(err_pic.sqlMessage);
    if(info_pic.length>0){
      const pic_pi= info_pic[0].pi;
      sqlmap.query(`SELECT * FROM pis_mark WHERE domain='${req.hostname}' AND   class='${className}' AND section='${sectionName}' AND student_uuid='${student_uuid}'
       AND subject='${subject}' AND chapter='${chapter}'`,
      (errCheck, infoCheck)=>{
         if(errCheck) console.log(errCheck.sqlMessage);
         if(infoCheck===undefined || infoCheck.length===0){
   
             sqlmap.query(`INSERT INTO pis_mark (domain, session, class, section, student_uuid, subject, roll, name, avatar, chapter, pi, checkout, bg_color)
             VALUES('${req.hostname}', ${session}, '${className}', '${sectionName}',  '
             '${student_uuid}', '${subject}', ${roll}, '${name}', '${avatar}', '${chapter}', ${pi}, '${checkout}', '${bg_color}')`, (errPost, nextPost)=>{
                 if(errPost) console.log(errPost.sqlMessage);
                 else { 
   
                   todo_transcipt(domain, className, teacher_uuid, roll, sectionName,  student_uuid, subject, chapter, name, avatar, pi, pic_pi, checkout)
                     
                     res.send({msg: 'success'}) 
   
                 }
             })
         }
           else console.log(undefined+'!503');
     })

    }

    else res.send({msg: 'উক্ত বিষয় এবং অধ্যায়ের পি আই সি মার্ক আগে সম্পূর্ণ করতে হবে! তারপর পি আই এস করতে হবে! '})
  })



}



exports.teacher_pis_mark_checkout= (req, res)=>{
  const teacher_uuid= req.session.teacher_uuid;

  const {className, sectionName, subject}= req.body;
  sqlmap.query(`SELECT * FROM pis_mark WHERE domain='${req.hostname}' AND  class='${className}' AND section='${sectionName}' AND subject='${subject}'`, (errFind, info_checkout)=>{
      if(errFind) console.log(errFind.sqlMessage);
      res.send({info_checkout})
  })
}




exports.teacher_pis_subject_get=(req, res)=>{


   const {className}= req.body;
 
     sqlmap.query( `SELECT * FROM subject WHERE domain='${req.hostname}' AND  class='${className}' GROUP BY subject ORDER BY ID DESC`, (err, info)=>{
 
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





 exports.privet_pis_report_student_get= ( req , res)=>{
  const {className, sectionName}= req.params;

  sqlmap.query(`SELECT * FROM pis_mark WHERE domain='${req.hostname}' AND  class='${className}' AND section='${sectionName}'
   GROUP BY student_uuid ORDER BY roll`
  ,(errStudent, infoStudentData)=>{
  if(infoStudentData.length>0){
      const infoStudent= infoStudentData;
      res.render('pis/pis-page-report-student-privet', {infoStudent, className, sectionName})
  }
  else res.send('<center><h1>student not found!</h1></center>')


  })

}




exports.privet_pis_report_get= ( req , res)=>{
  const {className, sectionName, student_uuid}= req.params;

  sqlmap.query(`SELECT * FROM subject WHERE domain='${req.hostname}' AND  class='${className}' GROUP BY subject ORDER BY subject`, (err_subject, infoSubject)=>{
  sqlmap.query(`SELECT * FROM pis_mark WHERE domain='${req.hostname}' AND  class='${className}' AND section='${sectionName}'
   AND student_uuid='${student_uuid}'`
  ,(errStudent, infoStudentData)=>{
  if(infoStudentData){
      const infoStudent= infoStudentData;
      res.render('pis/pis-page-report-get-privet', {infoStudent, infoSubject, student_uuid, className, sectionName})
  }
  else res.send('<center><h1>student not found!</h1></center>')


  })
  })

}






exports.privet_pis_report_get_checkout= (req, res)=>{
  const session= new Date().getUTCFullYear();

  const {className, sectionName, student_uuid}= req.body;
  sqlmap.query(`SELECT * FROM pis_mark WHERE domain='${req.hostname}' AND  student_uuid='${student_uuid}' AND class='${className}' AND section='${sectionName}' ORDER BY roll`, (errFind, info_checkout)=>{
      if(errFind) console.log(errFind.sqlMessage);
      else {  
          
          res.send({info_checkout}) 
      }
  })
}




function todo_transcipt(domain, className, teacher_uuid, roll, sectionName,  student_uuid, subject, chapter, name, avatar, pi, pic_pi, checkout){
  const session= new Date().getUTCFullYear(); 
  if(chapter=='A1' || chapter=='A2' || chapter=='A3' || chapter=='A4' || chapter=='A5' || chapter=='A6') var transciptName= 'half'; else var transciptName= 'full';
  if(pi>pic_pi) var final_pi= pi; else var final_pi=  pic_pi; if(final_pi==1) var bg_color= 'bg-danger'; else if(final_pi==2) var bg_color='bg-warning'; else bg_color='bg-success';
  sqlmap.query(`SELECT subject, chapter, student_uuid, roll FROM transcript_report WHERE domain='${domain}' AND  class='${className}' AND section='${sectionName}' AND 
  subject='${subject}' AND chapter='${chapter}' AND student_uuid='${student_uuid}'`, (err_find, info_find)=>{
    if(err_find) console.log(err_find.sqlMessage);
    if(info_find.length==0 || info_find==undefined){

    
      sqlmap.query(`INSERT INTO transcript_report (domain, session, class, section, subject, chapter,
        teacher_uuid, student_uuid, roll, name,  transcript_name, pi, bg_color, checkout, avatar)
      VALUES('${domain}', ${session},'${className}', '${sectionName}', '${subject}', '${chapter}', '${teacher_uuid}',
    '${student_uuid}', '${roll}', '${name}',  '${transciptName}', '${final_pi}', '${bg_color}', '${checkout}',  '${avatar}')`, (errTranscipt, todoTranscipt)=>{
     if(errTranscipt) console.log(errTranscipt.sqlMessage);
     else console.log('transcipt inserted!.');
   })

    }
  })

}