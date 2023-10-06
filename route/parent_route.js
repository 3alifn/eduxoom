
const express= require("express");
const { dashboard } = require("../app/admin_app");
const { self_dashboard, self_account, self_info_update, self_password_update, self_email_update_page, self_email_update, self_close_account, multer_upload, self_avatar_upload } = require("../app/parent_app");
const parent= express.Router()

parent.all('*', (req, res, next)=>{


    if(req.session.user=='parent')  next()
      

       
    else {
        req.session.destroy()
          res.end("sorry! you are unauthorized! please try again...");
    }

})

    
    

parent.get("/dashboard", self_dashboard)
parent.get("/account", self_account)
parent.post("/info/update", self_info_update)
parent.post("/password/update", self_password_update)
parent.post("/email/update/page", self_email_update_page)

parent.post("/email/update", self_email_update)
parent.post("/close/my/account", self_close_account)

parent.post("/avatar/upload", multer_upload.single("avatar"), self_avatar_upload)






module.exports= parent;