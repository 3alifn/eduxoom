import { app, express, session } from '../server.js';
import {admin_logger, dashboard, admin_multer_upload, self_account, self_email_update, 
  self_info_update, self_password_update} from '../app/admin_app.js';
import { admin_admission_page, admin_admission_accept, admin_admission_reject, 
  admin_admission_info, admin_admission_student_page } from '../app/admission_app.js';
import { admin_application_get, admin_application_replay, admin_application_download } from '../app/appllication_app.js';

import {
  admin_gallery_image_post, admin_gallery_video_post, multer_upload, admin_carousel_post, 
  multer_upload_carousel, admin_carousel_get, admin_gallery_image_get, admin_gallery_image_delete, 
  admin_gallery_image_data_get, admin_gallery_image_data_delete, admin_gallery_image_data_post, 
  admin_gallery_video_get, admin_gallery_video_data_get, admin_gallery_video_data_delete, admin_gallery_video_delete, 
   admin_gallery_video_data_post, admin_carousel_rm 
  } from '../app/gallery_app.js';

import {
   admin_library_update, admin_library_update_page, admin_library_delete,
   admin_library_get, admin_library_post, upload_library_image
   } from '../app/library_app.js';

import { admin_notice_get, uploadNotice, admin_notice_post, admin_notice_rm } from '../app/notice_app.js';
import { admin_parent_get, admin_parent_delete, admin_parent_profile } from '../app/parent_app.js';

import { 
 admin_routine_post, admin_subject_dynamic_get, admin_teacher_dynamic_get,
   admin_routine_get, admin_routine_rm 
  } from '../app/routine_app.js';

import {
   admin_student_get, multer_upload_student, admin_student_join_quick, 
  admin_student_post, admin_student_penbox_pull, admin_student_penbox_push, 
  admin_student_rm, admin_student_img_post 
} from '../app/student_app.js';

import {  admin_subject_post, admin_subject_get, admin_subject_rm } from '../app/subject_app.js';

import {
   admin_teacher_get, multer_upload_teacher, admin_teacher_penbox_pull,
     admin_teacher_penbox_push, admin_teacher_rm, admin_teacher_post, admin_teacher_img_post 
    } from '../app/teacher_app.js';

import {
   admin_bi_catagory_post, admin_bi_catagory_get, admin_bi_catagory_update_post,
   admin_bi_catagory_delete, admin_bi_transcript_report_checkout
   } from '../app/bi_app.js';

import { multer_upload_school_settings, admin_school_post, admin_school_img_post, admin_school_page } from '../app/school_app.js';

import { admin_class_section_get, admin_class_section_post, admin_class_section_main_post } from '../app/class_section.js';

import {
  admin_headofschool_get, multer_upload_headofschool, admin_headofschool_post, 
  admin_headofschool_update, admin_headofschool_rm
  
} from '../app/headofschool_app.js';

import { 
  multer_upload_repository, admin_repository_post, admin_repository_get, admin_repository_rm,
   admin_repository_update_page, admin_repository_img_rm, admin_repository_update_post, admin_repository_img_update_post
   } from '../app/repository.js';

import { admin_dashboard_tsa_lookup } from '../app/dashboard_app.js';
import { admin_staff_get, admin_staff_post, multer_upload_staff, admin_staff_rm, admin_staff_penbox_pull, admin_staff_penbox_push, admin_staff_img_post } from '../app/staff_app.js';
import { admin_pi_transcript_report_checkout, admin_result_report_student_get, admin_result_report_get } from '../app/pi_app.js';
import { result_marksheet_pull_page, result_marksheet_pull_print } from '../app/result_app.js';

const admin = express.Router();


admin.get("/panel", (req, res)=>{
  res.render("admin/admin_login_page")
})

admin.post("/logger", admin_logger)


admin.all('*', (req, res, next)=>{
  if(req.session.hashUser=='hashAdmin')  next();
    
   else {
    
    req.flash("alert", "danger")
    req.flash("msg", "Authontication Falied!")

    res.redirect("/admin/panel")
   }

})


// dashboard lookup

admin.post('/dashboard/tsa/lookup/', admin_dashboard_tsa_lookup)

// setup school-settings.........

admin.get('/setup/class-section', (req, res)=>{
  res.render('admin/class_section_page')
})

admin.get('/setup/class-section/get', admin_class_section_get)
admin.post('/setup/class-section/post', admin_class_section_post)
admin.post('/setup/class-section/main/post', admin_class_section_main_post)

admin.get('/setup/school-settings', admin_school_page)

admin.post('/setup/school-settings/post', admin_school_post)
admin.post('/setup/school-settings/img/post', multer_upload_school_settings.single('image'), admin_school_img_post)



// new result system............
admin.get('/result/marksheet-init-page/', (req, res)=>{
  res.render('result/marksheet-init-page')
})

admin.get('/result/marksheet-pull-page/:class_name/:section_name', result_marksheet_pull_page)
admin.post('/result/marksheet-pull-print/', result_marksheet_pull_print)







// repository settings..

admin.get('/setup/eventnews/', (req, res)=>{
  res.render('admin/eventnews_page')
})
admin.get('/setup/achievement/', (req, res)=>{
  res.render('admin/achievement_page')
})
admin.get('/setup/facilities/', (req, res)=>{
  res.render('admin/facilities_page')
})

admin.post('/setup/repository/post', multer_upload_repository.any('images'), admin_repository_post)
admin.post('/repository/get', admin_repository_get)
admin.post('/repository/rm', admin_repository_rm)
admin.post('/repository/img/rm', admin_repository_img_rm)
admin.get('/repository/update/page/:datatype/:dataid/', admin_repository_update_page)
admin.post('/repository/update/post/', admin_repository_update_post)
admin.post('/repository/img/update/post/', multer_upload_repository.any('images'),admin_repository_img_update_post)




// setup headofschool
admin.get('/setup/headofschool/', (req, res)=>{
  res.render('admin/headofschool')
})
admin.post('/headofschool/get', admin_headofschool_get)
admin.post('/setup/headofschool/post', multer_upload_headofschool.single('image'), admin_headofschool_post)
admin.post('/headofschool/rm', admin_headofschool_rm)
admin.post('/headofschool/update/', multer_upload_headofschool.single('image'), admin_headofschool_update)


// setup staff settings
admin.get('/setup/staff/page', (req, res)=>{
  res.render('admin/staff_page')
})
admin.post('/staff/get', admin_staff_get)
admin.post('/setup/staff/post', multer_upload_staff.single('image'),admin_staff_post)
admin.post('/staff/img/post', multer_upload_staff.single('image'),admin_staff_img_post)
admin.post('/staff/rm', admin_staff_rm)
admin.post('/staff/penbox/pull', admin_staff_penbox_pull)
admin.post('/staff/penbox/push', admin_staff_penbox_push)


// final transcript router....
admin.get('/transcript/report-init-page', (req, res)=>{
  res.render('admin/result-page-report-init')
})
admin.get('/transcript/report-page-student-get/:className/:sectionName/', admin_result_report_student_get)
admin.get('/transcript/report-get/:className/:sectionName/:student_uuid', admin_result_report_get)




// bi report card router.........
admin.post("/bi/transcript-report-checkout", admin_bi_transcript_report_checkout)



// pi report card router......
admin.post("/pi/transcript-report-checkout", admin_pi_transcript_report_checkout)




// transcript pdf downloader......

admin.get('/transcript/pdf-init-page', (req, res)=>{
  res.render('admin/result-pdf-init-page')

})






// self router......
admin.get("/dashboard", dashboard)

// teacher router

admin.get("/teacher/page", (req, res)=>{

    res.render("admin/teacher_page")


})

admin.get("/account", self_account)

admin.post("/info/update", self_info_update)
admin.post("/password/update", self_password_update)

admin.post("/email/update", self_email_update)

// admin.post("/avatar/upload", admin_multer_upload.single("avatar"), self_avatar_upload)



// gallery image router..........

admin.get("/gallery/image/page", (req, res)=>{
  res.render("admin/gallery_image_page")
})

admin.post('/gallery/image/get', admin_gallery_image_get)
admin.post('/gallery/image/post', multer_upload.any('itemName'), admin_gallery_image_post)
admin.post('/gallery/image/data/post',  multer_upload.any('itemName'), admin_gallery_image_data_post)
admin.post('/gallery/image/delete', admin_gallery_image_delete)
admin.post('/gallery/image/data/delete', admin_gallery_image_data_delete)
admin.get('/gallery/image/data/:dataid/:item_title', (req, res)=>{
  const {dataid, item_title}= req.params;
  res.render('admin/gallery_image_data', {dataid, item_title})
})
admin.post('/gallery/image/data/get', admin_gallery_image_data_get)


// gallery video router...........


admin.get("/gallery/video/page", (req, res)=>{
  res.render("admin/gallery_video_page")
})

admin.post('/gallery/video/get', admin_gallery_video_get)

admin.post('/gallery/video/post',  admin_gallery_video_post)
admin.post('/gallery/video/data/post', admin_gallery_video_data_post)
admin.post('/gallery/video/delete', admin_gallery_video_delete)
admin.post('/gallery/video/data/delete', admin_gallery_video_data_delete)

admin.get('/gallery/video/data/:dataid/:item_title', (req, res)=>{
  const {dataid, item_title}= req.params;
  res.render('admin/gallery_video_data', {dataid, item_title})
})

admin.post('/gallery/video/data/get', admin_gallery_video_data_get)







// carousel router.........
admin.get("/carousel/page", (req, res)=>{
  res.render("admin/carousel_page")
})
admin.post('/carousel/get', admin_carousel_get)
admin.post('/carousel/post', multer_upload_carousel.any('itemName'), admin_carousel_post)
admin.post('/carousel/rm', admin_carousel_rm)







// teacher router.........
admin.post("/teacher/get/pull", admin_teacher_get)
admin.post("/setup/teacher/post/", multer_upload_teacher.single("images"), admin_teacher_post)
admin.post("/teacher/penbox/pull", admin_teacher_penbox_pull)
admin.post("/teacher/penbox/push", admin_teacher_penbox_push)
admin.post("/teacher/rm/pop", admin_teacher_rm)
admin.post('/teacher/img/post', multer_upload_teacher.single('image'),admin_teacher_img_post)






// student router..........

admin.get("/student/page", (req, res)=>{
  res.render("admin/student_page", {msg: req.flash('msg'), alert: req.flash('alert')})
  // res.render("admin/student_page", {msg: 'getto', alert: 'primary'})
})
admin.post("/student/join/quick", admin_student_join_quick)
admin.post("/student/get/pull", admin_student_get)
admin.post("/setup/student/post/", multer_upload_student.single("images"), admin_student_post)
admin.post("/student/img/post/", multer_upload_student.single("image"), admin_student_img_post)
admin.post("/student/penbox/pull", admin_student_penbox_pull)
admin.post("/student/penbox/push", admin_student_penbox_push)
admin.post("/student/rm/pop", admin_student_rm)





// parent router............

admin.get("/parent/page", (req, res)=>{
  res.render("admin/parent_page")
})

admin.post("/parent/get", admin_parent_get)

admin.post("/parent/delete", admin_parent_delete)

admin.post("/parent/profile", admin_parent_profile)









// // application report
admin.get("/application/page", (req, res)=>{
  
res.render("admin/application_page")


})
admin.post("/application/get", admin_application_get)
admin.post("/application/replay", admin_application_replay)
admin.get('/application/download', admin_application_download)




// // library router...........
admin.get("/library/page", (req, res)=>{
  
res.render("admin/library_page")

})

admin.post("/library/post", upload_library_image.single("bookimage"), admin_library_post)
admin.post("/library/get", admin_library_get)
admin.post("/library/delete", admin_library_delete)
admin.get("/library/update/page", admin_library_update_page)
admin.post("/library/update", admin_library_update)




// // class routine.......

admin.get("/routine/page", (req, res)=>{
  res.render('admin/routine_page')
})

admin.post("/routine/get", admin_routine_get )
admin.post("/routine/post", admin_routine_post)
admin.post("/routine/rm", admin_routine_rm )

admin.post("/dynamic/subject/get", admin_subject_dynamic_get)
admin.post("/dynamic/teacher/get", admin_teacher_dynamic_get)





// // subject router...........
admin.get("/subject/page", (req, res)=>{
  res.render("admin/subject_page")
})
admin.post("/subject/get", admin_subject_get)
// admin.post("/subject/post", admin_subject_post)
// admin.post("/subject/rm", admin_subject_rm)


// // admission router.......
admin.get("/admission/report/page", admin_admission_page)
admin.get("/admission/student/page/:uuid", admin_admission_student_page)
admin.post("/admission/report/info", admin_admission_info)
admin.post("/admission/accept", admin_admission_accept)
admin.post("/admission/reject", admin_admission_reject)





// // notice board router.....
admin.get("/notice/page", (req, res)=>{
res.render("admin/notice_page")
})

admin.post("/notice/get",  admin_notice_get)
admin.post("/notice/post/", uploadNotice.single("attachment"), admin_notice_post)
admin.post("/notice/rm/", admin_notice_rm)



// bi setting router...........

admin.get("/bi/catagory-page", (req, res)=>{
res.render('admin/bi_catagory_page')
})

// admin.post('/bi/catagory-post', admin_bi_catagory_post)
admin.post('/bi/catagory-get', admin_bi_catagory_get)
// admin.post('/bi/catagory-update-post', admin_bi_catagory_update_post)
// admin.post('/bi/catagory-delete', admin_bi_catagory_delete )

export default admin