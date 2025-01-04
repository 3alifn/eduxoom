
const {app, express, session, sqlmap}=require('../configs/server') 
const { teacher_pic_subject_get,  teacher_pic_page_mark_get, teacher_pic_mark_post, teacher_pic_mark_checkout } = require("../controllers/picController");
const {  teacher_pis_subject_get,  teacher_pis_page_mark_get, teacher_pis_mark_post, teacher_pis_mark_checkout } = require("../controllers/pisController");
const { teacher_rank_mark_post, teacher_rank_mark_page_class_base, teacher_rank_mark_page, teacher_rank_mark_post_attendance, teacher_rank_mark_init_page, teacher_rank_mark_page_num, teacher_rank_checkout } = require("../controllers/rankController");
const { self_dashboard, self_account, self_info_update, self_password_update, self_email_update, self_email_update_page, self_social_update, self_close_account, self_avatar_upload, multer_upload, multer_upload_teacher, self_img_post, self_penbox_push, self_email_update_pull, self_email_update_push, self_password_update_push } = require("../controllers/teacherController");
const { teacher_bi_page_mark, teacher_bi_mark_post,  teacher_bi_page_mark_get, teacher_bi_report_get,  teacher_bi_checkout, teacher_bi_report_self_checkout, teacher_bi_info } = require("../controllers/biController");
const { teacher_student_info } = require("../controllers/studentController");
const { Cookie } = require('express-session');
const { teacher_attn_init_page, teacher_attn_post_page, teacher_attn_post_page_num, teacher_attn_post, teacher_attn_checkout, teacher_attn_checkout_last_five } = require('../controllers/attendanceController');
const {result_mark_student_page, result_mark_subject_page, result_mark_push, result_mark_pull, result_repo_subject_page, result_repo_init_page, result_repo_student_page, result_repo_page, result_repo_sheet_page, result_rank_pull, } = require('../controllers/resultController');
const teacher= express.Router()
const {globalMulterUploader, globalSharpReducer}= require("../middlewares/uploaderMiddleware")

teacher.all('*', (req, res, next)=>{
    if(req.session.user=='teacher')  next()
    else {
      res.redirect('/au/signout/')
   }
})


teacher.post("/student/info", teacher_student_info)


// make new result system router........
teacher.get('/result/mark-init-page', (req, res)=>{

      res.render('result/mark-init-page')
})

teacher.get('/result/mark-subject-page/:class_name/:section_name', result_mark_subject_page)
teacher.get('/result/mark-student-page/:class_name/:section_name/:subject_code', result_mark_student_page)
teacher.post('/result/mark-push', result_mark_push)
teacher.get('/result/mark-pull', result_mark_pull)




// self account........
const multerUploaderTeacher = globalMulterUploader({name: ['single', 'image'], path: "/images/teacher/", size: 500 * 1024, filter: ["image/png", "image/jpeg"] });
const sharpReducerTeacher = globalSharpReducer({ quality: 50})
teacher.get("/dashboard", self_dashboard)
teacher.get("/account", self_account)
teacher.post("/self/penbox/push", self_penbox_push)
teacher.post('/self/img/post', multerUploaderTeacher, sharpReducerTeacher, self_img_post)

teacher.post("/self/password/update/push", self_password_update_push)
teacher.post("/self/email/update/pull", self_email_update_pull)
teacher.post("/self/email/update/push", self_email_update_push)


// attendance router.........
teacher.get('/attn/init/page/', teacher_attn_init_page)
teacher.get('/attn/post/page/:class_name/:section_name', teacher_attn_post_page)
teacher.post('/attn/post/page/num', teacher_attn_post_page_num)
teacher.post('/attn/post/', teacher_attn_post)
teacher.post('/attn/checkout/pull/', teacher_attn_checkout)
teacher.post('/attn/checkout/pull/last/five', teacher_attn_checkout_last_five)




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
teacher.get("/daily/mark/init/page/", teacher_rank_mark_init_page)
teacher.get("/daily/mark/page/:class_name/:section_name", teacher_rank_mark_page)
teacher.post("/rank/mark/page/num", teacher_rank_mark_page_num)
teacher.post("/rank/mark/post", teacher_rank_mark_post)
teacher.post("/rank/mark/checkout", teacher_rank_checkout)





module.exports= teacher;