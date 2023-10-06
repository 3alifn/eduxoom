
const express= require("express");
const { student_application_post, student_application_get, student_application_download, multer_upload_docs,  } = require("../app/appllication_app");
const { self_dashboard, self_account, self_info_update, self_password_update, self_email_update, self_social, self_close_account, self_avatar_upload, student_rank_get_class_base, self_email_update_page, multer_upload_student, student_parent_set, student_parent_list, student_parent_get } = require("../app/student_app");
const student= express.Router()

student.all('*', (req, res, next)=>{


    if(req.session.user=='student')  next()
      

       
    else {
      req.session.destroy()
        res.end("sorry! you are unauthorized! please try again...");
  }


})




// self router.........
student.get("/dashboard", self_dashboard)
student.post("/rank/get/class/base", student_rank_get_class_base)
student.get("/account", self_account)
student.post("/info/update", self_info_update)
student.post("/password/update", self_password_update)
student.post("/email/update/page", self_email_update_page)

student.post("/email/update", self_email_update)
student.post("/social", self_social)
student.post("/close/account", self_close_account)

student.post("/avatar/upload", multer_upload_student.single("avatar"), self_avatar_upload)



// application router.........
student.get("/application/page", (req, res)=>{

    res.render("application/application_page_student");
    
    });
  
  student.post("/application/post", multer_upload_docs.single("attachment"), student_application_post);
  student.post('/application/get', student_application_get);
  student.get('/application/download', student_application_download);
  





//parent router...........

student.post("/parent/set", student_parent_set)
student.post("/parent/list", student_parent_list)
student.post("/parent/get", student_parent_get)




module.exports= student;