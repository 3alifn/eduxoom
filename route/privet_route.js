
const express= require("express");
const { privet_routine_get, admin_routine_page, privet_routine_page, privet_routine_page_class_base } = require("../app/routine_app");
const { privet_student_profile } = require("../app/student_app");
const { app } = require("../server");
const { privet_pic_report_student_get, privet_pic_report_get, privet_pic_report_get_checkout } = require("../app/pic_app");
const {  privet_pis_report_student_get, privet_pis_report_get, privet_pis_report_get_checkout } = require("../app/pis_app");
const {  privet_transcript_subject_get, privet_transcript_student_get, privet_transcript_report_card_get_half, privet_transcript_report_card_get_full, privet_transcript_report_card_get_final, privet_transcript_report_student_get, privet_transcript_report_get, privet_transcript_report_get_checkout, privet_bi_report_checkout } = require("../app/transcript_app");
const { privet_bi_transcript_get, privet_bi_transcript_report_checkout } = require("../app/bi_app");
const privet= express.Router()

privet.all('*', (req, res, next)=>{


    if(req.session.userAccess=='privet')  next()
      

       
 else  {
  req.flash("alert", "primary")
  req.flash("msg", "User login required!")
  res.redirect("/au/singin/page")

}

})




// bi report card.........
privet.post("/bi/transcript-report-checkout", privet_bi_transcript_report_checkout)



// pic result report:
privet.get('/pic/report-init-page', (req, res)=>{
  res.render('pic/pic-page-report-init-privet')
})
privet.get('/pic/report-page-student-get/:className/:sectionName/', privet_pic_report_student_get)
privet.get('/pic/report-get/:className/:sectionName/:student_id', privet_pic_report_get)
privet.post('/pic/report-get-checkout', privet_pic_report_get_checkout)



// pis result report:
privet.get('/pis/report-init-page', (req, res)=>{
  res.render('pis/pis-page-report-init-privet')
})
privet.get('/pis/report-page-student-get/:className/:sectionName/', privet_pis_report_student_get)
privet.get('/pis/report-get/:className/:sectionName/:student_id', privet_pis_report_get)
privet.post('/pis/report-get-checkout', privet_pis_report_get_checkout)




// transcript report Router..........
privet.get('/transcript/report-init-page', (req, res)=>{
  res.render('transcript/transcript-page-report-init-privet')
})
privet.get('/transcript/report-page-student-get/:className/:sectionName/', privet_transcript_report_student_get)
privet.get('/transcript/report-get/:className/:sectionName/:student_id', privet_transcript_report_get)
privet.post('/transcript/report-get-checkout', privet_transcript_report_get_checkout)









// routine router........
privet.get("/routine/page", privet_routine_page)
privet.get("/routine/page/class/base", privet_routine_page_class_base)
  


privet.post("/info/student", privet_student_profile)

      



module.exports= privet;