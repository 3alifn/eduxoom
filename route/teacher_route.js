
const express= require("express");
const { teacher_attendance_page, teacher_attendance_post } = require("../app/attendance_app");
const { teacher_pic_post, teacher_pic_student_get, teacher_pic_subject_get, teacher_pic_report_page, teacher_pic_report_get, teacher_pic_report_page_report } = require("../app/pic_app");
const { teacher_pis_report_page, teacher_pis_report_get, teacher_pis_subject_get, teacher_pis_student_get, teacher_pis_post } = require("../app/pis_app");
const { teacher_rank_mark_post, teacher_rank_mark_page_class_base, teacher_rank_mark_page, teacher_rank_mark_post_attendance } = require("../app/rank_app");
const { self_dashboard, self_account, self_info_update, self_password_update, self_email_update, self_email_update_page, self_social_update, self_close_account, self_avatar_upload, multer_upload, multer_upload_teacher } = require("../app/teacher_app");
const teacher= express.Router()

teacher.all('*', (req, res, next)=>{


    if(req.session.user=='teacher')  next()
      

       
     else {
        req.flash("alert", "primary")
        req.flash("msg", "Teacher login required!")
        res.redirect("/au/singin/page")
     } 

})




// self account........
teacher.get("/dashboard", self_dashboard)
teacher.get("/account", self_account)

teacher.post("/info/update", self_info_update)
teacher.post("/password/update", self_password_update)
teacher.post("/email/update/page", self_email_update_page)
teacher.post("/email/update", self_email_update)
teacher.post("/social", self_social_update)
teacher.post("/close/account", self_close_account)

teacher.post("/avatar/upload",  multer_upload_teacher.single("avatar"), self_avatar_upload)



// pic mark router..........
teacher.get('/pic/page', (req, res)=>{
   res.render("pic/pic_page_teacher")
})

teacher.get("/pic/report/page", (req, res)=>{

   res.render('pic/pic_report_teacher')

})

teacher.post("/pic/report/page", teacher_pic_report_page)
teacher.post("/pic/report/get", teacher_pic_report_get)
teacher.post("/pic/subject/get", teacher_pic_subject_get)
teacher.post("/pic/student/get", teacher_pic_student_get)
// teacher.post("/pic/class/get", )
teacher.post("/pic/post", teacher_pic_post)

// teacher.get("/pic/report/student", )




// pis mark router...........

teacher.get('/pis/page', (req, res)=>{
   res.render("pis/pis_page_teacher")
})

teacher.get("/pis/report/page", (req, res)=>{

   res.render('pis/pis_report_teacher')

})

teacher.post("/pis/report/page", teacher_pis_report_page)

teacher.post("/pis/report/get", teacher_pis_report_get)
teacher.post("/pis/subject/get", teacher_pis_subject_get)
teacher.post("/pis/student/get", teacher_pis_student_get)
// teacher.post("/pis/class/get", )
teacher.post("/pis/post", teacher_pis_post)

// teacher.get("/pis/report/student", )














// rank router............
teacher.get("/daily/mark/page", teacher_rank_mark_page)
teacher.post("/rank/get/class/base", teacher_rank_mark_page_class_base)
teacher.post("/rank/post", teacher_rank_mark_post)
teacher.post("/rank/mark/post/attendance", teacher_rank_mark_post_attendance)






// attendance router........
teacher.get("/attendance/form", (req, res)=>{

res.render("attendance/attendance_form_teacher")
})
teacher.post("/attendance/page", teacher_attendance_page)
teacher.post("/attendance/post", teacher_attendance_post)



module.exports= teacher;