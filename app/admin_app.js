const {app, express, dotenv, nodemailer, mysql, sqlmap, multer, createHmac, session } = require("../server")



module.exports = {

    multer_upload: multer({
        storage: multer.diskStorage({
            destination: (req, file, cb)=>{
             cb(null, "./public/image/admin")
            } ,
          
            filename: (req, file, cb)=>{
          
              cb(null, new Date().getTime()+"_"+file.originalname)
            },
            
          }),
      
        limits: {fileSize: 3000000 * 2},
        fileFilter: (req, file, cb)=>{
      
          if(file.mimetype=="image/png" || file.mimetype=="image/jpeg")
          {
            cb(null, true)
          } 
          else 
          {
              cb(new Error("file extension allow only png or jpeg"))
          }
          
        }
      
      })
,


    
admin_login: (req, res)=>{

    const {hashUsername, hashPassword}= req.body;
    const hashPassword__= createHmac('md5', 'pipilikapipra').update(hashPassword).digest('hex');

    sqlmap.query(`SELECT * FROM user_admin WHERE domain='${req.hostname}' AND   hash_username='${hashUsername}' AND hash_password='${hashPassword__}'`, (err, info)=>{

        if(info.length>0){
          
            if(info[0].hash_username===hashUsername && info[0].hash_password===hashPassword__){
                 
                req.session.hashUser= 'hashAdmin'
                req.session.admin_uuid= info[0].admin_uuid;
                req.session.hashUsername= hashUsername;
                req.session.hashPassword= hashPassword__;
                req.session.userAccess= "privet";
                res.redirect("/admin/dashboard")

            }

            else {
              req.flash("alert", "info")
              req.flash("msg", "Detect some issue, please clear browser cookie and try again!")
  
              res.redirect("/admin/panel")

            }
        } 

        else {

            req.flash("alert", "danger")
            req.flash("msg", "Authontication Falied!")

            res.redirect("/admin/panel")
        }

    })
},


dashboard: (req, res)=>{
  res.render("admin/dashboard")
}

,

self_account: (req, res)=>{

      
      let sql= `SELECT * FROM user_admin WHERE domain='${req.hostname}'`
  
      sqlmap.query(sql, (err, info)=>{
  
        res.render("admin/account_page", {info,  msg: req.flash("msg"), alert: req.flash("alert")})
  
  
      })
  


}
,




self_info_update: (req, res) =>{
  
  let {hash_name}= req.body;
  let sql=   `UPDATE user_admin SET hash_name="${hash_name}" WHERE domain='${req.hostname}'`
  sqlmap.query(sql, (err, info)=>{
  
  if(err) console.log(err.sqlMessage);
  
  else {
  req.flash("msg", "Profile Updated Successfully!")
  req.flash("alert", "success")
  res.redirect("/admin/account")
  }
  
  
  })
  
  },
  
  
  
  
  

  
  
self_password_update: (req, res)=>{
  
    let {hash_password, pastPassword}= req.body;

      const hashPassword= createHmac('md5', 'pipilikapipra').update(hash_password).digest('hex');  
      const pastHashPassword= createHmac('md5', 'pipilikapipra').update(pastPassword).digest('hex');  
    
       sqlmap.query(`SELECT hash_password FROM user_admin WHERE domain='${req.hostname}'`, (errPass, infoPass)=>{
    
        if(errPass) console.log(errPass.sqlMessage);
        else{
    
          if( pastHashPassword==infoPass[0].hash_password)
    {
    
      sqlmap.query( `UPDATE user_admin SET hash_password="${hashPassword}" WHERE domain='${req.hostname}'`, (err, info) =>{
    
        if(err) 
        {
          req.flash("msg", "Change Failed!")
          req.flash("alert", "danger")
          res.redirect("/admin/account")
    
        }
    
        else
        {
        
          req.flash("msg", "Changed! Successfully...")
          req.flash("alert", "success")
          res.redirect("/admin/account")
        }
      })
    
    }
    
    else 
    {
      req.flash("msg", "Current Password Not Matched!")
      req.flash("alert", "danger")
      res.redirect("/admin/account")
    }
    
        }
    
       })
    

  
  

  
    },
  
  
  
  
  
  
//   self_avatar_upload:(req, res, next)=>{
  
//   sqlmap.query(`UPDATE user_admin SET hash_avatar="${req.file.filename}" WHERE domain='${req.hostname}'`, (err, next)=>{
  
  
//     if(err) console.log(err.message);
  
//     else res.send({msg: "Changed Successfully!"})
//   })
  
//        console.log();(req.file)
  
//   },
  
  
  
  
  
self_email_update: (req, res)=>{

  let sql= `UPDATE user_admin SET hash_username="${req.body.hash_username}" WHERE domain='${req.hostname}'`
  
  sqlmap.query(sql, (err, info) =>{
  
  if(err) 
  {
    req.flash("msg", "Something Wrong!")
    res.redirect("/admin/account")
  
  }
  
  else
  {
  
    req.flash("msg", "Changed! Successfully...")
    req.flash("alert", "success")
    res.redirect("/admin/account")
  }
  })
  

  
  }
  



}






