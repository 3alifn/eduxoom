const {app, express, session}=require('../configs/server') 
const { dashboard } = require("../handlers/adminHandler");
const { self_dashboard, self_account, self_info_update, self_password_update, self_email_update_page, self_email_update, self_close_account, self_avatar_upload, multer_upload_parent, self_penbox_push, self_password_update_push, self_email_update_pull, self_email_update_push, self_img_post } = require("../handlers/parentHandler");
const parent= express.Router()
const {globalMulterUploader, globalSharpReducer}= require("../middlewares/uploaderMiddleware")

parent.all('*', (req, res, next)=>{


    if(req.session.user=='parent')  next()
      

       
    else {
        res.redirect('/au/signout/')
    }

})

    
    
const multerUploaderParent = globalMulterUploader({name: ['single', 'image'], path: "/images/parent/", size: 500 * 1024, filter: ["image/png", "image/jpeg"] });
const sharpReducerParent = globalSharpReducer({ quality: 50})
parent.get("/dashboard", self_dashboard)
parent.get("/account", self_account)
parent.post("/self/penbox/push", self_penbox_push)
parent.post('/self/img/post', multerUploaderParent,sharpReducerParent, self_img_post)

parent.post("/self/password/update/push", self_password_update_push)
parent.post("/self/email/update/pull", self_email_update_pull)
parent.post("/self/email/update/push", self_email_update_push)





module.exports= parent;