
const express= require("express")


const admin_app = require("../app/admin_app")
const { admin_admission_page, admin_admission_accept, admin_admission_reject, admin_admission_info } = require("../app/admission_app")
const { admin_application_get, admin_application_replay, admin_application_download } = require("../app/appllication_app")
const { admin_content_post, admin_content_get, admin_content_delete, admin_content_list_data, admin_content_list_data_delete, admin_content_image, admin_content_video, admin_content_data_delete, admin_content_image_post, admin_content_video_post, multer_upload, admin_carousel_post, multer_upload_carousel, admin_carousel_get, admin_carousel_delete } = require("../app/content")
const { admin_library_update, admin_library_update_page, admin_library_delete, admin_library_get, admin_library_post, upload_library_image } = require("../app/library_app")
const { admin_notice_get, uploadNotice, admin_notice_post, admin_notice_delete, admin_notice_download } = require("../app/notice_app")
const { admin_parent_get, admin_parent_delete, admin_parent_profile } = require("../app/parent_app")
const { admin_result_get, admin_result_post, admin_result_get_class_base, uploadResult, admin_result_import, admin_result_export, admin_result_delete, admin_result_rank_post, admin_result_rank_list, dynamic_roll_list, dynamic_subject_list, admin_dynamic_student_get } = require("../app/result_app")
const { admin_routine_post, admin_routine_delete, admin_subject_dynamic_get, admin_teacher_dynamic_get, admin_ptlist_dynamic_get, admin_routine_page, admin_routine_get } = require("../app/routine_app")
const { admin_student_import, admin_student_get, admin_student_get_class_base, admin_student_delete, multer_upload_student, admin_student_join, admin_student_copy_get, admin_student_copy_post, admin_student_copy_delete, admin_student_copy_profile, admin_student_update_post, admin_student_update_form, admin_student_join_quick, admin_student_import_quick } = require("../app/student_app")
const { admin_subject_list, admin_subject_select_teacher, admin_subject_set_time, admin_subject_delete, admin_subject_post } = require("../app/subject_app")
const { admin_teacher_get, admin_teacher_delete, admin_teacher_update, admin_teacher_update_page, admin_teacher_config, join, admin_config_subject, admin_teacher_join, multer_upload_teacher } = require("../app/teacher_app")
const { app } = require("../server")
const { admin_transcript_student_get, admin_transcript_student_final_card, admin_transcript_student_final_card_init, admin_transcript_final_card_init, admin_transcript_final_card_mark, admin_transcript_final_card_accept_student_list, admin_transcript_final_card_waiting_student_list, admin_transcript_final_card_drop_student_list, admin_transcript_final_card_passed_student_list, admin_transcript_final_card_passed_result, admin_transcript_final_card_drop_result, admin_transcript_report_page, admin_transcript_report_student_get, privet_transcript_report_get, admin_transcript_report_get, admin_transcript_report_get_checkout } = require("../app/transcript_app")
const { render } = require("ejs")
const { admin_bi_catagory_post, admin_bi_catagory_get, admin_bi_catagory_update_post, admin_bi_catagory_delete } = require("../app/bi_app")
const admin= express.Router()



admin.get("/", (req, res)=>{
  res.render("admin/admin_login_page", {msg: req.flash("msg"), alert: req.flash("alert")})
})

admin.post("/login", admin_app.admin_login)


admin.all('*', (req, res, next)=>{
 

  if(req.session.hashUser=='hashAdmin')  next()
    

     
   else res.end("sorry! you are unauthorized!");

})


// final transcript router....
admin.get('/transcript/report-init-page', (req, res)=>{
  res.render('admin/transcript-page-report-init')
})
admin.get('/transcript/report-page-student-get/:className/:sectionName/', admin_transcript_report_student_get)
admin.get('/transcript/report-get/:className/:sectionName/:student_id', admin_transcript_report_get)
admin.post('/transcript/report-get-checkout', admin_transcript_report_get_checkout)



admin.get('/transcript/final-card-passed-student-list/:className/:sectionName', admin_transcript_final_card_passed_student_list)
admin.get('/transcript/final-card-waiting-student-list/:className/:sectionName', admin_transcript_final_card_waiting_student_list)
admin.get('/transcript/final-card-drop-student-list/:className/:sectionName', admin_transcript_final_card_drop_student_list)

admin.post('/transcript/final-card-passed-result', admin_transcript_final_card_passed_result)
admin.post('/transcript/final-card-drop-result', admin_transcript_final_card_drop_result)
// bi trancript router...........




// self router......
admin.get("/dashboard", admin_app.dashboard)

// teacher router

admin.get("/teacher/page", (req, res)=>{

    res.render("admin/teacher_page")


})

admin.get("/account", admin_app.self_account)

admin.post("/info/update", admin_app.self_info_update)
admin.post("/password/update", admin_app.self_password_update)

admin.post("/email/update", admin_app.self_email_update)

// admin.post("/avatar/upload", admin_app.multer_upload.single("avatar"), admin_app.self_avatar_upload)



// content router..........
admin.get("/content/page", (req, res)=>{
  res.render("admin/content_page")
})

admin.get('/content/image', (req, res)=>{
  app.locals.dataid= req.query.data;
  res.render("admin/content_image_data")
})

admin.get('/content/video/', (req, res)=>{
  app.locals.dataid= req.query.data;

  res.render("admin/content_video_data")
})


admin.post('/content/image/post', multer_upload.any('itemLink'), admin_content_image_post)
admin.post('/content/video/post', admin_content_video_post)
admin.post('/content/get', admin_content_get)

admin.post('/content/image', admin_content_image)
admin.post('/content/video', admin_content_video)
admin.post('/content/data/delete', admin_content_data_delete)
admin.post('/content/delete', admin_content_delete)

// carousel router.........
admin.get("/carousel/page", (req, res)=>{
  res.render("admin/carousel_page")
})
admin.post('/carousel/get', admin_carousel_get)
admin.post('/carousel/post', multer_upload_carousel.any('itemName'), admin_carousel_post)
admin.post('/carousel/delete', admin_carousel_delete)







// teacher router.........
admin.post("/teacher/get", admin_teacher_get)
admin.post("/teacher/join", multer_upload_teacher.any("avatar"), admin_teacher_join)
admin.post("/teacher/config", admin_teacher_config)
admin.post("/teacher/delete", admin_teacher_delete)
admin.post("/teacher/update/page", admin_teacher_update_page)
admin.post("/teacher/update", admin_teacher_update)


// student router..........

admin.get("/student/page", (req, res)=>{
  res.render("admin/student_page", {msg: req.flash('msg'), alert: req.flash('alert')})
  // res.render("admin/student_page", {msg: 'getto', alert: 'primary'})
})



admin.post("/student/get", admin_student_get)

admin.post("/student/import/quick", admin_student_import_quick)
admin.post("/student/get/class/base", admin_student_get_class_base)
admin.post("/student/delete", admin_student_delete)
admin.post("/student/join", multer_upload_student.any("avatar"), admin_student_join)
admin.post("/student/update/post", multer_upload_student.any("avatar"), admin_student_update_post)
admin.post("/student/update/form", admin_student_update_form)
admin.post("/student/join/quick", admin_student_join_quick)





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

admin.post("/library/post", upload_library_image.single("photos"), admin_library_post)
admin.post("/library/get", admin_library_get)
admin.post("/library/delete", admin_library_delete)
admin.get("/library/update/page", admin_library_update_page)
admin.post("/library/update", admin_library_update)




// // class routine.......

admin.get("/routine/page", admin_routine_page)

admin.post("/routine/post", admin_routine_post )
admin.post("/routine/delete", admin_routine_delete )

admin.post("/dynamic/subject", admin_subject_dynamic_get)
admin.post("/dynamic/teacher", admin_teacher_dynamic_get)
admin.post("/dynamic/ptlist", admin_ptlist_dynamic_get)





// // subject router...........
admin.get("/subject/page", admin_subject_list)
admin.post("/subject/post", admin_subject_post)
admin.post("/subject/delete", admin_subject_delete)
admin.post("/subject/set/time", admin_subject_set_time)
admin.post("/subject/select/teacher", admin_subject_select_teacher)








// // result router.........

admin.get("/result/page", (req, res)=>{
  
res.render("admin/result_page")

})
admin.post("/result/get", admin_result_get)
admin.post("/result/post", admin_result_post)
admin.post("/result/get/class/base", admin_result_get_class_base)
admin.post("/result/import", uploadResult.single("xlsxImport"), admin_result_import)
admin.post("/result/export", admin_result_export)


admin.post("/result/delete", admin_result_delete)
admin.post("/result/rank/post", admin_result_rank_post)
admin.get("/result/rank/page", (req, res)=>{

  
res.render("admin/result_rank_page")

})

admin.post("/result/rank/page", admin_result_rank_list)

admin.post("/dynamic/student/get", admin_dynamic_student_get)
admin.post("/dynamic/subject/get", dynamic_subject_list)





// // admission router.......
admin.get("/admission/report/page", admin_admission_page)
admin.post("/admission/report/info", admin_admission_info)
admin.post("/admission/accept", admin_admission_accept)
admin.post("/admission/reject", admin_admission_reject)





// // notice board router.....
admin.get("/notice/page", (req, res)=>{
res.render("admin/notice_page")
})

admin.post("/notice/get",  admin_notice_get)
admin.post("/notice/post/", uploadNotice.single("attachment"), admin_notice_post)
admin.post("/notice/delete/", admin_notice_delete)
admin.get("/notice/download/", admin_notice_download)



// bi setting router...........

admin.get("/bi/catagory-page", (req, res)=>{
res.render('admin/bi_catagory_page')
})

admin.post('/bi/catagory-post', admin_bi_catagory_post)
admin.post('/bi/catagory-get', admin_bi_catagory_get)
admin.post('/bi/catagory-update-post', admin_bi_catagory_update_post)
admin.post('/bi/catagory-delete', admin_bi_catagory_delete )

module.exports= admin;