const {app, express, dotenv, nodemailer, mysql, sqlmap, multer, session, createHmac, randomBytes} = require("../server")
var regexTelephone= /^01[0-9]*$/
var regexNumber= /^[0-9]*$/
var regexString= /^[A-Za-z .-_]*$/
var regexpi= /^[A-Za-z0-9-_]*$/
var regexPassword= /^[a-zA-Z0-9!@#$%&*]*$/
var regexEmail= /^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/ 

exports.privet_transcript_report_student_get= ( req , res)=>{
  const {className, sectionName}= req.params;

  sqlmap.query(`SELECT student_uuid, name, roll, avatar FROM transcript_report WHERE domain='${req.hostname}' AND  class='${className}' AND section='${sectionName}'
   GROUP BY student_uuid  ORDER BY roll`
  ,(errStudent, infoStudentData)=>{
  if(infoStudentData.length>0){
      const infoStudent= infoStudentData;
      res.render('transcript/transcript-page-report-student-privet', {infoStudent, className, sectionName})
  }
  else res.redirect('/pages/empty.html')


  })

}



exports.privet_finding_subject_sid= ( req , res)=>{
  const {class_name, section_name, sid}= req.params; 

  sqlmap.query(`SELECT subject, class FROM subject WHERE domain='${req.hostname}' AND class='${class_name}' GROUP BY subject ORDER BY subject`, 
  (err_subject, infoSubject)=>{
          if(err_subject) console.log(err_subject.sqlMessage);
          else res.render('transcript/transcript-subject-page', {infoSubject,class_name, section_name, sid})
  })  
      
}




exports.admin_result_report_student_get= ( req , res)=>{
  const {className, sectionName}= req.params;

  sqlmap.query(`SELECT student_uuid, name, roll, avatar FROM transcript_report WHERE domain='${req.hostname}' AND  class='${className}' AND section='${sectionName}'
  GROUP BY student_uuid  ORDER BY roll`
  ,(errStudent, infoStudentData)=>{
  if(infoStudentData.length>0){
      const infoStudent= infoStudentData;
      res.render('admin/result-page-report-student', {infoStudent, className, sectionName})
  }
  else res.redirect('/pages/empty.html')


  })

}


exports.privet_pi_report_checkout= (req, res)=>{
  const session= new Date().getUTCFullYear();
  const {className, sectionName, student_uuid, subject_code}= req.body;

  sqlmap.query(`SELECT subject_code, subject, pi, chapter, bg_color  FROM transcript_report WHERE domain='${req.hostname}' AND  student_uuid='${student_uuid}' AND class='${className}' AND section='${sectionName}' AND subject_code='${subject_code}' ORDER BY chapter`,
   (errFind, checkout)=>{
      if(errFind) console.log(errFind.sqlMessage);
      else {  
          
          res.send({checkout}) 
      }
  })
}




exports.admin_pi_transcript_report_checkout=(req, res)=>{
    const {className,sectionName, student_uuid, subject}= req.body;
    const domain= req.hostname;
  
  
    sqlmap.query(`SELECT *,  SUM(pi) as pi_sum FROM transcript_report WHERE domain='${req.hostname}' AND  class='${className}' AND section='${sectionName}' AND subject='English' AND student_uuid='${student_uuid}'
    AND pi_group='group01'`,
    (errg01, infog01)=>{
        
        sqlmap.query(`SELECT *,  SUM(pi) as pi_sum FROM transcript_report WHERE domain='${req.hostname}' AND  class='${className}' AND section='${sectionName}' AND subject='English' AND student_uuid='${student_uuid}'
        AND pi_group='group02'`,
        (errg02, infog02)=>{
            
        sqlmap.query(`SELECT *,  SUM(pi) as pi_sum FROM transcript_report WHERE domain='${req.hostname}' AND  class='${className}' AND section='${sectionName}' AND subject='English' AND student_uuid='${student_uuid}'
        AND pi_group='group03'`,
        (errg03, infog03)=>{
            
            
            sqlmap.query(`SELECT *,  SUM(pi) as pi_sum FROM transcript_report WHERE domain='${req.hostname}' AND  class='${className}' AND section='${sectionName}' AND subject='English' AND student_uuid='${student_uuid}'
            AND pi_group='group04'`,
            (errg04, infog04)=>{
                
                const english_gp01v= (((infog01[0].pi_sum)/3)*100);
                const english_gp02v= (((infog02[0].pi_sum)/2)*100);
                const english_gp03v= (((infog03[0].pi_sum)/2)*100);
                const english_gp04v= (((infog04[0].pi_sum)/2)*100);

               if(english_gp01v==100){
                var english_gp01= 7;
               } 
               else if(english_gp01v>=50){
                var english_gp01= 6;
               } 
               else if(english_gp01v>=25){
                var english_gp01= 5;
               }
               else if(english_gp01v>=0){
                var english_gp01= 4;
               }
               else if(english_gp01v>=-25){
                var english_gp01= 3;
  
               } else if(english_gp01v>=-50){
                var english_gp01= 2;
  
               }else if(english_gp01v>=-100){
                var english_gp01= 1;
  
               } else {
  
                var english_gp01= 0;
  
               }
  
  
                      
               if(english_gp02v==100){
                var english_gp02= 7;
               } 
               else if(english_gp02v>=50){
                var english_gp02= 6;
               } 
               else if(english_gp02v>=25){
                var english_gp02= 5;
               }
               else if(english_gp02v>=0){
                var english_gp02= 4;
               }
               else if(english_gp02v>=-25){
                var english_gp02= 3;
  
               } else if(english_gp02v>=-50){
                var english_gp02= 2;
  
               }else if(english_gp02v>=-100){
                var english_gp02= 1;
  
               } else {
  
                var english_gp02= 0;
  
               }
  
  
  
  
                      
               if(english_gp03v==100){
                var english_gp03= 7;
               } 
               else if(english_gp03v>=50){
                var english_gp03= 6;
               } 
               else if(english_gp03v>=25){
                var english_gp03= 5;
               }
               else if(english_gp03v>=0){
                var english_gp03= 4;
               }
               else if(english_gp03v>=-25){
                var english_gp03= 3;
  
               } else if(english_gp03v>=-50){
                var english_gp03= 2;
  
               }else if(english_gp03v>=-100){
                var english_gp03= 1;
  
               } else {
  
                var english_gp03= 0;
  
               }



               if(english_gp04v==100){
                var english_gp04= 7;
               } 
               else if(english_gp04v>=50){
                var english_gp04= 6;
               } 
               else if(english_gp04v>=25){
                var english_gp04= 5;
               }
               else if(english_gp04v>=0){
                var english_gp04= 4;
               }
               else if(english_gp04v>=-25){
                var english_gp04= 3;
            
               } else if(english_gp04v>=-50){
                var english_gp04= 2;
            
               }else if(english_gp04v>=-100){
                var english_gp04= 1;
            
               } else {
            
                var english_gp04= 0;
            
               }
  
            // console.log(english_gp01, english_gp02, english_gp03, english_gp04);
              res.send({english_gp01, english_gp02, english_gp03, english_gp04})
  
            })
    
        })

        })
  
    });
    
 
  }
  


exports.privet_transcript_report_get= ( req , res)=>{
    const {className, sectionName, subject_code, student_uuid}= req.params;
 
      sqlmap.query(`SELECT class, section, subject_code, student_uuid FROM transcript_report WHERE domain='${req.hostname}' AND  class='${className}' AND section='${sectionName}'
      AND student_uuid='${student_uuid}' AND subject_code='${subject_code}'`
      ,(errStudent, infoStudent)=>{
        if(infoStudent.length>0){
          sqlmap.query(`SELECT * FROM school_settings WHERE domain='${req.hostname}'`, (errs, school)=>{
            if(errs) console.log(errs.sqlMessage);
          else {
            if(school.length>0){
              res.render('transcript/transcript-page-report-get-privet', {infoStudent, subject_code, student_uuid, className, sectionName, sname: school[0].name, slogo: school[0].logo})
            }
            // else res.redirect('/pages/empty.html')
             else  res.render('transcript/transcript-page-report-get-privet', {infoStudent, subject_code, student_uuid, className, sectionName, sname: 'no name', slogo: 'logo.png'})
          }
        })
       
        }  else res.redirect('/pages/empty.html')


    
  
  
    })

  
  }



exports.admin_result_report_get= ( req , res)=>{
    var {className, sectionName, student_uuid}= req.params; 
    const {student_offset}= req.query; const init_student= student_uuid;
    if(student_offset==undefined) var offset= 0; if(student_uuid=='auto') var offset= student_offset;  
    if(student_uuid=='auto')   var findStudent= `SELECT student_uuid, name, avatar, pi, roll, bg_color FROM transcript_report WHERE domain='${req.hostname}' AND  class='${className}' AND section='${sectionName}'  GROUP BY student_uuid  ORDER BY ID DESC LIMIT 1 OFFSET ${offset}`
    else  var findStudent= `SELECT student_uuid, name, avatar, pi, roll, bg_color FROM transcript_report WHERE domain='${req.hostname}' AND  class='${className}' AND section='${sectionName}' AND student_uuid='${student_uuid}'`
    sqlmap.query(`SELECT * FROM bi_catagory WHERE domain='${req.hostname}' GROUP BY catagory_name ORDER BY ID`, (err_catagory, infoCatagory)=>{
  
  sqlmap.query(`SELECT * FROM subject WHERE domain='${req.hostname}' AND  class='${className}' GROUP BY subject ORDER BY subject`, (err_subject, infoSubject)=>{
  sqlmap.query(`SELECT student_uuid FROM transcript_report WHERE domain='${req.hostname}' AND  class='${className}' AND section='${sectionName}' GROUP BY student_uuid`, (err_row, info_row)=>{
   if(err_row) console.log(err_row.sqlMessage);
  
  sqlmap.query( findStudent,(errStudent, infoStudent)=>{
   if(errStudent) console.log(errStudent.sqlMessage);
  
    if(infoStudent.length>0){  
      
      const student_uuid= infoStudent[0].student_uuid; 
      if(info_row.length==parseInt(offset)+1) var btnstatus= 'disabled'; else var btnstatus=''; if(init_student=='auto') var offsetPlus= parseInt(offset)+1; else var offsetPlus= 0;  
        
   
        sqlmap.query(`SELECT * FROM school_settings WHERE domain='${req.hostname}'`, (errs, school)=>{
          if(errs) console.log(errs.sqlMessage);
        else {
          if(school.length>0){
            res.render('admin/result-page-report-get', {infoStudent, infoCatagory, btnstatus, offsetPlus, infoSubject, student_uuid, className, sectionName, sname: school[0].name, slogo: school[0].logo})
          } else  res.render('admin/result-page-report-get', {infoStudent, infoCatagory, btnstatus, offsetPlus, infoSubject, student_uuid, className, sectionName, sname: 'no name', slogo: 'logo.png'})
        }
      })
   
      }
    else res.redirect('/pages/empty.html')
  
  
    })
  
    })
  
    })
    })
  
  }