const {app, express, dotenv, nodemailer, mysql, sqlmap, multer, session, createHmac, randomBytes} = require("../configs/server")
var regexTelephone= /^01[0-9]*$/
var regexNumber= /^[0-9]*$/
var regexString= /^[A-Za-z .-_]*$/
var regexpi= /^[A-Za-z0-9-_]*$/
var regexPassword= /^[a-zA-Z0-9!@#$%&*]*$/
var regexEmail= /^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/ 

exports.privet_transcript_report_student_get = (req, res) => {
  const { className, sectionName } = req.params;
  const sql = `SELECT student_uuid, name, roll, avatar FROM transcript_report WHERE domain=? AND class=? AND section=? GROUP BY student_uuid ORDER BY roll`;

  sqlmap.query(sql, [res.locals.hostname, className, sectionName], (errStudent, infoStudentData) => {
      if (infoStudentData.length > 0) {
          const infoStudent = infoStudentData;
          res.render('transcript/transcript-page-report-student-privet', { infoStudent, className, sectionName });
      } else {
          res.redirect('/pages/empty.html');
      }
  });
};


exports.privet_finding_subject_sid = (req, res) => {
  const { class_name, section_name, sid } = req.params;

  const sql = `SELECT subject, subject_code, class FROM ini_subject WHERE class=? GROUP BY subject ORDER BY subject`;

  sqlmap.query(sql, [class_name], (err_subject, info) => {
      if (err_subject) {
          console.log(err_subject.sqlMessage);
      } else {
          res.render('transcript/transcript-subject-page', { info, class_name, section_name, sid });
      }
  });
};



exports.privet_transcript_report_get = (req, res) => {
  const { className, sectionName, subject_code, student_uuid } = req.params;
  const sql = `SELECT class, section, name, chapter, subject_code, student_uuid FROM transcript_report WHERE domain=? AND class=? AND section=? AND student_uuid=? AND subject_code=?`;

  sqlmap.query(sql, [res.locals.hostname, className, sectionName, student_uuid, subject_code], (errStudent, info) => {
      if (info.length > 0) {
          sqlmap.query(`SELECT * FROM school_settings WHERE domain=?`, [res.locals.hostname], (errs, school) => {
              if (errs) {
                  console.log(errs.sqlMessage);
                  return;
              }

              let sname = 'NO NAME';
              let slogo = null;

              if (school.length > 0) {
                  sname = school[0].name;
                  slogo = school[0].logo;
              }

              res.render(`transcript/${className}/${subject_code}`, { info, subject_code, student_uuid, className, sectionName, sname, slogo });
          });
      } else {
          res.redirect('/pages/empty.html');
      }
  });
};



exports.privet_pi_report_checkout = (req, res) => {
  const session = new Date().getUTCFullYear();
  const { className, sectionName, student_uuid, subject_code } = req.body;

  const sql = `SELECT subject_code, subject, pi, chapter, bg_color FROM transcript_report WHERE domain=? AND student_uuid=? AND class=? AND section=? AND subject_code=? ORDER BY chapter`;

  sqlmap.query(sql, [res.locals.hostname, student_uuid, className, sectionName, subject_code], (errFind, checkout) => {
      if (errFind) {
          console.log(errFind.sqlMessage);
          return;
      }

      res.send({ className, sectionName, student_uuid, subject_code, checkout });
  });
};


exports.admin_result_report_student_get = (req, res) => {
  const { className, sectionName } = req.params;
  const sql = `SELECT student_uuid, name, roll, avatar FROM transcript_report WHERE domain=? AND class=? AND section=? GROUP BY student_uuid ORDER BY roll`;

  sqlmap.query(sql, [res.locals.hostname, className, sectionName], (errStudent, infoStudentData) => {
      if (infoStudentData.length > 0) {
          const infoStudent = infoStudentData;
          res.render('admin/result-page-report-student', { infoStudent, className, sectionName });
      } else {
          res.redirect('/pages/empty.html');
      }
  });
};


exports.admin_result_report_get = (req, res) => {
  var { className, sectionName, student_uuid } = req.params;
  const { student_offset } = req.query;
  const init_student = student_uuid;
  var offset = student_offset == undefined ? 0 : student_offset;
  if (student_uuid == 'auto') offset = student_offset;

  const sql = `SELECT name, avatar, student_uuid, class, section, subject, subject_code, subject_flag FROM transcript_report WHERE domain=? AND class=? AND section=? AND student_uuid=? GROUP BY subject_code`;

  sqlmap.query(sql, [res.locals.hostname, className, sectionName, student_uuid], (errSubject, info) => {
      if (errSubject) {
          console.log(errSubject.sqlMessage);
          return;
      }

      if (info.length > 0) {
          sqlmap.query(`SELECT * FROM school_settings WHERE domain=?`, [res.locals.hostname], (errs, school) => {
              if (errs) {
                  console.log(errs.sqlMessage);
                  return;
              }

              let sname = 'NO NAME';
              let slogo = null;

              if (school.length > 0) {
                  sname = school[0].name;
                  slogo = school[0].logo;
              }

              res.render('admin/result-page-report-get', { info, student_uuid, className, sectionName, sname, slogo });
          });
      } else {
          res.redirect('/pages/empty.html');
      }
  });
};



// exports.admin_pi_transcript_report_checkout=(req, res)=>{
//   const {className,sectionName, student_uuid, subject_code}= req.body;
//   const domain= res.locals.hostname;

//   sqlmap.query(`SELECT subject_flag, subject_code, subject FROM transcript_report WHERE domain='${res.locals.hostname}' AND  class='${className}' AND section='${sectionName}' AND subject_code='${subject_code}' AND student_uuid='${student_uuid}'`,
//   (errinfo, info)=>{
//     const subject_flag= info[0].subject_flag;
//     sqlmap.query(`SELECT *,  SUM(pi) as pi_sum, COUNT(ID) as pi_count FROM transcript_report WHERE domain='${res.locals.hostname}' AND  class='${className}' AND section='${sectionName}' AND subject_code='${subject_code}' AND student_uuid='${student_uuid}'
//   AND pi_group='gp1'`,
//   (errg01, infog01)=>{
      
//       sqlmap.query(`SELECT *,  SUM(pi) as pi_sum, COUNT(ID) as pi_count FROM transcript_report WHERE domain='${res.locals.hostname}' AND  class='${className}' AND section='${sectionName}' AND subject_code='${subject_code}' AND student_uuid='${student_uuid}'
//       AND pi_group='gp2'`,
//       (errg02, infog02)=>{
          
//       sqlmap.query(`SELECT *,  SUM(pi) as pi_sum, COUNT(ID) as pi_count FROM transcript_report WHERE domain='${res.locals.hostname}' AND  class='${className}' AND section='${sectionName}' AND subject_code='${subject_code}' AND student_uuid='${student_uuid}'
//       AND pi_group='gp3'`,
//       (errg03, infog03)=>{
          
          
//           sqlmap.query(`SELECT *,  SUM(pi) as pi_sum, COUNT(ID) as pi_count FROM transcript_report WHERE domain='${res.locals.hostname}' AND  class='${className}' AND section='${sectionName}' AND subject_code='${subject_code}' AND student_uuid='${student_uuid}'
//           AND pi_group='gp4'`,
//           (errg04, infog04)=>{ 
            
//             sqlmap.query(`SELECT *,  SUM(pi) as pi_sum, COUNT(ID) as pi_count FROM transcript_report WHERE domain='${res.locals.hostname}' AND  class='${className}' AND section='${sectionName}' AND subject_code='${subject_code}' AND student_uuid='${student_uuid}'
//           AND pi_group='gp5'`,

//           (errg05, infog05)=>{
            
//               // console.log(infog01[0].pi_count);
//               // console.log(infog02[0].pi_count);
//               // console.log(infog03[0].pi_count);
//               // console.log(infog04[0].pi_count);
//               // console.log(infog05[0].pi_count);
//             const gp1v= (((infog01[0].pi_sum==null?undefined:infog01[0].pi_sum)/infog01[0].pi_count)*100);
//             const gp2v= (((infog02[0].pi_sum==null?undefined:infog02[0].pi_sum)/infog02[0].pi_count)*100);
//             const gp3v= (((infog03[0].pi_sum==null?undefined:infog03[0].pi_sum)/infog03[0].pi_count)*100);
//             const gp4v= (((infog04[0].pi_sum==null?undefined:infog04[0].pi_sum)/infog04[0].pi_count)*100);
//             const gp5v= (((infog05[0].pi_sum==null?undefined:infog05[0].pi_sum)/infog05[0].pi_count)*100);
                        

//                 if(gp1v==100){
//                   var gp1= 7;
//                  } 
//                  else if(gp1v>=50){
//                   var gp1= 6;
//                  } 
//                  else if(gp1v>=25){
//                   var gp1= 5;
//                  }
//                  else if(gp1v>=0){
//                   var gp1= 4;
//                  }
//                  else if(gp1v>=-25){
//                   var gp1= 3;
    
//                  } else if(gp1v>=-50){
//                   var gp1= 2;
    
//                  }else if(gp1v>=-100){
//                   var gp1= 1;
    
//                  } else {
    
//                   var gp1= 0;
    
//                  }


                                
//           if(gp2v==100){
//             var gp2= 7;
//            } 
//            else if(gp2v>=50){
//             var gp2= 6;
//            } 
//            else if(gp2v>=25){
//             var gp2= 5;
//            }
//            else if(gp2v>=0){
//             var gp2= 4;
//            }
//            else if(gp2v>=-25){
//             var gp2= 3;

//            } else if(gp2v>=-50){
//             var gp2= 2;

//            }else if(gp2v>=-100){
//             var gp2= 1;

//            } else {

//             var gp2= 0;

//            }


                  

//             if(gp3v==100){
//               var gp3= 7;
//              } 
//              else if(gp3v>=50){
//               var gp3= 6;
//              } 
//              else if(gp3v>=25){
//               var gp3= 5;
//              }
//              else if(gp3v>=0){
//               var gp3= 4;
//              }
//              else if(gp3v>=-25){
//               var gp3= 3;

//              } else if(gp3v>=-50){
//               var gp3= 2;

//              }else if(gp3v>=-100){
//               var gp3= 1;

//              } else {

//               var gp3= 0;

//              }




//               if(gp4v==100){
//                 var gp4= 7;
//                } 
//                else if(gp4v>=50){
//                 var gp4= 6;
//                } 
//                else if(gp4v>=25){
//                 var gp4= 5;
//                }
//                else if(gp4v>=0){
//                 var gp4= 4;
//                }
//                else if(gp4v>=-25){
//                 var gp4= 3;
            
//                } else if(gp4v>=-50){
//                 var gp4= 2;
            
//                }else if(gp4v>=-100){
//                 var gp4= 1;
            
//                } else {
            
//                 var gp4= 0;
               
//                }


               
//                if(gp5v==100){
//                 var gp5= 7;
//                } 
//                else if(gp5v>=50){
//                 var gp5= 6;
//                } 
//                else if(gp5v>=25){
//                 var gp5= 5;
//                }
//                else if(gp5v>=0){
//                 var gp5= 4;
//                }
//                else if(gp5v>=-25){
//                 var gp5= 3;
            
//                } else if(gp5v>=-50){
//                 var gp5= 2;
            
//                }else if(gp5v>=-100){
//                 var gp5= 1;
            
//                } else {
            
//                 var gp5= 0;
               
//                }
            


//           // console.log(gp1, gp2, gp3, gp4, gp5, subject_flag, subject_code);
//             res.send({gp1, gp2, gp3, gp4, gp5, subject_code})

//           })
  
//       })

//       })

//       })

//   });

//   });
  

// }



exports.admin_pi_transcript_report_checkout = (req, res) => {
  const { className, sectionName, student_uuid, subject_code } = req.body;

  sqlmap.query(
      `SELECT subject_flag, subject_code, subject FROM transcript_report WHERE domain=? AND class=? AND section=? AND subject_code=? AND student_uuid=?`,
      [res.locals.hostname, className, sectionName, subject_code, student_uuid],
      (errinfo, info) => {
          const subject_flag = info[0].subject_flag;

          sqlmap.query(
              `SELECT *, SUM(pi) AS pi_sum, COUNT(ID) AS pi_count FROM transcript_report WHERE domain=? AND class=? AND section=? AND subject_code=? AND student_uuid=? AND pi_group='gp1'`,
              [res.locals.hostname, className, sectionName, subject_code, student_uuid],
              (errg01, infog01) => {
                  sqlmap.query(
                      `SELECT *, SUM(pi) AS pi_sum, COUNT(ID) AS pi_count FROM transcript_report WHERE domain=? AND class=? AND section=? AND subject_code=? AND student_uuid=? AND pi_group='gp2'`,
                      [res.locals.hostname, className, sectionName, subject_code, student_uuid],
                      (errg02, infog02) => {
                          sqlmap.query(
                              `SELECT *, SUM(pi) AS pi_sum, COUNT(ID) AS pi_count FROM transcript_report WHERE domain=? AND class=? AND section=? AND subject_code=? AND student_uuid=? AND pi_group='gp3'`,
                              [res.locals.hostname, className, sectionName, subject_code, student_uuid],
                              (errg03, infog03) => {
                                  sqlmap.query(
                                      `SELECT *, SUM(pi) AS pi_sum, COUNT(ID) AS pi_count FROM transcript_report WHERE domain=? AND class=? AND section=? AND subject_code=? AND student_uuid=? AND pi_group='gp4'`,
                                      [res.locals.hostname, className, sectionName, subject_code, student_uuid],
                                      (errg04, infog04) => {
                                          sqlmap.query(
                                              `SELECT *, SUM(pi) AS pi_sum, COUNT(ID) AS pi_count FROM transcript_report WHERE domain=? AND class=? AND section=? AND subject_code=? AND student_uuid=? AND pi_group='gp5'`,
                                              [res.locals.hostname, className, sectionName, subject_code, student_uuid],
                                              (errg05, infog05) => {
                                                  const calculateGrade = (pi_sum, pi_count) => {
                                                      if (pi_sum == null || pi_count == 0) return 0;

                                                      const pi_percentage = (pi_sum / pi_count) * 100;

                                                      if (pi_percentage == 100) return 7;
                                                      if (pi_percentage >= 50) return 6;
                                                      if (pi_percentage >= 25) return 5;
                                                      if (pi_percentage >= 0) return 4;
                                                      if (pi_percentage >= -25) return 3;
                                                      if (pi_percentage >= -50) return 2;
                                                      if (pi_percentage >= -100) return 1;

                                                      return 0;
                                                  };

                                                  const gp1 = calculateGrade(infog01[0].pi_sum, infog01[0].pi_count);
                                                  const gp2 = calculateGrade(infog02[0].pi_sum, infog02[0].pi_count);
                                                  const gp3 = calculateGrade(infog03[0].pi_sum, infog03[0].pi_count);
                                                  const gp4 = calculateGrade(infog04[0].pi_sum, infog04[0].pi_count);
                                                  const gp5 = calculateGrade(infog05[0].pi_sum, infog05[0].pi_count);

                                                  res.send({ gp1, gp2, gp3, gp4, gp5, subject_code });
                                              }
                                          );
                                      }
                                  );
                              }
                          );
                      }
                  );
              }
          );
      }
  );
};
