
const express= require("express")
const { authentication_404, authentication_check, forgot_verify_code, singout, forgot_password, reset_password, public_user_nav_item, public_user_nav_item_header, public_user_nav_item_menu } = require("../app/authentication_app")
const authentication= express.Router()


authentication.get("/singin/page", (req, res)=>{
  res.render("authentication/singin_page", {msg: req.flash("msg"), alert: req.flash("alert")})
})
authentication.get("/logger", authentication_check)
authentication.get("/singout", singout)
authentication.get("/404", authentication_404)
authentication.get("/forgot/password", (req, res)=>{
res.render("authentication/forgot_password_page", {step: "step1", msg: req.flash("msg"), alert: req.flash("alert")})
})
authentication.post("/forgot/password", forgot_password)
authentication.post("/forgot/password/verify", forgot_verify_code)
authentication.post("/forgot/password/reset", reset_password)






authentication.get('/user/nav-item-header', public_user_nav_item_header)
authentication.get('/user/nav-item-menu', public_user_nav_item_menu)


module.exports= authentication;