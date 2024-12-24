import { app, express, session } from '../server.js'; 
import { self_dashboard, self_account, multer_upload_parent, self_penbox_push, self_password_update_push, self_email_update_pull, self_email_update_push, self_img_post } from "../app/parent_app.js";
const parent = express.Router();


parent.all('*', (req, res, next)=>{

    if(req.session.user=='parent')  next()
      

       
    else {
        res.redirect('/au/signout/')
    }

})

    
    

parent.get("/dashboard", self_dashboard)
parent.get("/account", self_account)
parent.post("/self/penbox/push", self_penbox_push)
parent.post('/self/img/post', multer_upload_parent.single('image'),self_img_post)

parent.post("/self/password/update/push", self_password_update_push)
parent.post("/self/email/update/pull", self_email_update_pull)
parent.post("/self/email/update/push", self_email_update_push)





export default parent;