const {app, express, sqlmap , session} = require("../server")

exports.home_page = (req, res) => {

    sqlmap.query(`SELECT * FROM school_settings WHERE domain='${req.hostname}'`, (err_school, info_school) => {
        if (err_school) console.log(err_school);
        // if(info_school.length>0){
            sqlmap.query(`SELECT COUNT(ID) as count FROM teachers WHERE domain='${req.hostname}'`, (err_teacher, info_teacher) => {
                if (err_teacher) console.log(err_teacher.sqlMessage);
    
                sqlmap.query(`SELECT COUNT(ID) as count FROM students WHERE domain='${req.hostname}'`, (err_student, info_student) => {
                    if (err_student) console.log(err_student.sqlMessage);
    
                    sqlmap.query(`SELECT * FROM headofschool WHERE domain='${req.hostname}'`, (err_headofschool, info_headofschool) => {
                        if (err_headofschool) console.log(err_headofschool.sqlMessage);
    
    
                        sqlmap.query(`SELECT * FROM carousel WHERE domain='${req.hostname}' ORDER BY ID DESC LIMIT 5`, (err_carousel, info_carousel) => {
                            if(err_carousel) console.log(err_carousel.sqlMessage);
                            sqlmap.query(`SELECT COUNT(ID) as count FROM staff WHERE domain='${req.hostname}' ORDER BY ID DESC`, (err_staff, info_staff) => {
                                if(err_staff) console.log(err_staff.sqlMessage);
        
                                sqlmap.query(`SELECT * FROM repository WHERE domain='${req.hostname}' AND  datatype='eventnews' GROUP BY dataid ORDER BY ID DESC LIMIT 6`, (err_repo_e,info_repo_e)=>{
                                    if(err_repo_e) console.log(err_repo_e.sqlMessage);
                                    
                                    sqlmap.query(`SELECT * FROM repository WHERE domain='${req.hostname}' AND  datatype='facilities' GROUP BY dataid ORDER BY ID DESC LIMIT 6`, (err_repo_f,info_repo_f)=>{
                                        if(err_repo_f) console.log(err_repo_f.sqlMessage);
                                        
                                        sqlmap.query(`SELECT * FROM repository WHERE domain='${req.hostname}' AND  datatype='achievement' GROUP BY dataid ORDER BY ID DESC LIMIT 6`, (err_repo_a,info_repo_a)=>{
                                            if(err_repo_a) console.log(err_repo_a.sqlMessage);
                                           
                                            sqlmap.query(`SELECT * FROM repository WHERE domain='${req.hostname}' ORDER BY ID DESC`, (err_repo_have,info_repo_have)=>{
                                                if(err_repo_have) console.log(err_repo_have.sqlMessage);
                                               else {
                                     
                                                 res.render('public/component/home_page', {info_repo_have,info_repo_a, info_repo_e, info_repo_f, info_school, info_staff, info_headofschool, info_teacher, info_student, info_carousel })
                                               }
    
                
                                            })
            
                                        })
        
        
                                    })
            
    
    
                                })
        
                            })
    
                        })
    
                    })
    
                })
    
            })
        // }
    })
}


exports.pu_school_get = (req, res) => {
    sqlmap.query(`SELECT * FROM school_settings WHERE domain='${req.hostname}'`, (err_school, info_school) => {
        if (err_school) console.log(err_school);
        else {
            if(info_school.length>0){
                res.send({ info_school })
            }
        }
    })
}

exports.pu_headofschool_get = (req, res) => {
    sqlmap.query(`SELECT * FROM headofschool WHERE domain='${req.hostname}'`, (err_headofschool, info_headofschool) => {
        if (err_headofschool) console.log(err_headofschool.sqlMessage);
        else res.send({ info_headofschool })
    })
}


exports.au_user_profile_header_nav= (req, res)=>{
  
    if(req.session.userAccess==='privet'){
     var data= '';
      if(req.session.hashUser=='hashAdmin'){

         data+=`
         <a class="p-2 btn  d-none nav-link d-md-block" style="background-color: #043F2E;color:  #C8F169; width: 130px;" href="/admin/dashboard">Dashboard</a>
             `
        
      }
  
      else if(req.session.user=='teacher') {
    
        data+=`
        <a class="p-2 btn  d-none nav-link d-md-block" style="background-color: #043F2E;color:  #C8F169; width: 130px;" href="/teacher/dashboard">Dashboard</a>
        `
      }
  
      else if(req.session.user=='student'){
  
        data+= 
        `
        <a class="p-2 btn  d-none nav-link d-md-block" style="background-color: #043F2E;color:  #C8F169; width: 130px;" href="/student/dashboard">Dashboard</a>

            `
        
      }
  
      else if(req.session.user=='parent'){
        data+=`
        <a class="p-2 btn  d-none nav-link d-md-block" style="background-color: #043F2E;color:  #C8F169; width: 130px;" href="/parent/dashboard">Dashboard</a>
        `
      }  else data+=null;

      res.send({data})
     
    }

  }
  


