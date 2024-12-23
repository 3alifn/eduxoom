import { app, express, session } from "../server.js";
import { student_application_post, student_application_get, student_application_download, multer_upload_docs } from "../app/appllication_app.js";
import { 
  self_dashboard, self_account, student_rank_get_class_base, multer_upload_student, 
  student_parent_set, student_parent_list, student_parent_get, self_penbox_push,
   self_img_post, self_password_update_push, self_email_update_pull, 
   self_email_update_push } from "../app/student_app.js";
   
const student = express.Router();

const privet = express.Router();


student.all('*', (req, res, next)=>{


    if(req.session.user=='student')  next()
      

       
    else {
      res.redirect('/au/signout/')
    }


})




// self router.........
student.get("/dashboard", self_dashboard)
student.post("/rank/get/class/base", student_rank_get_class_base)
student.get("/account", self_account)

student.post("/self/penbox/push", self_penbox_push)
student.post('/self/img/post', multer_upload_student.single('image'),self_img_post)

student.post("/self/password/update/push", self_password_update_push)
student.post("/self/email/update/pull", self_email_update_pull)
student.post("/self/email/update/push", self_email_update_push)




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




export default student;