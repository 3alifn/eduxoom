
const express= require("express")
const { public_admission_step1, public_admission_step2, public_admission_post } = require("../app/admission_app")
const { public_gallery_video, public_gallery_image, public_gallery_video_list, public_gallery_image_list, public_carousel_get, public_gallery_image_get, admin_gallery_image_data_get, public_gallery_image_data_get, public_gallery_video_get, public_gallery_video_data_get } = require("../app/gallery_app")
const { public_notice_get, public_notice_download } = require("../app/notice_app")
const { join, self_verify_code } = require("../app/parent_app")
const { public_rank_class_page, public_rank_page, public_rank_get, public_rank_get_class_base } = require("../app/rank_app")
const { public_routine_page, public_routine_page_class_base, public_routine_download } = require("../app/routine_app")
const { public_student_page, public_student_profile, public_student_list, self_join_student, self_student_verify_code, self_student_send_mail, public_student_get } = require("../app/student_app")
const { public_teacher_list, public_teacher_profile_get } = require("../app/teacher_app")
const { app, sqlmap } = require("../server")
const { public_team_saanvi_sent_message } = require("../app/team_saanvi_app")
const school_app = require("../app/school_app")
const { pu_class_secton_rm } = require("../app/class_section")
const { public_library_get } = require("../app/library_app")
const { pu_school_get, pu_headofschool_get, au_user_nav, au_user_profile_header_nav } = require("../app/home_app")
const { pu_headofschool_render } = require("../app/headofschool_app")
const headofschool_app = require("../app/headofschool_app")
const public= express.Router()

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
public.post("/info/teacher", public_teacher_profile_get)







// student router.........

public.get("/all/student", public_student_list)
public.post("/student/get-page", public_student_get)

public.get("/student/page", public_student_page)




// parent router............
public.get("/join/parent", (req, res)=>{
    res.render("parent/join_parent", {step: "step1", msg: req.flash("msg"), alert: req.flash("alert")})
    })
    public.post("/join/verifycode", self_verify_code)
    public.post("/join/parent", join)
    


    
//   admission router......
public.get("/admission/step1", public_admission_step1)
public.post("/admission/step2", public_admission_step2)
public.post("/admission/post", public_admission_post)





//  rank router...........
public.get("/rank/class/page", public_rank_class_page)
public.get("/rank/page", public_rank_page)
public.post("/rank/get", public_rank_get)
public.post("/rank/class/base", public_rank_get_class_base)







// notice router.......


  public.get("/notice/page/", (req, res)=>{
    res.render("public/notice_page_public")
  })
  
  public.post("/notice/get/", public_notice_get)
public.get("/notice/download/", public_notice_download)





// result router......

// routine router......
public.get("/routine/page/", public_routine_page)
public.get("/routine/page/class/base", public_routine_page_class_base)
// public.get("/routine/download/", public_routine_download)


  
module.exports= public;