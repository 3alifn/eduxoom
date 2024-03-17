const { render } = require("ejs")
const {app, express, dotenv, nodemailer, mysql, sqlmap, multer, session, createHmac, randomBytes} = require("../server")

exports.teacher_attn_init_page= (req, res)=>{

    res.render('attn/attn_init_page_teacher')

}

exports.teacher_attn_post_page= (req, res)=>{
 const {class_name, section_name}= req.params;
 sqlmap.query(`SELECT ID, student_uuid, avatar, name, roll FROM students 
 WHERE class='${class_name}' AND section='${section_name}' 
 GROUP BY student_uuid ORDER BY roll LIMIT 20 OFFSET 0`, (err, info)=>{
    if(err) console.log(err.sqlMessage);
    else  res.render('attn/attn_post_page_teacher', {info, class_name, section_name})
 })
   

}

exports.teacher_attn_post_page_num= (req, res)=>{
 const {class_name, section_name, offset}= req.body; 
//  console.log(offset*20);
 sqlmap.query(`SELECT ID, student_uuid, avatar, name, roll FROM students 
 WHERE class='${class_name}' AND section='${section_name}' 
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
                   <button data-id="0" data-id="${info[index].student_uuid}" data-id="${info[index].name}" data-id="${info[index].roll}" data-id="${info[index].avatar}" class="0${info[index].student_uuid} btn btn-danger border border-3 btn-sm pt-0 pb-0 fw-semibold">Absent</button>
                   <button data-id="1" data-id="${info[index].student_uuid}" data-id="${info[index].name}" data-id="${info[index].roll}" data-id="${info[index].avatar}" class="1${info[index].student_uuid} btn btn-primary border border-3 btn-sm pt-0 pb-0 ms-1 fw-semibold">Present</button>  
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
    const {class_name, section_name, student_uuid, name, roll, avatar, status}= req.body;
    const today = new Date();
    const currentMonth = today.getMonth();
    const currentYear = today.getFullYear();
    const myMonth= ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
    const myDate= `${myMonth[currentMonth]}-${currentMonth+1}-${currentYear}`
    // sqlmap.query(`SELECT student_uuid, teacher_uuid, at`)
    res.send({att: 1})

   }
