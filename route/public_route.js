import express from 'express';
import { public_admission_step1, public_admission_step2, public_admission_post, multer_upload_admission_image, multer_upload_admission_image_or_pdf } from '../app/admission_app.js';
import { public_gallery_image_get, public_gallery_image_data_get, public_gallery_video_get, public_gallery_video_data_get } from '../app/gallery_app.js';
import { public_notice_get, public_notice_view } from '../app/notice_app.js';
import { join, self_verify_code } from '../app/parent_app.js';
import { public_rank_class_page, public_rank_student_page, public_rank_student_page_num } from '../app/rank_app.js';
import {  public_routine_get } from '../app/routine_app.js';
import { public_student_page, public_student_list, public_student_profile_get, public_student_pagination } from '../app/student_app.js';
import { public_teacher_list, public_teacher_profile_get } from '../app/teacher_app.js';
import { app, sqlmap } from '../server.js';
import { public_team_saanvi_sent_message } from '../app/team_saanvi_app.js';
import {multer_upload_school_settings,pu_aboutus_render, pu_contactus_render,  public_sent_message} from '../app/school_app.js';
import { pu_class_secton_rm } from '../app/class_section.js';
import { public_library_get } from '../app/library_app.js';
import { pu_school_get, pu_headofschool_get, au_user_profile_header_nav } from '../app/home_app.js';
import {pu_headofschool_view_page} from '../app/headofschool_app.js';
import { public_staff_page, public_staff_profile_get } from '../app/staff_app.js';
import {  public_achievement_view, public_eventnews_page, public_eventnews_view, public_facilities_view, public_achievement_page, public_facilities_page } from '../app/repository.js';
import { pu_attn_checkout_webapi_present, pu_attn_checkout_logs, pu_attn_checkout_webapi_absent_student, pu_attn_checkout_webapi_absent_staff, pu_attn_checkout_webapi_absent_teacher } from '../app/attn_api_app.js';

const pub = express.Router();

// test router system......

// biometric attn router.............
pub.post('/attn-checkout-webapi/', pu_attn_checkout_logs)
pub.post('/attn-present-webapi/', pu_attn_checkout_webapi_present)
pub.post('/attn-absent-webapi/teacher/', pu_attn_checkout_webapi_absent_teacher)
pub.post('/attn-absent-webapi/staff/', pu_attn_checkout_webapi_absent_staff)
pub.post('/attn-absent-webapi/student/', pu_attn_checkout_webapi_absent_student)


// class section settings...
pub.get("/class/section/rm", pu_class_secton_rm)

//get public data...
pub.get('/user/profile/header-nav/', au_user_profile_header_nav)
pub.get('/school/get/', pu_school_get)
pub.get('/headofschool/get/', pu_headofschool_get)
pub.post("/contact-us/sent/msg", public_sent_message)


// pages router...
pub.get('/about-us.html/', pu_aboutus_render)
pub.get('/contact-us.html/', pu_contactus_render)
pub.get('/headofschool.html/', pu_headofschool_view_page)
pub.get('/staff-page.html/', public_staff_page)
pub.post("/staff/profile/get", public_staff_profile_get)



//repository router
pub.get('/facilities-page/', public_facilities_page)
pub.get('/achievement-page/', public_achievement_page)
pub.get('/achievement-view/:dataid/', public_achievement_view)
pub.get('/eventnews-page/', public_eventnews_page)
pub.get('/eventnews-view/:dataid/', public_eventnews_view)
pub.get('/facilities-view/:dataid', public_facilities_view)


// team sannvi 
pub.get("/team-saanvi", (req, res) => {
  res.render("team_saanvi/team-saanvi")
})
pub.post("/team-saanvi/contact-us", public_team_saanvi_sent_message)



// library router..........
pub.get("/library/page", (req, res)=>{

  res.render("public/library_page_public")

    })

pub.post('/library/get', public_library_get)




// gallery router......
pub.get("/gallery/image/page", public_gallery_image_get)

pub.get("/gallery/image/data/:dataid", public_gallery_image_data_get)

pub.get("/gallery/video/page", public_gallery_video_get)

pub.get("/gallery/video/data/:dataid", public_gallery_video_data_get)










// teacher router....

pub.get("/all/teacher",  public_teacher_list)
pub.post("/teacher/profile/get", public_teacher_profile_get)




// student router.........
pub.get("/student/page", public_student_page)

pub.get("/all/student", public_student_list)

pub.post("/student/profile/get", public_student_profile_get)

pub.post("/student/pagination", public_student_pagination)





// parent router............
pub.get("/join/parent", (req, res)=>{
    res.render("parent/join_parent", {step: "step1", msg: req.flash("msg"), alert: req.flash("alert")})
    })
    pub.post("/join/verifycode", self_verify_code)
    pub.post("/join/parent", join)
    


    
//   admission router......
pub.get("/admission/step1", public_admission_step1)
pub.post("/admission/step2", multer_upload_admission_image.single('avatar'),public_admission_step2)
pub.post("/admission/post", multer_upload_admission_image_or_pdf.single('docs'),public_admission_post)





//  rank router...........
pub.get("/rank/class/page", public_rank_class_page)
pub.get("/rank/page/:class_name", public_rank_student_page)
pub.post("/rank/student/page/num/", public_rank_student_page_num)




// notice router.......


  pub.get("/notice/page/", (req, res)=>{
    res.render("public/notice_page_public")
  })
  
  pub.post("/notice/get/", public_notice_get)
pub.get("/notice/view/:dataid", public_notice_view)





// result router......

// routine router......
pub.get("/routine/page/", (req, res)=>{
  res.render('public/routine_page_public')
})

pub.get("/routine/get/", public_routine_get)


  
export default pub;

