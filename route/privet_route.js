const {app, express, session}=require('../server') 
const { privet_routine_get, admin_routine_page, privet_routine_page, privet_routine_page_class_base } = require("../app/routine_app");
const { privet_student_profile } = require("../app/student_app");
const { privet_pic_report_student_get, privet_pic_report_get, privet_pic_report_get_checkout } = require("../app/pic_app");
const {  privet_pis_report_student_get, privet_pis_report_get, privet_pis_report_get_checkout } = require("../app/pis_app");
const { privet_bi_transcript_get, privet_bi_transcript_report_checkout } = require("../app/bi_app");
const { privet_pi_report_checkout, privet_transcript_report_student_get, privet_transcript_report_get, privet_finding_subject, privet_finding_subject_sid } = require("../app/pi_app");
const { privet_attn_init_page, privet_attn_repo_page, privet_attn_checkout, privet_attn_repo_page_num } = require('../app/attendance_app');
const privet= express.Router()

privet.all('*', (req, res, next)=>{


    if(req.session.userAccess=='privet')  next()
      

       
 else  {
  req.flash("alert", "primary")
  req.flash("msg", "User login required!")
  res.redirect("/au/singin/page")

}

})



// attendance router......
privet.get('/attn/repo/init/page/', privet_attn_init_page)
privet.get('/attn/repo/page/:class_name/:section_name/', privet_attn_repo_page) 
privet.post('/attn/repo/page/num/', privet_attn_repo_page_num) 


// pic result report:
privet.get('/pic/report-init-page', (req, res)=>{
  res.render('pic/pic-page-repo-init-privet')
})


// privet.get('/pic/report-page-student-get/:className/:sectionName/', privet_pic_report_student_get)
// privet.get('/pic/report-get/:className/:sectionName/:student_uuid', privet_pic_report_get)
// privet.post('/pic/report-get-checkout', privet_pic_report_get_checkout)



// pis result report:
privet.get('/pis/report-init-page', (req, res)=>{
  res.render('pis/pis-page-report-init-privet')
})
// privet.get('/pis/report-page-student-get/:className/:sectionName/', privet_pis_report_student_get)
// privet.get('/pis/report-get/:className/:sectionName/:student_uuid', privet_pis_report_get)
// privet.post('/pis/report-get-checkout', privet_pis_report_get_checkout)




// transcript report Router..........
privet.get('/transcript/report-init-page', (req, res)=>{
  res.render('transcript/transcript-page-report-init-privet')
})
privet.get('/transcript/report-page-student-get/:className/:sectionName/', privet_transcript_report_student_get)
privet.post('/pi/transcript-report-checkout', privet_pi_report_checkout)
privet.get('/transcript/report-get/:className/:sectionName/:subject_code/:student_uuid', privet_transcript_report_get)
privet.get('/finding/subject/page/:class_name/:section_name/:sid/', privet_finding_subject_sid)


module.exports= privet;