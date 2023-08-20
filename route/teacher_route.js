
const express= require("express");
const { teacher_pic_subject_get,  teacher_pic_page_mark_get, teacher_pic_mark_post, teacher_pic_mark_checkout } = require("../app/pic_app");
const {  teacher_pis_subject_get,  teacher_pis_page_mark_get, teacher_pis_mark_post, teacher_pis_mark_checkout } = require("../app/pis_app");
const { teacher_rank_mark_post, teacher_rank_mark_page_class_base, teacher_rank_mark_page, teacher_rank_mark_post_attendance } = require("../app/rank_app");
const { self_dashboard, self_account, self_info_update, self_password_update, self_email_update, self_email_update_page, self_social_update, self_close_account, self_avatar_upload, multer_upload, multer_upload_teacher } = require("../app/teacher_app");
const { teacher_bi_page_mark, teacher_bi_mark_post,  teacher_bi_page_mark_get, teacher_bi_report_get,  teacher_bi_checkout, teacher_bi_report_self_checkout, teacher_bi_info } = require("../app/bi_app");
const { teacher_student_info } = require("../app/student_app");
const teacher= express.Router()

teacher.all('*', (req, res, next)=>{


    if(req.session.user=='teacher')  next()
      

       
     else {
        req.flash("alert", "primary")
        req.flash("msg", "Teacher login required!")
        res.redirect("/au/singin/page")
     } 

})


// student router...
teacher.post("/student/info/", teacher_student_info)

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



// bi mark router..........
teacher.get('/bi/page-mark-init', (req, res)=>{
   res.render("bi/bi-page-mark-init-teacher")
})
teacher.get('/bi/page-report-init', (req, res)=>{
   res.render("bi/bi-page-report-init-teacher")
})
teacher.post("/bi/info/", teacher_bi_info)
teacher.get("/bi/page-mark-get/:page/:className/:sectionName/", teacher_bi_page_mark_get)
teacher.get("/bi/page-report-get/:page/:className/:sectionName/", teacher_bi_report_get)
teacher.post("/bi/mark-post", teacher_bi_mark_post)
teacher.post("/bi/mark-checkout", teacher_bi_checkout)
teacher.post("/bi/report-self-checkout", teacher_bi_report_self_checkout)



// pic mark router..........
teacher.get('/pic/page-mark-init', (req, res)=>{
   res.render("pic/pic-page-mark-init-teacher")
})



teacher.post("/pic/subject/get", teacher_pic_subject_get)
teacher.get("/pic/page-mark-get", teacher_pic_page_mark_get)
teacher.post("/pic/mark-post", teacher_pic_mark_post)
teacher.post("/pic/mark-checkout", teacher_pic_mark_checkout)





// pis mark router...........

teacher.get('/pis/page-mark-init', (req, res)=>{
   res.render("pis/pis-page-mark-init-teacher")
})



teacher.post("/pis/subject/get", teacher_pis_subject_get)
teacher.get("/pis/page-mark-get", teacher_pis_page_mark_get )
teacher.post("/pis/mark-post", teacher_pis_mark_post )
teacher.post("/pis/mark-checkout", teacher_pis_mark_checkout)





// rank router............
teacher.get("/daily/mark/page", teacher_rank_mark_page)
teacher.post("/rank/get/class/base", teacher_rank_mark_page_class_base)
teacher.post("/rank/post", teacher_rank_mark_post)
teacher.post("/rank/mark/post/attendance", teacher_rank_mark_post_attendance)





module.exports= teacher;