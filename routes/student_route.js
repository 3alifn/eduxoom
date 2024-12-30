const { app, express, session } = require("../configs/server");
const { student_application_post, student_application_get, student_application_download, multer_upload_docs,  } = require("../apps/appllication_app");
const { self_dashboard, self_account, self_info_update, self_password_update, self_email_update, self_social, self_close_account, self_avatar_upload, student_rank_get_class_base, self_email_update_page, multer_upload_student, student_parent_set, student_parent_list, student_parent_get, self_penbox_push, self_img_post, self_password_update_push, self_email_update_pull, self_email_update_push } = require("../apps/student_app");
const student= express.Router()
const {globalMulterUploader, globalSharpReducer}= require("../middlewares/uploaderMiddleware")

student.all('*', (req, res, next)=>{
    if(req.session.user=='student')  next()
    else {
      res.redirect('/au/signout/')
    }
})


// self router.........
const multerUploaderStudent = globalMulterUploader({name: ['single', 'image'], path: "/images/student/", size: 500 * 1024, filter: 'image/' });
const sharpReducerStudent = globalSharpReducer({ quality: 50})

student.get("/dashboard", self_dashboard)
student.post("/rank/get/class/base", student_rank_get_class_base)
student.get("/account", self_account)

student.post("/self/penbox/push", self_penbox_push)
student.post('/self/img/post', multerUploaderStudent, sharpReducerStudent, self_img_post)

student.post("/self/password/update/push", self_password_update_push)
student.post("/self/email/update/pull", self_email_update_pull)
student.post("/self/email/update/push", self_email_update_push)




// application router.........
const multerUploaderApplication = globalMulterUploader({name: ['single', 'attachment'], path: "/docs/application/", size: 500 * 1024, filter: ["image/png", "image/jpeg", "application/pdf"] });
student.get("/application/page", (req, res)=>{

    res.render("application/application_page_student");
    
    });
  
  student.post("/application/post", multerUploaderApplication, student_application_post);
  student.post('/application/get', student_application_get);
  student.get('/application/download', student_application_download);
  





//parent router...........

student.post("/parent/set", student_parent_set)
student.post("/parent/list", student_parent_list)
student.post("/parent/get", student_parent_get)




module.exports= student;