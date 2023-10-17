
const express= require("express")
const { authentication_404, authentication_check, forgot_verify_code, singout, forgot_password, reset_password , au_user_header_nav, signout } = require("../app/authentication_app")
const authentication= express.Router()


authentication.get("/signin/page", (req, res)=>{
  res.render("authentication/signin_page")
})

authentication.post("/logger", authentication_check)
authentication.get("/signout", signout)
authentication.get("/404", authentication_404)
authentication.get("/forgot/password", (req, res)=>{
res.render("authentication/forgot_password_page", {step: "step1", msg: req.flash("msg"), alert: req.flash("alert")})
})
authentication.post("/forgot/password", forgot_password)
authentication.post("/forgot/password/verify", forgot_verify_code)
authentication.post("/forgot/password/reset", reset_password)






authentication.get('/user/header-nav', au_user_header_nav)


module.exports= authentication;