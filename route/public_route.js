
const express= require("express")
const { public_admission_step1, public_admission_step2, public_admission_post } = require("../app/admission_app")
const { public_gallery_video, public_gallery_image, public_gallery_video_list, public_gallery_image_list, public_carousel_get } = require("../app/content_app")
const { public_notice_get, public_notice_download } = require("../app/notice_app")
const { join, self_verify_code } = require("../app/parent_app")
const { public_rank_class_page, public_rank_page, public_rank_get, public_rank_get_class_base } = require("../app/rank_app")
const { public_routine_page, public_routine_page_class_base, public_routine_download } = require("../app/routine_app")
const { public_student_page, public_student_profile, public_student_list, self_join_student, self_student_verify_code, self_student_send_mail, public_student_get } = require("../app/student_app")
const { public_teacher_list, public_teacher_profile_get } = require("../app/teacher_app")
const { app } = require("../server")
const { public_team_saanvi_sent_message } = require("../app/team_saanvi_app")
const public= express.Router()



// team sannvi 
public.get("/team-saanvi", (req, res) => {
  res.render("team_saanvi/team-saanvi")
})
public.post("/team-saanvi/contact-us", public_team_saanvi_sent_message)

// content router.............

public.get("/carousel/get", public_carousel_get)


public.get("/help/supports", (req, res) => {
  res.render("public/helpdesk")
})

public.get("/gallery/video", (req, res)=>{
  res.render("public/gallery_video_page")
})
public.get("/gallery/photos",  (req, res)=>{
  res.render("public/gallery_image_page")
})


public.get("/gallery/video/list", (req, res)=>{
  app.locals.dataid= req.query.data;
  res.render("public/gallery_video_list")
})
public.get("/gallery/image/list",  (req, res)=>{
  app.locals.dataid= req.query.data;

  res.render("public/gallery_image_list")
})


public.post('/gallery/video/get', public_gallery_video)
public.post('/gallery/image/get', public_gallery_image)

public.post('/gallery/video/list', public_gallery_video_list)
public.post('/gallery/image/list', public_gallery_image_list)









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
    res.render("notice/notice_page_public")
  })
  
  public.post("/notice/get/", public_notice_get)
public.get("/notice/download/", public_notice_download)





// result router......

// routine router......
public.get("/routine/page/", public_routine_page)
public.get("/routine/page/class/base", public_routine_page_class_base)
public.get("/routine/download/", public_routine_download)


  
module.exports= public;