const { render } = require("ejs")
const {app, express, dotenv, nodemailer, mysql, sqlmap, multer, session, createHmac, randomBytes} = require("../server")
const { log } = require("sharp/lib/libvips")

exports.teacher_attn_init_page= (req, res)=>{

    res.render('attn/attn_init_page_teacher')

}

exports.teacher_attn_post_page= (req, res)=>{
 const {class_name, section_name}= req.params;
 sqlmap.query(`SELECT student_uuid FROM students 
 WHERE domain='${req.hostname}' AND class='${class_name}' AND section='${section_name}' GROUP BY student_uuid ORDER BY roll`,
 (errS, infoS)=>{
    if(errS) console.log(errS.sqlMessage);
    const infoSLen= infoS.length;

    sqlmap.query(`SELECT ID, student_uuid, avatar, name, roll FROM students 
    WHERE domain='${req.hostname}' AND class='${class_name}' AND section='${section_name}' 
    GROUP BY student_uuid ORDER BY roll LIMIT 20 OFFSET 0`, (err, info)=>{
       if(err) console.log(err.sqlMessage);
       else {
           res.render('attn/attn_post_page_teacher', {info, infoS, infoSLen, class_name, section_name})
       } 
    })

 })
}

exports.teacher_attn_post_page_num= (req, res)=>{
 const {class_name, section_name, offset}= req.body; 
//  console.log(offset*20);
 sqlmap.query(`SELECT ID, student_uuid, avatar, name, roll FROM students 
 WHERE domain='${req.hostname}' AND class='${class_name}' AND section='${section_name}' 
 GROUP BY student_uuid ORDER BY roll LIMIT 20 OFFSET ${offset*20}`, (err, info)=>{
    if(err) console.log(err.sqlMessage);
    else {
        if(info.length>0){
            var htmldata= '';
            for (let index = 0; index < info.length; index++) {
               htmldata+=` 
                <div class="student-card findcard pt-3 pb-3 shadowx">
               <div class="d-flex  justify-content-start align-content-center align-items-center">
                 <img class="rounded-circle border border-1 p-1" height="60px" width="60px" src="/image/student/resized/${info[index].avatar}" alt="">
                 <p class="fw-semibold text-muted ps-1"> ${info[index].roll}</p>
                 <p class="fw-semibold text-muted ps-2  text-truncate">${info[index].name}</p>
             
                 </div>
       
                 <div class="d-flex p-1  justify-content-center align-content-center align-items-center">
              
                 <code>Last checkout</code>
                 <code class="checkout_${info[index].student_uuid} ps-1">
                   <span class="spinner-border spinner-border-sm"></span>

                 </code>
                   
               </div>

                 <div class="d-flex  justify-content-center align-content-center align-items-center">
                 <button onclick="att_post_def('${info[index].student_uuid}', '${info[index].name}', '${info[index].roll}', '${info[index].avatar}', 0)"
                   
                   class="0_${info[index].student_uuid} btn btn-light fw-semibold text-danger bi bi-calendar-x border border-3 btn-sm pt-0 pb-0 fw-semibold"> Absent</button>
                
                   <button onclick="att_post_def('${info[index].student_uuid}', '${info[index].name}', '${info[index].roll}', '${info[index].avatar}', 1)"
                   
                   class="1_${info[index].student_uuid} btn btn-light fw-semibold text-primary bi bi-calendar-check  border border-3 btn-sm pt-0 pb-0 ms-1 fw-semibold"> Present</button>
               </div>

               </div>
               `
               
            }
            res.send({htmldata})
        } else {
            res.send({htmldata: 404});
        }
        
    }
 })
   

}


exports.teacher_attn_post= (req, res)=>{
    const teacher_uuid= req.session.teacher_uuid;
    const {class_name, section_name, student_uuid, name, roll, avatar, checkout}= req.body;
    const today = new Date();
    const currentDate= new Date().getDate();
    const currentMonth = today.getMonth();
    const currentYear = today.getFullYear();
    const get_cal= currentMonth+'-'+currentYear;
    const myMonth= ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
    const find_date= `${myMonth[currentMonth]}-${currentDate}-${currentMonth+1}-${currentYear}`
    const attn_date= new Date().toDateString();
    const at_status= checkout==1?'present':'absent'
    sqlmap.query(`SELECT student_uuid, teacher_uuid, find_date, attn_date
    FROM attn_student WHERE domain='${req.hostname}' AND teacher_uuid='${teacher_uuid}' AND student_uuid='${student_uuid}' AND find_date='${find_date}'
    ORDER BY ID DESC`, (errf, find)=>{
        if(errf) console.log(errf.sqlMessage);
        if(find.length>0){
       
      sqlmap.query(`UPDATE attn_student SET checkout=${checkout}, at_status='${at_status}' WHERE domain='${req.hostname}' AND teacher_uuid='${teacher_uuid}' AND student_uuid='${student_uuid}' AND find_date='${find_date}'`,
        (erru, up)=>{
            if(erru) console.log(erru.sqlMessage);
            // else console.log('updated...');
            student_rank_mark_attn(req.hostname, class_name, section_name, student_uuid, at_status)

            res.send({att: true})
        })

        }else {
      
            sqlmap.query(`
            INSERT INTO attn_student (domain, session, get_cal, attn_date, find_date, checkout, at_status, class, section, teacher_uuid, student_uuid, name, roll, avatar, year, month, day)
            
            VALUES('${req.hostname}', '${currentYear}', '${get_cal}', '${attn_date}', '${find_date}', ${checkout}, '${at_status}',  '${class_name}', '${section_name}', '${teacher_uuid}',
            '${student_uuid}', '${name}', '${roll}', '${avatar}', '${currentYear}', '${currentMonth}', '${currentDate}')`, (erri, inser)=>{
                if(erri) console.log(erri.sqlMessage);
                else {
                    student_rank_mark_attn(req.hostname, class_name, section_name, student_uuid, at_status)
                    // console.log('inserted...');
                     res.send({att: true})

                }
            })
        }
    })

   }




exports.teacher_attn_checkout= (req, res)=>{
    const teacher_uuid= req.session.teacher_uuid;
    const {class_name, section_name}= req.body;
    const attn_date= new Date().toDateString();
   
    sqlmap.query(`SELECT student_uuid, checkout, attn_date FROM attn_student WHERE domain='${req.hostname}' AND  class='${class_name}' AND section='${section_name}'
    AND attn_date='${attn_date}'`, (err, info)=>{
        if(err) console.log(err.sqlMessage);
        else res.send({info})
    })

   }

exports.teacher_attn_checkout_last_five= (req, res)=>{
    const teacher_uuid= req.session.teacher_uuid;
    const {class_name, section_name, student_uuid}= req.body;
    sqlmap.query(`SELECT student_uuid, checkout, attn_date FROM attn_student WHERE domain='${req.hostname}' AND  class='${class_name}' AND section='${section_name}'
    AND student_uuid='${student_uuid}' ORDER BY at_date LIMIT 5`, (err, info)=>{
        if(err) console.log(err.sqlMessage);
        else {
            res.send({info})
        }
    })

   }



exports.privet_attn_init_page= (req, res)=>{

    res.render('attn/attn_init_page_privet')

}


exports.privet_attn_repo_page= (req, res)=>{
 const {class_name, section_name}= req.params;
 const attn_date= new Date().toDateString();
 sqlmap.query(`SELECT attn_date FROM attn_student WHERE domain='${req.hostname}' AND class='${class_name}' AND section='${section_name}' ORDER BY at_date DESC LIMIT 1`,
 (errf, infof)=>{
 if(errf) console.log(errf.sqlMessage);
  const get_attn_date= infof[0].attn_date;
  sqlmap.query(`SELECT ID, student_uuid, avatar, name, roll, checkout, at_status FROM attn
  WHERE domain='${req.hostname}' AND class='${class_name}' AND section='${section_name}'
   AND attn_date='${get_attn_date}' GROUP BY student_uuid ORDER BY roll LIMIT 20 OFFSET 0`, (err, info)=>{
     if(err) console.log(err.sqlMessage);
     else  {
         res.render('attn/attn_repo_page_privet', {info, get_attn_date, class_name, section_name})
     }
  })

 })


   

}



exports.privet_attn_repo_page_num= (req, res)=>{
    const {class_name, section_name, offset, find_date}= req.body; 
    const attn_date=find_date;
    sqlmap.query(`SELECT ID, student_uuid, avatar, name, checkout, at_status, roll FROM attn
    WHERE domain='${req.hostname}' AND class='${class_name}' AND section='${section_name}' AND attn_date='${attn_date}'
    GROUP BY student_uuid ORDER BY roll LIMIT 20 OFFSET ${offset*20}`, (err, info)=>{
       if(err) console.log(err.sqlMessage);
       else {
           if(info.length>0){
               var htmldata= '';
               for (let index = 0; index < info.length; index++) {
                  htmldata+=` 
                  <a href="/privet/attn/student/calendar/${class_name}/${section_name}/${info[index].student_uuid}">
                  <div class="student-card findcard pt-1 pb-1 shadowx">
                  <div class="d-flex  justify-content-start align-content-center align-items-center">
               
                    <img class="rounded-circle border border-1 p-1" height="60px" width="60px" src="/image/student/resized/${info[index].avatar}" alt="">
                    <p class="fw-semibold text-muted ps-1">${info[index].roll} </p>
                    <p class="fw-semibold text-muted ps-2  text-truncate">${info[index].name}</p>
                
                    </div>
                    <code class="p-2 link-hover">History</code> 
                    <div class="d-flex  justify-content-center align-content-center align-items-center">
                    <p class="border fw-semibold border-1 bi ${info[index].checkout==1?'text-primary bi-calendar-check': 'text-danger bi-calendar-x'} pt-0 pb-0 ps-1 pe-1 rounded ms-1 fw-semibold">
                    ${info[index].at_status} 
                  </p>  
                        </div>
                
                  </div>
                  </a>
                        `
                  
               }
               res.send({htmldata})
           } else {
               res.send({htmldata: 404});
           }
           
       }
    })
      
   
   }


exports.privet_attn_repo_find= (req, res)=>{
    const {class_name, section_name, find_date}= req.body; 
    const attn_date=find_date;
    sqlmap.query(`SELECT ID, student_uuid, avatar, name, checkout, at_status, roll FROM attn
    WHERE domain='${req.hostname}' AND class='${class_name}' AND section='${section_name}' AND attn_date='${attn_date}'
    GROUP BY student_uuid ORDER BY roll LIMIT 20 OFFSET 0`, (err, info)=>{
       if(err) console.log(err.sqlMessage);
       else {
           if(info.length>0){
               var htmldata= '';
               for (let index = 0; index < info.length; index++) {
                  htmldata+=` 
                  <a href="/privet/attn/student/calendar/${class_name}/${section_name}/${info[index].student_uuid}">         
                  <div class="student-card findcard pt-1 pb-1 shadowx">
                  <div class="d-flex  justify-content-start align-content-center align-items-center">
               
                    <img class="rounded-circle border border-1 p-1" height="60px" width="60px" src="/image/student/resized/${info[index].avatar}" alt="">
                    <p class="fw-semibold text-muted ps-1">${info[index].roll} </p>
                    <p class="fw-semibold text-muted ps-2  text-truncate">${info[index].name}</p>
                
                    </div>
                    <code class="p-2 link-hover">History</code> 
            
                    <div class="d-flex  justify-content-center align-content-center align-items-center">
                    <p class="border fw-semibold border-1 bi ${info[index].checkout==1?'text-primary bi-calendar-check': 'text-danger bi-calendar-x'} pt-0 pb-0 ps-1 pe-1 rounded ms-1 fw-semibold">
                    ${info[index].at_status} 
                  </p>  
                        </div>
                
                  </div>
                        `
                  
               }
               res.send({htmldata})
           } else {
               res.send({htmldata: 404});
           }
           
       }
    })
      
   
   }




exports.privet_attn_student_calendar= (req, res)=>{
    const {class_name, section_name, student_uuid}= req.params;
    sqlmap.query(`SELECT ID, student_uuid, avatar, name, roll, checkout, at_status FROM attn
    WHERE domain='${req.hostname}' AND class='${class_name}' AND section='${section_name}' AND student_uuid='${student_uuid}'`,
     (err, info)=>{
       if(err) console.log(err.sqlMessage);
       else  {
        if(info.length>0){
            res.render('attn/attn_student_calendar_privet', {info, class_name, section_name, student_uuid})
        } else res.redirect('/pages/empty.html')
       }
    })
      
   
   }
   


exports.privet_attn_calendar_checkout= (req, res)=>{
    const {class_name, section_name, student_uuid, get_cal}= req.body;
    sqlmap.query(`SELECT COUNT(CASE checkout WHEN 1 THEN 1 ELSE null END) AS present, COUNT(CASE checkout WHEN 0 THEN 1 ELSE null END) AS absent FROM attn_student WHERE domain='${req.hostname}'
     AND  class='${class_name}' AND section='${section_name}' AND student_uuid='${student_uuid}' AND get_cal='${get_cal}'`, 
    (errc, cal)=>{
        if(errc) console.log(errc.sqlMessage);
        else { 
           const present= cal[0].present;
           const absent= cal[0].absent;
            sqlmap.query(`SELECT find_date, get_cal, checkout FROM attn_student WHERE domain='${req.hostname}'
            AND  class='${class_name}' AND section='${section_name}' AND student_uuid='${student_uuid}' AND get_cal='${get_cal}' ORDER BY day`, 
           (err, info)=>{
               if(err) console.log(err.sqlMessage);
               else { 
                // console.log(present, absent);
                   if(info.length>0){
                       res.send({info, present, absent})
                   } else {
                    res.send({info: 404})

                   }
               }
           })
  
        }
    })

   }








function student_rank_mark_attn(domain, class_name, section_name, student_uuid, at_status){
         const session= new Date().getUTCFullYear();
         const find_date = new Date().toLocaleDateString();
         const rank_date= new Date().toDateString();
         
         sqlmap.query(`SELECT ${at_status} FROM student_rank WHERE domain='${domain}' AND class='${class_name}' AND section='${section_name}' AND student_uuid=${student_uuid} ORDER BY ${at_status} DESC LIMIT 1`, 
         (errf, infof)=>{
            if(errf) console.log(errf.sqlMessage+' errf');
     
            else 
            {
              if(at_status=='present'){
                var marked= infof[0].present==undefined?1:parseFloat(infof[0].present)+parseFloat(1);
              } else var marked= infof[0].absent==undefined?1:parseFloat(infof[0].present)+parseFloat(1);

              sqlmap.query(`UPDATE student_rank SET ${at_status}=${marked} WHERE domain='${domain}'  AND class='${class_name}' AND section='${section_name}' AND  student_uuid=${student_uuid}`,
               (erru, infou)=>{
  
                if(erru) console.log(erru.sqlMessage+' erru');
      
                else {
                //   console.log('marked...');
                //   res.send({msg: true})
                }
      
              })
  
            }
  
          })
}