const {app, express, sqlmap , session} = require("../server")


exports.home_page = async (req, res) => {
    try {
        const host = req.hostname.startsWith("www.");
        const hostnameInt = host ? req.hostname.split("www.")[1] : req.hostname;

        const info_school = await queryPromise(`SELECT * FROM school_settings WHERE domain=?`, [hostnameInt]);
        const info_teacher = await queryPromise(`SELECT COUNT(ID) as count FROM teachers WHERE domain=?`, [hostnameInt]);
        const info_student = await queryPromise(`SELECT COUNT(ID) as count FROM students WHERE domain=?`, [hostnameInt]);
        const info_headofschool = await queryPromise(`SELECT * FROM headofschool WHERE domain=?`, [hostnameInt]);
        const info_carousel = await queryPromise(`SELECT * FROM carousel WHERE domain=? ORDER BY ID DESC LIMIT 5`, [hostnameInt]);
        const info_staff = await queryPromise(`SELECT COUNT(ID) as count FROM staff WHERE domain=? ORDER BY ID DESC`, [hostnameInt]);
        const info_repo_e = await queryPromise(`SELECT * FROM repository WHERE domain=? AND datatype='eventnews' GROUP BY dataid ORDER BY ID DESC LIMIT 6`, [hostnameInt]);
        const info_repo_f = await queryPromise(`SELECT * FROM repository WHERE domain=? AND datatype='facilities' GROUP BY dataid ORDER BY ID DESC LIMIT 6`, [hostnameInt]);
        const info_repo_a = await queryPromise(`SELECT * FROM repository WHERE domain=? AND datatype='achievement' GROUP BY dataid ORDER BY ID DESC LIMIT 6`, [hostnameInt]);
        const info_repo_have = await queryPromise(`SELECT * FROM repository WHERE domain=? ORDER BY ID DESC`, [hostnameInt]);
        const info_notice = await queryPromise(`SELECT * FROM notice WHERE domain=? ORDER BY ID DESC LIMIT 5`, [hostnameInt]);

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
            info_carousel,
            info_notice
        });
    } catch (err) {
        console.error(err.sqlMessage || err.message);
    }
};

function queryPromise(sql, params) {
    return new Promise((resolve, reject) => {
        sqlmap.query(sql, params, (err, results) => {
            if (err) {
                return reject(err);
            }
            resolve(results);
        });
    });
}


exports.pu_school_get = (req, res) => {
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



exports.pu_headofschool_get = (req, res) => {
    const host = req.hostname.startsWith("www.");
    const hostnameInt = host ? req.hostname.split("www.")[1] : req.hostname;

    sqlmap.query(
        `SELECT * FROM headofschool WHERE domain=?`,
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




exports.au_user_profile_header_nav= (req, res)=>{
  
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
  


