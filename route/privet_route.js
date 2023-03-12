
const express= require("express");
const { privet_attendance_page, privet_attendance_get_day_wise, privet_attendance_get_month_wise, privet_attendance_report_history, privet_attendance_report_history_month, privet_attendance_page_class_base } = require("../app/attendance_app");
const { privet_library_get } = require("../app/library_app");
const { privet_routine_get, admin_routine_page, privet_routine_page, privet_routine_page_class_base } = require("../app/routine_app");
const { privet_student_profile } = require("../app/student_app");
const { app } = require("../server");
const privet= express.Router()

privet.all('*', (req, res, next)=>{


    if(req.session.userAccess=='privet')  next()
      

       
 else  {
  req.flash("alert", "primary")
  req.flash("msg", "User login required!")
  res.redirect("/au/singin/page")

}

})


// attendance router..........

    privet.get("/attendance/report/page", privet_attendance_page)
    privet.post("/attendance/report/page", privet_attendance_page)
    privet.post("/attendance/report/class/base", privet_attendance_page_class_base)
    privet.post("/attendance/report/day/wise", privet_attendance_get_day_wise)
    privet.post("/attendance/report/month/wise", privet_attendance_get_month_wise)
    privet.get("/attendance/report/history", privet_attendance_report_history)
    privet.get("/attendance/report/history/month", privet_attendance_report_history_month)
    

// library router..........
privet.get("/library/page", (req, res)=>{

    res.render("library/library_page_privet")
  
      })

privet.post('/library/get', privet_library_get)



// routine router........
privet.get("/routine/page", privet_routine_page)
privet.get("/routine/page/class/base", privet_routine_page_class_base)
  


privet.post("/info/student", privet_student_profile)

      



module.exports= privet;