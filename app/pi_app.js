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
    const {className,sectionName, student_uuid, subject_code}= req.body;
    const domain= req.hostname;
  
    sqlmap.query(`SELECT subject_flag, subject_code, subject FROM transcript_report WHERE domain='${req.hostname}' AND  class='${className}' AND section='${sectionName}' AND subject_code='${subject_code}' AND student_uuid='${student_uuid}'`,
    (errinfo, info)=>{
      const subject_flag= info[0].subject_flag;
      sqlmap.query(`SELECT *,  SUM(pi) as pi_sum FROM transcript_report WHERE domain='${req.hostname}' AND  class='${className}' AND section='${sectionName}' AND subject_code='${subject_code}' AND student_uuid='${student_uuid}'
    AND pi_group='gp1'`,
    (errg01, infog01)=>{
        
        sqlmap.query(`SELECT *,  SUM(pi) as pi_sum FROM transcript_report WHERE domain='${req.hostname}' AND  class='${className}' AND section='${sectionName}' AND subject_code='${subject_code}' AND student_uuid='${student_uuid}'
        AND pi_group='gp2'`,
        (errg02, infog02)=>{
            
        sqlmap.query(`SELECT *,  SUM(pi) as pi_sum FROM transcript_report WHERE domain='${req.hostname}' AND  class='${className}' AND section='${sectionName}' AND subject_code='${subject_code}' AND student_uuid='${student_uuid}'
        AND pi_group='gp3'`,
        (errg03, infog03)=>{
            
            
            sqlmap.query(`SELECT *,  SUM(pi) as pi_sum FROM transcript_report WHERE domain='${req.hostname}' AND  class='${className}' AND section='${sectionName}' AND subject_code='${subject_code}' AND student_uuid='${student_uuid}'
            AND pi_group='gp4'`,
            (errg04, infog04)=>{ 
              
              sqlmap.query(`SELECT *,  SUM(pi) as pi_sum FROM transcript_report WHERE domain='${req.hostname}' AND  class='${className}' AND section='${sectionName}' AND subject_code='${subject_code}' AND student_uuid='${student_uuid}'
            AND pi_group='gp5'`,

            (errg05, infog05)=>{
              

              const gp1v= (((infog01[0].pi_sum==null?undefined:infog01[0].pi_sum)/3)*100);
              const gp2v= (((infog02[0].pi_sum==null?undefined:infog02[0].pi_sum)/2)*100);
              const gp3v= (((infog03[0].pi_sum==null?undefined:infog03[0].pi_sum)/2)*100);
              const gp4v= (((infog04[0].pi_sum==null?undefined:infog04[0].pi_sum)/2)*100);
              const gp5v= (((infog05[0].pi_sum==null?undefined:infog05[0].pi_sum)/2)*100);
                          

                  if(gp1v==100){
                    var gp1= 7;
                   } 
                   else if(gp1v>=50){
                    var gp1= 6;
                   } 
                   else if(gp1v>=25){
                    var gp1= 5;
                   }
                   else if(gp1v>=0){
                    var gp1= 4;
                   }
                   else if(gp1v>=-25){
                    var gp1= 3;
      
                   } else if(gp1v>=-50){
                    var gp1= 2;
      
                   }else if(gp1v>=-100){
                    var gp1= 1;
      
                   } else {
      
                    var gp1= 0;
      
                   }
  
  
                                  
            if(gp2v==100){
              var gp2= 7;
             } 
             else if(gp2v>=50){
              var gp2= 6;
             } 
             else if(gp2v>=25){
              var gp2= 5;
             }
             else if(gp2v>=0){
              var gp2= 4;
             }
             else if(gp2v>=-25){
              var gp2= 3;

             } else if(gp2v>=-50){
              var gp2= 2;

             }else if(gp2v>=-100){
              var gp2= 1;

             } else {

              var gp2= 0;

             }
  
  
                    

              if(gp3v==100){
                var gp3= 7;
               } 
               else if(gp3v>=50){
                var gp3= 6;
               } 
               else if(gp3v>=25){
                var gp3= 5;
               }
               else if(gp3v>=0){
                var gp3= 4;
               }
               else if(gp3v>=-25){
                var gp3= 3;
  
               } else if(gp3v>=-50){
                var gp3= 2;
  
               }else if(gp3v>=-100){
                var gp3= 1;
  
               } else {
  
                var gp3= 0;
  
               }




                if(gp4v==100){
                  var gp4= 7;
                 } 
                 else if(gp4v>=50){
                  var gp4= 6;
                 } 
                 else if(gp4v>=25){
                  var gp4= 5;
                 }
                 else if(gp4v>=0){
                  var gp4= 4;
                 }
                 else if(gp4v>=-25){
                  var gp4= 3;
              
                 } else if(gp4v>=-50){
                  var gp4= 2;
              
                 }else if(gp4v>=-100){
                  var gp4= 1;
              
                 } else {
              
                  var gp4= 0;
                 
                 }


                 
                 if(gp5v==100){
                  var gp5= 7;
                 } 
                 else if(gp5v>=50){
                  var gp5= 6;
                 } 
                 else if(gp5v>=25){
                  var gp5= 5;
                 }
                 else if(gp5v>=0){
                  var gp5= 4;
                 }
                 else if(gp5v>=-25){
                  var gp5= 3;
              
                 } else if(gp5v>=-50){
                  var gp5= 2;
              
                 }else if(gp5v>=-100){
                  var gp5= 1;
              
                 } else {
              
                  var gp5= 0;
                 
                 }
              

  
            console.log(gp1, gp2, gp3, gp4, gp5, subject_flag);
              res.send({gp1, gp2, gp3, gp4, gp5, subject_flag})
  
            })
    
        })

        })

        })
  
    });

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