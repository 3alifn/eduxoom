const { render } = require("ejs")
const {app, express, dotenv, nodemailer, mysql, sqlmap, multer, session, createHmac, randomBytes} = require("../server")
const { log } = require("sharp/lib/libvips")

exports.teacher_attn_init_page= (req, res)=>{

    res.render('attn/attn_init_page_teacher')

}

exports.teacher_attn_post_page= (req, res)=>{
 const {class_name, section_name}= req.params;
 sqlmap.query(`SELECT ID, student_uuid, avatar, name, roll FROM students 
 WHERE domain='${req.hostname}' AND class='${class_name}' AND section='${section_name}' 
 GROUP BY student_uuid ORDER BY roll LIMIT 20 OFFSET 0`, (err, info)=>{
    if(err) console.log(err.sqlMessage);
    else  res.render('attn/attn_post_page_teacher', {info, class_name, section_name})
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
                <div class="student-card pt-3 pb-3 shadow-sm">
               <div class="d-flex  justify-content-start align-content-center align-items-center">
                 <img class="rounded-circle border border-1 p-1" height="60px" width="60px" src="/image/student/${info[index].avatar}" alt="">
                 <p class="fw-semibold text-muted ps-1"> ${info[index].roll}</p>
                 <p class="fw-semibold text-muted ps-2  text-truncate">${info[index].name}</p>
             
                 </div>
       
                 
                 <div class="d-flex  justify-content-center align-content-center align-items-center">
                 <button onclick="att_post_def('${info[index].student_uuid}', '${info[index].name}', '${info[index].roll}', '${info[index].avatar}', 0)"
                   
                   class="0_${info[index].student_uuid} btn btn-danger border border-3 btn-sm pt-0 pb-0 fw-semibold">Absent</button>
                
                   <button onclick="att_post_def('${info[index].student_uuid}', '${info[index].name}', '${info[index].roll}', '${info[index].avatar}', 1)"
                   
                   class="1_${info[index].student_uuid} btn btn-primary border border-3 btn-sm pt-0 pb-0 ms-1 fw-semibold">Present</button>
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
    const currentMonth = today.getMonth();
    const currentYear = today.getFullYear();
    const myMonth= ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
    const attn_date= `${myMonth[currentMonth]}-${currentMonth+1}-${currentYear}`
    const find_date= new Date().toDateString();
    const currentDate= new Date().getDate();
    const at_status= checkout==1?'Present':'Absent'
    sqlmap.query(`SELECT student_uuid, teacher_uuid, find_date, attn_date
    FROM attn WHERE domain='${req.hostname}' AND teacher_uuid='${teacher_uuid}' AND student_uuid='${student_uuid}' AND attn_date='${attn_date}'
    ORDER BY ID DESC`, (errf, find)=>{
        if(errf) console.log(errf.sqlMessage);
        if(find.length>0){
       
      sqlmap.query(`UPDATE attn SET checkout=${checkout}, at_status='${at_status}' WHERE domain='${req.hostname}' AND teacher_uuid='${teacher_uuid}' AND student_uuid='${student_uuid}' AND attn_date='${attn_date}'`,
        (erru, up)=>{
            if(erru) console.log(erru.sqlMessage);
            // else console.log('updated...');
            res.send({att: true})
        })

        }else {
      
            sqlmap.query(`
            INSERT INTO attn (domain, session, attn_date, find_date, checkout, at_status, class, section, teacher_uuid, student_uuid, name, roll, avatar, year, month, day)
            
            VALUES('${req.hostname}', '${currentYear}', '${attn_date}', '${find_date}', ${checkout}, '${at_status}',  '${class_name}', '${section_name}', '${teacher_uuid}',
            '${student_uuid}', '${name}', '${roll}', '${avatar}', '${currentYear}', '${currentMonth}', '${currentDate}')`, (erri, inser)=>{
                if(erri) console.log(erri.sqlMessage);
                else {
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
    const today = new Date();
    const currentMonth = today.getMonth();
    const currentYear = today.getFullYear();
    const myMonth= ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
    const attn_date= `${myMonth[currentMonth]}-${currentMonth+1}-${currentYear}`
   
    sqlmap.query(`SELECT student_uuid, checkout, attn_date FROM attn WHERE domain='${req.hostname}' AND  class='${class_name}' AND section='${section_name}'
    AND attn_date='${attn_date}'`, (err, info)=>{
        if(err) console.log(err.sqlMessage);
        else res.send({info})
    })

   }
