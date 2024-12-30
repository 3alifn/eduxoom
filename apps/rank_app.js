const {app, express, sqlmap, session } = require("../configs/server")

exports.teacher_rank_mark_init_page= (req, res)=>{
  res.render("rank/daily_mark_init_page_teacher")   
   }




   exports.teacher_rank_mark_page = (req, res) => {
    const { class_name, section_name } = req.params;
    const today = new Date().toDateString();

    const sql = `SELECT * FROM students WHERE domain=? AND class=? AND section=? GROUP BY student_uuid ORDER BY roll LIMIT 20 OFFSET 0`;

    sqlmap.query(sql, [res.locals.hostname, class_name, section_name], (err, info) => {
        if (err) {
            console.log(err.sqlMessage);
            return;
        }

        if (info.length > 0) {
            res.render("rank/daily_mark_page_teacher", { info, today, class_name, section_name });
        } else {
            res.redirect('/pages/empty.html');
        }
    });
};






exports.teacher_rank_mark_page_num= (req, res)=>{
const {class_name, section_name, offset}= req.body;
const sql = `SELECT * FROM students WHERE domain=? AND class=? AND section=? GROUP BY student_uuid ORDER BY roll LIMIT 20 OFFSET ?`;

    sqlmap.query(sql, [res.locals.hostname, class_name, section_name, offset * 20], (err, info)=>{
    if(err) console.log(err.sqlMessage);

    else 
    {
        if(info.length>0){
         var htmldata= '';
        for (const index in info) {
          htmldata+= 
         ` <ul class="list-group findcard mt-2" id="list">
          <li class="list-group-item list-group-item-light shadow">
              <img src="/assets/images/student/resized/${info[index].avatar}" height="30px" class=" rounded"
                  width="40px" alt="">

              <span class="  bg-light text-muted">(${info[index].class} - ${info[index].section} - ${info[index].roll})
              </span>
              <span class="  bg-light text-dark">
                 ${info[index].name} 
              </span>
              <hr> <span class=" btn-lg  badge bg-light text-dark">Behavior</span> <br>
            
              <div class=" btn-group btn-group-sm ">

                  <button onclick="post_mark_def('behavior', 'b1', 'rmb', -1.666, '${info[index].student_uuid}', '${info[index].name}', '${info[index].roll}', '${info[index].avatar}')" class="b1_${info[index].student_uuid} rmb btn btn-danger fs-3 bg-light text-danger ">&#10030;</button>

                  <button onclick="post_mark_def('behavior', 'b2', 'rmb', 0.666, '${info[index].student_uuid}', '${info[index].name}', '${info[index].roll}', '${info[index].avatar}')" class="b2_${info[index].student_uuid} rmb btn btn-primary fs-3 bg-light text-primary">&#10030;&#10030;</button>
                 
                  <button onclick="post_mark_def('behavior', 'b3', 'rmb', 1.666, '${info[index].student_uuid}', '${info[index].name}', '${info[index].roll}', '${info[index].avatar}')" class="b3_${info[index].student_uuid} rmb btn btn-success fs-3 bg-light text-success ">&#10030;&#10030;&#10030;</button>

              </div>

              <hr> <span class=" btn-lg  badge bg-light text-dark">Uniform</span> <br>
          
              <div class=" btn-group btn-group-sm ">

                  <button onclick="post_mark_def('uniform', 'u1', 'rmu', -1.555, '${info[index].student_uuid}',  '${info[index].name}', '${info[index].roll}', '${info[index].avatar}',)" class="u1_${info[index].student_uuid} rmu btn btn-danger fs-3 bg-light  text-danger ">&#10026;</button>
                 
                  <button onclick="post_mark_def('uniform', 'u2', 'rmu', 0.555, '${info[index].student_uuid}',  '${info[index].name}', '${info[index].roll}', '${info[index].avatar}',)"  class="u2_${info[index].student_uuid} rmu btn btn-primary fs-3 bg-light text-primary">&#10026;&#10026;</button>
               
                  <button onclick="post_mark_def('uniform', 'u3', 'rmu', 1.555, '${info[index].student_uuid}', '${info[index].name}', '${info[index].roll}', '${info[index].avatar}',)"  class="u3_${info[index].student_uuid} rmu btn btn-success fs-3 bg-light text-success ">&#10026;&#10026;&#10026;</button>
              </div>


              <hr> <span class=" btn-lg  badge bg-light text-dark">Study</span> <br>
        
              <div class=" btn-group btn-group-sm ">

                  <button onclick="post_mark_def('study', 's1', 'rms', -1.333, '${info[index].student_uuid}', '${info[index].name}', '${info[index].roll}', '${info[index].avatar}',)" class="s1_${info[index].student_uuid} rms btn btn-danger fs-3 bg-light text-danger ">&#x2730;</button>

                  <button onclick="post_mark_def('study', 's2', 'rms', 0.333,'${info[index].student_uuid}', '${info[index].name}', '${info[index].roll}', '${info[index].avatar}',)" class="s2_${info[index].student_uuid} rms btn btn-primary fs-3 bg-light text-primary">&#x2730;&#x2730; </button>
               
                  <button onclick="post_mark_def('study', 's3', 'rms', 1.333, '${info[index].student_uuid}', '${info[index].name}', '${info[index].roll}', '${info[index].avatar}',)" class="s3_${info[index].student_uuid} rms btn btn-success fs-3  bg-light text-success ">&#x2730;&#x2730;&#x2730;</button>

              </div>
          </li>


      </ul>
          
          `


        }

        res.send({htmldata, data: true})
        } else res.send({data: false})
    }

   })



   
   
   }






// exports.teacher_rank_mark_post= (req, res)=>{
//  const {class_name, section_name, column, cls, mark, sid, student_id, roll, name, avatar}= req.body;
//   const defaultNumber= 1;
//   const checkout= cls+'_'+sid;
//   const teacher_uuid= req.session.teacher_uuid;
//   const session= new Date().getUTCFullYear();
//   const find_date = new Date().toLocaleDateString();
//   const rank_date= new Date().toDateString();
//    sqlmap.query(`SELECT * FROM student_rank WHERE domain='${res.locals.hostname}' AND class='${class_name}' AND section='${section_name}' AND  student_uuid='${sid}' AND rank_date="${rank_date}" AND teacher_uuid='${teacher_uuid}' AND ${column}=1`, (err, info)=>{
//     if(err) console.log(err.sqlMessage);
//     if(info.length==0)
//     {
//         sqlmap.query(`INSERT INTO student_rank (domain, session, checkout, find_date, rank_date, ${column}, teacher_uuid, student_uuid, student_id, class, section, roll, name, avatar) 
//         VALUES(
//         '${res.locals.hostname}',
//          ${session},
//           "${checkout}",
//           "${find_date}",
//           "${rank_date}",
//            ${defaultNumber},
//           ${teacher_uuid},
//           ${sid},
//           ${student_id},
//           '${class_name}',
//           '${section_name}',
//           ${roll},
//           '${name}',
//           '${avatar}')`,
//           (errInsert, next)=>{
          
//           if(errInsert) console.log(errInsert+' errInsert');

//             sqlmap.query(`SELECT poient FROM student_rank WHERE domain='${res.locals.hostname}' AND class='${class_name}' AND section='${section_name}' AND student_uuid=${sid} ORDER BY poient DESC LIMIT 1`, (err3, info3)=>{
//               if(err3) console.log(err3.sqlMessage+' err3');
       
//               else 
//               {
//                 const marked= info3[0].poient==undefined?1:parseFloat(info3[0].poient)+parseFloat(mark);
//                 sqlmap.query(`UPDATE student_rank SET poient=${marked} WHERE domain='${res.locals.hostname}'  AND class='${class_name}' AND section='${section_name}' AND  student_uuid=${sid}`, (err4, info4)=>{
    
//                   if(err4) console.log(err4.sqlMessage+' err4');
        
//                   else {
//                     // console.log('marked...');
//                     res.send({msg: true})
//                   }
        
//                 })
    
//               }
    
//             })
    
      
//         })
    
    
//     }
  
//     else {
//       // console.log('locked...');
//       res.send({msg: true})
//     }
//    })
  
//   }


  exports.teacher_rank_mark_post = (req, res) => {
    const { class_name, section_name, column, cls, mark, sid, student_id, roll, name, avatar } = req.body;
    const defaultNumber = 1;
    const checkout = cls + '_' + sid;
    const teacher_uuid = req.session.teacher_uuid;
    const session = new Date().getUTCFullYear();
    const find_date = new Date().toLocaleDateString();
    const rank_date = new Date().toDateString();

    const selectQuery = `SELECT * FROM student_rank WHERE domain=? AND class=? AND section=? AND student_uuid=? AND rank_date=? AND teacher_uuid=? AND ${column}=1`;
    const insertQuery = `INSERT INTO student_rank (domain, session, checkout, find_date, rank_date, ${column}, teacher_uuid, student_uuid, student_id, class, section, roll, name, avatar) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)`;
    const selectPoientQuery = `SELECT poient FROM student_rank WHERE domain=? AND class=? AND section=? AND student_uuid=? ORDER BY poient DESC LIMIT 1`;
    const updatePoientQuery = `UPDATE student_rank SET poient=? WHERE domain=? AND class=? AND section=? AND student_uuid=?`;

    sqlmap.query(selectQuery, [res.locals.hostname, class_name, section_name, sid, rank_date, teacher_uuid], (err, info) => {
        if (err) {
            console.log(err.sqlMessage);
            return;
        }

        if (info.length == 0) {
            sqlmap.query(insertQuery, [res.locals.hostname, session, checkout, find_date, rank_date, defaultNumber, teacher_uuid, sid, student_id, class_name, section_name, roll, name, avatar], (errInsert, next) => {
                if (errInsert) {
                    console.log(errInsert.sqlMessage);
                    return;
                }

                sqlmap.query(selectPoientQuery, [res.locals.hostname, class_name, section_name, sid], (err3, info3) => {
                    if (err3) {
                        console.log(err3.sqlMessage);
                        return;
                    }

                    const marked = info3[0].poient == undefined ? 1 : parseFloat(info3[0].poient) + parseFloat(mark);
                    sqlmap.query(updatePoientQuery, [marked, res.locals.hostname, class_name, section_name, sid], (err4, info4) => {
                        if (err4) {
                            console.log(err4.sqlMessage);
                        } else {
                            res.send({ msg: true });
                        }
                    });
                });
            });
        } else {
            res.send({ msg: true });
        }
    });
};





exports.teacher_rank_checkout = (req, res) => {
  const teacher_uuid = req.session.teacher_uuid;
  const { class_name, section_name } = req.body;
  const rank_date = new Date().toDateString();

  const sql = `SELECT student_uuid, checkout, rank_date FROM student_rank WHERE domain=? AND class=? AND section=? AND rank_date=?`;

  sqlmap.query(sql, [res.locals.hostname, class_name, section_name, rank_date], (err, info) => {
      if (err) {
          console.log(err.sqlMessage);
          return;
      }

      res.send({ info });
  });
};





// exports.public_rank_class_page= (req, res)=>{

//     sqlmap.query(`SELECT * FROM student_rank WHERE domain='${res.locals.hostname}' AND  class='Ten' GROUP BY poient DESC`, (errTen, infoTen)=>{
  
//       if(errTen) console.log(errTen.sqlMessage);
  
//       sqlmap.query(`SELECT * FROM student_rank WHERE domain='${res.locals.hostname}' AND  class='Nine' GROUP BY poient DESC`, (errNine, infoNine)=>{
  
//         if(errNine) console.log(errNine.sqlMessage);
    
//         sqlmap.query(`SELECT * FROM student_rank WHERE domain='${res.locals.hostname}' AND  class='Eight' GROUP BY poient DESC`, (errEight, infoEight)=>{
  
//           if(errEight) console.log(errEight.sqlMessage);
      
//           sqlmap.query(`SELECT * FROM student_rank WHERE domain='${res.locals.hostname}' AND  class='Seven' GROUP BY poient DESC`, (errSeven, infoSeven)=>{
  
//             if(errSeven) console.log(errSeven.sqlMessage);
        
            
//           sqlmap.query(`SELECT * FROM student_rank WHERE domain='${res.locals.hostname}' AND  class='Six' GROUP BY poient DESC`, (errSix, infoSix)=>{
  
           
//             if(errSix) console.log(errSix.sqlMessage);
        
//             if(infoSix.length==0 && infoSeven.length==0 && infoEight.length==0 && infoNine.length==0 && infoTen.length==0){
  
//               res.redirect('/pages/empty.html')
  
//             }
      
//             else res.render("public/rank_class_page_public", {infoSix, infoSeven, infoEight, infoNine, infoTen})
        
           
//           })
      
      
        
//           })
    
    
      
//         })
  
  
    
//       })
  
//     })
  
//   }
  
  


exports.public_rank_class_page = (req, res) => {
  const getClassRank = (className, callback) => {
      const sql = `SELECT * FROM student_rank WHERE domain=? AND class=? GROUP BY poient DESC`;
      sqlmap.query(sql, [res.locals.hostname, className], callback);
  };

  getClassRank('Ten', (errTen, infoTen) => {
      if (errTen) {
          console.log(errTen.sqlMessage);
          return;
      }

      getClassRank('Nine', (errNine, infoNine) => {
          if (errNine) {
              console.log(errNine.sqlMessage);
              return;
          }

          getClassRank('Eight', (errEight, infoEight) => {
              if (errEight) {
                  console.log(errEight.sqlMessage);
                  return;
              }

              getClassRank('Seven', (errSeven, infoSeven) => {
                  if (errSeven) {
                      console.log(errSeven.sqlMessage);
                      return;
                  }

                  getClassRank('Six', (errSix, infoSix) => {
                      if (errSix) {
                          console.log(errSix.sqlMessage);
                          return;
                      }

                      if (infoSix.length == 0 && infoSeven.length == 0 && infoEight.length == 0 && infoNine.length == 0 && infoTen.length == 0) {
                          res.redirect('/pages/empty.html');
                      } else {
                          res.render("public/rank_class_page_public", { infoSix, infoSeven, infoEight, infoNine, infoTen });
                      }
                  });
              });
          });
      });
  });
};

  
  
// exports.public_rank_student_page= (req, res)=>{
//     const {class_name}=  req.params;
  
//    sqlmap.query(`SELECT *, SUM(behavior) as behavior, SUM(uniform) as uniform, SUM(study) as study, present FROM student_rank WHERE domain='${res.locals.hostname}' AND  class="${class_name}" AND section="A" GROUP BY student_uuid ORDER BY poient DESC `, (errA, infoA)=>{
//     if(errA) console.log(errA.sqlMessage);
  
//     sqlmap.query(`SELECT *, SUM(behavior) as behavior, SUM(uniform) as uniform, SUM(study) as study, present FROM student_rank WHERE domain='${res.locals.hostname}' AND  class="${class_name}" AND section="B" GROUP BY student_uuid ORDER  BY poient DESC `, (errB, infoB)=>{
//       if(errB) console.log(errB.sqlMessage);
    
//       sqlmap.query(`SELECT *, SUM(behavior) as behavior, SUM(uniform) as uniform, SUM(study) as study, present FROM student_rank WHERE domain='${res.locals.hostname}' AND  class="${class_name}" AND section="C" GROUP BY student_uuid ORDER  BY poient DESC `, (errC, infoC)=>{
//         if(errC) console.log(errC.sqlMessage);

//         // {..............
//           sqlmap.query(`SELECT *, SUM(behavior) as behavior, SUM(uniform) as uniform, SUM(study) as study, present FROM student_rank WHERE domain='${res.locals.hostname}' AND  class='${class_name}' GROUP BY student_uuid ORDER BY poient DESC LIMIT 20 OFFSET 0`, 
//           (err, info)=>{
     
//             if(err) console.log(err.sqlMessage);
     
//             else {
     
//              sqlmap.query(`SELECT SUM(behavior) as behavior, SUM(uniform) as uniform, SUM(study) as study, present, absent FROM student_rank WHERE domain='${res.locals.hostname}' AND  class='${class_name}'
//               GROUP BY student_uuid ORDER BY poient DESC LIMIT 20 OFFSET 0`, 
//              (errS, infoS)=>{
//                  if(errS) console.log(errS.sqlMessage);
     
//                  else res.render("public/rank_page_public", {infoA, infoB, infoC, info, infoS, class_name})

     
//              })
     
           
     
//             }
     
     
     
//           }) 
       
//         // }.................
      
      
//        })
       
//      })
  
  
//    })
  
//   }
  


exports.public_rank_student_page = (req, res) => {
  const { class_name } = req.params;

  const getRankData = (section, callback) => {
      const sql = `SELECT *, SUM(behavior) as behavior, SUM(uniform) as uniform, SUM(study) as study, present FROM student_rank WHERE domain=? AND class=? AND section=? GROUP BY student_uuid ORDER BY poient DESC`;
      sqlmap.query(sql, [res.locals.hostname, class_name, section], callback);
  };

  getRankData('A', (errA, infoA) => {
      if (errA) {
          console.log(errA.sqlMessage);
          return;
      }

      getRankData('B', (errB, infoB) => {
          if (errB) {
              console.log(errB.sqlMessage);
              return;
          }

          getRankData('C', (errC, infoC) => {
              if (errC) {
                  console.log(errC.sqlMessage);
                  return;
              }

              const sql = `SELECT *, SUM(behavior) as behavior, SUM(uniform) as uniform, SUM(study) as study, present FROM student_rank WHERE domain=? AND class=? GROUP BY student_uuid ORDER BY poient DESC LIMIT 20 OFFSET 0`;
              sqlmap.query(sql, [res.locals.hostname, class_name], (err, info) => {
                  if (err) {
                      console.log(err.sqlMessage);
                      return;
                  }

                  const sqlSummary = `SELECT SUM(behavior) as behavior, SUM(uniform) as uniform, SUM(study) as study, present, absent FROM student_rank WHERE domain=? AND class=? GROUP BY student_uuid ORDER BY poient DESC LIMIT 20 OFFSET 0`;
                  sqlmap.query(sqlSummary, [res.locals.hostname, class_name], (errS, infoS) => {
                      if (errS) {
                          console.log(errS.sqlMessage);
                          return;
                      }

                      res.render("public/rank_page_public", { infoA, infoB, infoC, info, infoS, class_name });
                  });
              });
          });
      });
  });
};




exports.public_rank_student_page_num = (req, res) => {
  const { class_name, offset } = req.body;

  const sqlRank = `SELECT * FROM student_rank WHERE domain=? AND class=? GROUP BY student_uuid ORDER BY poient DESC LIMIT 20 OFFSET ?`;
  const sqlSummary = `SELECT SUM(behavior) as behavior, SUM(uniform) as uniform, SUM(study) as study, present, absent FROM student_rank WHERE domain=? AND class=? GROUP BY student_uuid ORDER BY poient DESC LIMIT 20 OFFSET ?`;

  sqlmap.query(sqlRank, [res.locals.hostname, class_name, offset * 20], (err, info) => {
      if (err) {
          console.log(err.sqlMessage);
          return;
      }

      sqlmap.query(sqlSummary, [res.locals.hostname, class_name, offset * 20], (errS, infoS) => {
          if (errS) {
              console.log(errS.sqlMessage);
              return;
          }

          if (info.length > 0) {
              var htmldata = "";

              for (const i in info) {
                  htmldata += `
                  <ul class="list-group shadowx findcard mt-2 list">
                      <li class="list-group-item list-group-item-primary ">
                          <span class="badge bg-primary">Rank: ${parseInt(i) + parseInt(1)}</span>  
                          <img src="/assets/images/student/resized/${info[i].avatar}" height="30px" class="rounded" width="40px" alt="">
                          <span class="badge bg-light text-muted">${info[i].class} - ${info[i].section} - ${info[i].roll}</span>
                          <span class="badge bg-light text-dark">${info[i].name}</span>
                          <hr>
                          <span class="badge bg-light m-1 text-warning">Behavior (${infoS[i].behavior})</span>
                          <span class="badge bg-light m-1 text-secondary">Uniform (${infoS[i].uniform})</span>
                          <span class="badge bg-light m-1 text-info">Study (${infoS[i].study})</span>
                          <span class="badge bg-light m-1 text-danger">Absent (${infoS[i].absent})</span>
                          <span class="badge bg-light m-1 text-success">Present (${infoS[i].present})</span>
                          <span class="badge bg-light m-1 text-primary">Ratting (${info[i].poient})</span>
                      </li>
                  </ul>`;
              }

              res.send({ htmldata, data: true });
          } else {
              res.send({ data: false });
          }
      });
  });
};




