const express = require("express")
const { sqlmap , session} = require("../server")
const app = express()



exports.home_page = (req, res) => {
    sqlmap.query(`SELECT * FROM school_settings`, (err_school, info_school) => {
        if (err_school) console.log(err_school);
        sqlmap.query(`SELECT COUNT(ID) as count FROM teachers`, (err_teacher, info_teacher) => {
            if (err_teacher) console.log(err_teacher.sqlMessage);

            sqlmap.query(`SELECT COUNT(ID) as count FROM students`, (err_student, info_student) => {
                if (err_student) console.log(err_student.sqlMessage);

                sqlmap.query(`SELECT * FROM headofschool`, (err_headofschool, info_headofschool) => {
                    if (err_headofschool) console.log(err_headofschool.sqlMessage);


                    sqlmap.query(`SELECT * FROM carousel ORDER BY ID DESC LIMIT 5`, (err_carousel, info_carousel) => {

                        sqlmap.query(`SELECT COUNT(ID) as count FROM staff ORDER BY ID DESC`, (err_staff, info_staff) => {

                            res.render('public/home_page', { info_school, info_staff, info_headofschool, info_teacher, info_student, info_carousel })
    
    
                        })

                    })

                })

            })

        })
    })
}


exports.pu_school_get = (req, res) => {
    sqlmap.query(`SELECT * FROM school_settings`, (err_school, info_school) => {
        if (err_school) console.log(err_school);
        else res.send({ info_school })
    })
}

exports.pu_headofschool_get = (req, res) => {
    sqlmap.query(`SELECT * FROM headofschool`, (err_headofschool, info_headofschool) => {
        if (err_headofschool) console.log(err_headofschool.sqlMessage);
        else res.send({ info_headofschool })
    })
}


exports.au_user_profile_header_nav= (req, res)=>{
  
    if(req.session.userAccess==='privet'){
     let data= '';
      if(req.session.hashUser=='hashAdmin'){

         data+=`
         <div class="p-2  tooltipx btn-hover bg-light btn  rounded">
         <img height="30pc" width="30px" src="/image/default/user.png" alt="">
             
             <div class="tooltipy  bg-light shadow ps-5 pe-5 pt-3 pb-3">
                <a class="nav-link mt-1 btn-hover text-dark rounded p-1 append-user-profile" href="/admin/account">My profile</a>
                <a class="nav-link mt-1 btn-hover text-dark rounded p-1 append-user-dashboard" href="/admin/dashboard">Dashboard</a>
                <a class="nav-link mt-1 btn-hover text-dark rounded p-1" href="/au/signout/">Sign out</a>
             </div>
             `
        
      }
  
      else if(req.session.user=='teacher') {
    
        data+=`
        <div class="p-2  tooltipx btn-hover bg-light btn  rounded">
        <img height="30pc" width="30px" src="/image/default/user.png" alt="">
            
            <div class="tooltipy  bg-light shadow ps-5 pe-5 pt-3 pb-3">
               <a class="nav-link mt-1 btn-hover  text-dark rounded p-1 append-user-profile" href="/teacher/account">My profile</a>
               <a class="nav-link mt-1 btn-hove  text-darkr rounded p-1 append-user-dashboard" href="/teacher/dashboard">Dashboard</a>
               <a class="nav-link mt-1 btn-hover  text-dark rounded p-1" href="/au/signout/">Sign out</a>
            </div>
            `
      }
  
      else if(req.session.user=='student'){
  
        data+= html`
        <div class="p-2  tooltipx btn-hover bg-light btn  rounded">
        <img height="30pc" width="30px" src="/image/default/user.png" alt="">
            <div class="tooltipy  bg-light shadow ps-5 pe-5 pt-3 pb-3">
               <a class="nav-link mt-1 btn-hover  text-dark rounded p-1 append-user-profile" href="/student/account">My profile</a>
               <a class="nav-link mt-1 btn-hover  text-dark rounded p-1 append-user-dashboard" href="/student/dashboard">Dashboard</a>
               <a class="nav-link mt-1 btn-hover  text-dark rounded p-1" href="/au/signout/">Sign out</a>
            </div>
            `
        
      }
  
      else if(req.session.user=='parent'){
        data+=`
        <div class="p-2  tooltipx btn-hover bg-light btn  rounded">
            <img height="30pc" width="30px" src="/image/default/user.png" alt="">
            
            <div class="tooltipy  bg-light shadow ps-5 pe-5 pt-3 pb-3">
               <a class="nav-link mt-1 btn-hover  text-dark rounded p-1 append-user-profile" href="/parent/account">My profile</a>
               <a class="nav-link mt-1 btn-hover  text-dark rounded p-1 append-user-dashboard" href="/parent/dashboard">Dashboard</a>
               <a class="nav-link mt-1 btn-hover  text-dark rounded p-1" href="/au/signout/">Sign out</a>
            </div>
            `
      }
      res.send({data})
     
    }

  }
  


