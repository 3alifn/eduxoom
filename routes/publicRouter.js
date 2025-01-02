
const express= require("express")
const { public_admission_step1, public_admission_step2, public_admission_post, multer_upload_admission, multer_upload_admission_image, multer_upload_admission_any, multer_upload_admission_image_or_pdf } = require("../handlers/admissionHandler")
const { public_gallery_video, public_gallery_image, public_gallery_video_list, public_gallery_image_list, public_carousel_get, public_gallery_image_get, admin_gallery_image_data_get, public_gallery_image_data_get, public_gallery_video_get, public_gallery_video_data_get } = require("../handlers/galleryHandler")
const { public_notice_get, public_notice_download, public_notice_view, public_notice_page } = require("../handlers/noticeHandler")
const { join, self_verify_code } = require("../handlers/parentHandler")
const { public_rank_class_page, public_rank_page, public_rank_get, public_rank_get_class_base, public_rank_student_get, public_rank_student_get_num, public_rank_student_page, public_rank_student_page_num } = require("../handlers/rankHandler")
const { public_routine_page, public_routine_page_class_base, public_routine_download, public_routine_get } = require("../handlers/routineHandler")
const { public_student_page, public_student_profile, public_student_list, self_join_student, self_student_verify_code, self_student_send_mail, public_student_get, public_student_profile_get, public_student_paginationt, public_student_pagination } = require("../handlers/studentHandler")
const { public_teacher_list, public_teacher_profile_get } = require("../handlers/teacherHandler")
const { app, sqlmap } = require("../configs/server")
const { public_team_saanvi_sent_message } = require("../handlers/teamHandler")
const school_app = require("../handlers/schoolHandler")
const { pu_class_secton_rm } = require("../handlers/classSectionHandler")
const { public_library_get } = require("../handlers/libraryHandler")
const { pu_school_get, pu_headofschool_get, au_user_nav, au_user_profile_header_nav } = require("../handlers/homeHandler")
const { pu_headofschool_render } = require("../handlers/headofschoolHandler")
const headofschool_app = require("../handlers/headofschoolHandler")
const { public_staff_page, public_staff_profile_get } = require("../handlers/staffHandler")
const { admin_achievement_page, public_achievement_view, public_eventnews_page, public_eventnews_view, admin_facilities_view, public_facilities_view, public_achievement_page, public_facilities_page } = require("../handlers/repositoryHandler")
const {pu_attn_checkout_webapi_present, pu_attn_checkout_logs, pu_attn_checkout_webapi_absent_student, pu_attn_checkout_webapi_absent_staff, pu_attn_checkout_webapi_absent_teacher } = require("../handlers/attnApiHandler")
const public= express.Router()
const {globalMulterUploader, globalSharpReducer}= require("../middlewares/uploaderMiddleware")

// test router system......

// biometric attn router.............
public.post('/attn-checkout-webapi/', pu_attn_checkout_logs)
public.post('/attn-present-webapi/', pu_attn_checkout_webapi_present)
public.post('/attn-absent-webapi/teacher/', pu_attn_checkout_webapi_absent_teacher)
public.post('/attn-absent-webapi/staff/', pu_attn_checkout_webapi_absent_staff)
public.post('/attn-absent-webapi/student/', pu_attn_checkout_webapi_absent_student)


// class section settings...
public.get("/class/section/rm", pu_class_secton_rm)

//get public data...
public.get('/user/profile/header-nav/', au_user_profile_header_nav)
public.get('/school/get/', pu_school_get)
public.get('/headofschool/get/', pu_headofschool_get)
public.post("/contact-us/sent/msg", school_app.public_sent_message)


// pages router...
public.get('/about-us.html/', school_app.pu_aboutus_render)
public.get('/contact-us.html/', school_app.pu_contactus_render)
public.get('/headofschool.html/', headofschool_app.pu_headofschool_view_page)
public.get('/staff-page.html/', public_staff_page)
public.post("/staff/profile/get", public_staff_profile_get)



//repository router
public.get('/facilities-page/', public_facilities_page)
public.get('/achievement-page/', public_achievement_page)
public.get('/achievement-view/:dataid/', public_achievement_view)
public.get('/eventnews-page/', public_eventnews_page)
public.get('/eventnews-view/:dataid/', public_eventnews_view)
public.get('/facilities-view/:dataid', public_facilities_view)


// team sannvi 
public.get("/team-saanvi", (req, res) => {
  res.render("team_saanvi/team-saanvi")
})
public.post("/team-saanvi/contact-us", public_team_saanvi_sent_message)



// library router..........
public.get("/library/page", (req, res)=>{

  res.render("public/library_page_public")

    })

public.post('/library/get', public_library_get)




// gallery router......
public.get("/gallery/image/page", public_gallery_image_get)

public.get("/gallery/image/data/:dataid", public_gallery_image_data_get)

public.get("/gallery/video/page", public_gallery_video_get)

public.get("/gallery/video/data/:dataid", public_gallery_video_data_get)










// teacher router....

public.get("/all/teacher",  public_teacher_list)
public.post("/teacher/profile/get", public_teacher_profile_get)




// student router.........
public.get("/student/page", public_student_page)

public.get("/all/student", public_student_list)

public.post("/student/profile/get", public_student_profile_get)

public.post("/student/pagination", public_student_pagination)



// parent router............
public.get("/join/parent", (req, res)=>{
    res.render("parent/join_parent", {step: "step1", msg: req.flash("msg"), alert: req.flash("alert")})
    })
    public.post("/join/verifycode", self_verify_code)
    public.post("/join/parent", join)
    


    
//   admission router......
const multerUploaderAdmissionImgStep2 = globalMulterUploader({name: ['single', 'image'], path: "/docs/admission/", size: 500 * 1024, filter: ["image/png", "image/jpeg"] });
const multerUploaderAdmissionPost = globalMulterUploader({ path: "/docs/admission/", size: 500 * 1024, filter: ["image/png", "image/jpeg", "application/pdf"] });
const sharpReducerAdmission = globalSharpReducer({ quality: 50})

public.get("/admission/step1", public_admission_step1)
public.post("/admission/step2", multerUploaderAdmissionImgStep2, sharpReducerAdmission, public_admission_step2)
public.post("/admission/post", multerUploaderAdmissionPost, sharpReducerAdmission, public_admission_post)





//  rank router...........
public.get("/rank/class/page", public_rank_class_page)
public.get("/rank/page/:class_name", public_rank_student_page)
public.post("/rank/student/page/num/", public_rank_student_page_num)




// notice router.......


public.get("/notice/page/", public_notice_page)

public.get("/notice/view/:dataid", public_notice_view)





// result router......

// routine router......
public.get("/routine/page/", (req, res)=>{
  res.render('public/routine_page_public')
})

public.get("/routine/get/", public_routine_get)


  
module.exports= public;

