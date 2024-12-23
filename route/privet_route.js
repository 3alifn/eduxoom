import { app, express, session } from '../server.js'; 
import { privet_pi_report_checkout, privet_transcript_report_student_get, privet_transcript_report_get, privet_finding_subject_sid } from "../app/pi_app.js";
import { privet_attn_init_page, privet_attn_repo_page, privet_attn_repo_page_num, privet_attn_repo_find, privet_attn_calendar_checkout, privet_attn_student_calendar } from '../app/attendance_app.js';
import { result_repo_student_page, result_repo_sheet_page, result_rank_pull } from '../app/result_app.js';

const privet = express.Router();


privet.all('*', (req, res, next)=>{


    if(req.session.userAccess=='privet')  next()
      

       
 else  {
  req.flash("alert", "primary")
  req.flash("msg", "User login required!")
  res.redirect("/au/singin/page")

}

})




// new result system router......
privet.get('/result/repo-init-page/', (req, res)=>{

   res.render('result/repo-init-page')
})
privet.get('/result/repo-student-page/:class_name/:section_name', result_repo_student_page)
privet.get('/result/repo-sheet-page/:class_name/:section_name/:suuid', result_repo_sheet_page)
privet.post('/result/rank-pull/', result_rank_pull)



// attendance router......
privet.get('/attn/repo/init/page/', privet_attn_init_page)
privet.get('/attn/repo/page/:class_name/:section_name/', privet_attn_repo_page) 
privet.get('/attn/student/calendar/:class_name/:section_name/:student_id/', privet_attn_student_calendar) 
privet.post('/attn/repo/page/num/', privet_attn_repo_page_num) 
privet.post('/attn/repo/find/', privet_attn_repo_find) 
privet.post('/attn/calendar/checkout/', privet_attn_calendar_checkout) 


// pic result report:
privet.get('/pic/report-init-page', (req, res)=>{
  res.render('pic/pic-page-repo-init-privet')
})




// pis result report:
privet.get('/pis/report-init-page', (req, res)=>{
  res.render('pis/pis-page-report-init-privet')
})



// transcript report Router..........
privet.get('/transcript/report-init-page', (req, res)=>{
  res.render('transcript/transcript-page-report-init-privet')
})
privet.get('/transcript/report-page-student-get/:className/:sectionName/', privet_transcript_report_student_get)
privet.post('/pi/transcript-report-checkout', privet_pi_report_checkout)
privet.get('/transcript/report-get/:className/:sectionName/:subject_code/:student_uuid', privet_transcript_report_get)
privet.get('/finding/subject/page/:class_name/:section_name/:sid/', privet_finding_subject_sid)


export default privet;