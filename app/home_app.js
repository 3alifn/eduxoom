import { app, express, sqlmap, session } from '../server.js';

const home_page = (req, res) => {
    const host = req.hostname.startsWith("www.");
    const hostnameInt = host ? req.hostname.split("www.")[1] : req.hostname;

    sqlmap.query(
        `SELECT * FROM school_settings WHERE domain=?`,
        [hostnameInt],
        (err_school, info_school) => {
            if (err_school) {
                console.log(err_school.sqlMessage);
                return;
            }

            sqlmap.query(
                `SELECT COUNT(ID) as count FROM teachers WHERE domain=?`,
                [hostnameInt],
                (err_teacher, info_teacher) => {
                    if (err_teacher) {
                        console.log(err_teacher.sqlMessage);
                        return;
                    }

                    sqlmap.query(
                        `SELECT COUNT(ID) as count FROM students WHERE domain=?`,
                        [hostnameInt],
                        (err_student, info_student) => {
                            if (err_student) {
                                console.log(err_student.sqlMessage);
                                return;
                            }

                            sqlmap.query(
                                `SELECT * FROM headofschool WHERE domain=?`,
                                [hostnameInt],
                                (err_headofschool, info_headofschool) => {
                                    if (err_headofschool) {
                                        console.log(err_headofschool.sqlMessage);
                                        return;
                                    }

                                    sqlmap.query(
                                        `SELECT * FROM carousel WHERE domain=? ORDER BY ID DESC LIMIT 5`,
                                        [hostnameInt],
                                        (err_carousel, info_carousel) => {
                                            if (err_carousel) {
                                                console.log(err_carousel.sqlMessage);
                                                return;
                                            }

                                            sqlmap.query(
                                                `SELECT COUNT(ID) as count FROM staff WHERE domain=? ORDER BY ID DESC`,
                                                [hostnameInt],
                                                (err_staff, info_staff) => {
                                                    if (err_staff) {
                                                        console.log(err_staff.sqlMessage);
                                                        return;
                                                    }

                                                    sqlmap.query(
                                                        `SELECT * FROM repository WHERE domain=? AND datatype='eventnews' GROUP BY dataid ORDER BY ID DESC LIMIT 6`,
                                                        [hostnameInt],
                                                        (err_repo_e, info_repo_e) => {
                                                            if (err_repo_e) {
                                                                console.log(err_repo_e.sqlMessage);
                                                                return;
                                                            }

                                                            sqlmap.query(
                                                                `SELECT * FROM repository WHERE domain=? AND datatype='facilities' GROUP BY dataid ORDER BY ID DESC LIMIT 6`,
                                                                [hostnameInt],
                                                                (err_repo_f, info_repo_f) => {
                                                                    if (err_repo_f) {
                                                                        console.log(err_repo_f.sqlMessage);
                                                                        return;
                                                                    }

                                                                    sqlmap.query(
                                                                        `SELECT * FROM repository WHERE domain=? AND datatype='achievement' GROUP BY dataid ORDER BY ID DESC LIMIT 6`,
                                                                        [hostnameInt],
                                                                        (err_repo_a, info_repo_a) => {
                                                                            if (err_repo_a) {
                                                                                console.log(err_repo_a.sqlMessage);
                                                                                return;
                                                                            }

                                                                            sqlmap.query(
                                                                                `SELECT * FROM repository WHERE domain=? ORDER BY ID DESC`,
                                                                                [hostnameInt],
                                                                                (err_repo_have, info_repo_have) => {
                                                                                    if (err_repo_have) {
                                                                                        console.log(err_repo_have.sqlMessage);
                                                                                        return;
                                                                                    }

                                                                                    res.render('public/component/home_page', {
                                                                                        info_repo_have,
                                                                                        info_repo_a,
                                                                                        info_repo_e,
                                                                                        info_repo_f,
                                                                                        info_school,
                                                                                        info_staff,
                                                                                        info_headofschool,
                                                                                        info_teacher,
                                                                                        info_student,
                                                                                        info_carousel
                                                                                    });
                                                                                }
                                                                            );
                                                                        }
                                                                    );
                                                                }
                                                            );
                                                        }
                                                    );
                                                }
                                            );
                                        }
                                    );
                                }
                            );
                        }
                    );
                }
            );
        }
    );
};


const pu_school_get = (req, res) => {
    const host = req.hostname.startsWith("www.");
    const hostnameInt = host ? req.hostname.split("www.")[1] : req.hostname;

    sqlmap.query(
        `SELECT * FROM school_settings WHERE domain=?`,
        [hostnameInt],
        (err_school, info_school) => {
            if (err_school) {
                console.log(err_school.sqlMessage);
                return;
            }
            if (info_school.length > 0) {
                res.send({ info_school });
            }
        }
    );
};



const pu_headofschool_get = (req, res) => {
    const host = req.hostname.startsWith("www.");
    const hostnameInt = host ? req.hostname.split("www.")[1] : req.hostname;

    sqlmap.query(
        `SELECT * FROM headofschool WHERE domain=? ORDER BY order_value`,
        [hostnameInt],
        (err_headofschool, info_headofschool) => {
            if (err_headofschool) {
                console.log(err_headofschool.sqlMessage);
                return;
            }
            res.send({ info_headofschool });
        }
    );
};




const au_user_profile_header_nav= (req, res)=>{
  
    if(req.session.userAccess=='privet'){
     
      if(req.session.hashUser=='hashAdmin'){

             res.send({link: '/admin/dashboard/', name: 'Dashboard'})
        
      }
  
      else if(req.session.user=='teacher') {
    
        res.send({link: '/teacher/dashboard/', name: 'Dashboard'})

      }
  
      else if(req.session.user=='student'){
  
        res.send({link: '/student/dashboard/', name: 'Dashboard'})

        
      }
  
      else if(req.session.user=='parent'){

        res.send({link: '/parent/dashboard/', name: 'Dashboard'})

      }  else null;

     
    }

  }
  


export{
    home_page, 
    pu_headofschool_get,
    pu_school_get,
    au_user_profile_header_nav,
    
}