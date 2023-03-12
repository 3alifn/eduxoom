
const express= require("express")
const { authentication_404, authentication_check, forgot_verify_code, singout, forgot_password, reset_password } = require("../app/authentication_app")
const { public_content_header_list } = require("../app/content")
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






authentication.get('/content/header/list', public_content_header_list)


module.exports= authentication;