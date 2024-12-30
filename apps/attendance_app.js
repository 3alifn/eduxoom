const { render } = require("ejs")
const {app, express, dotenv, nodemailer, mysql, sqlmap, session, createHmac, randomBytes} = require("../configs/server")
const { log } = require("sharp/lib/libvips")

exports.teacher_attn_init_page= (req, res)=>{

    res.render('attn/attn_init_page_teacher')

}



exports.teacher_attn_post_page = (req, res) => {
    const { class_name, section_name } = req.params;

    sqlmap.query(
        `SELECT ID, student_id, student_uuid FROM students WHERE domain=? AND class=? AND section=? GROUP BY student_id ORDER BY roll`,
        [res.locals.hostname, class_name, section_name],
        (errS, infoS) => {
            if (errS) {
                console.log(errS.sqlMessage);
                return;
            }

            const infoSLen = infoS.length;

            sqlmap.query(
                `SELECT ID, student_id, student_uuid, avatar, name, roll FROM students WHERE domain=? AND class=? AND section=? GROUP BY student_id ORDER BY roll LIMIT 20 OFFSET 0`,
                [res.locals.hostname, class_name, section_name],
                (err, info) => {
                    if (err) {
                        console.log(err.sqlMessage);
                        return;
                    }
                    res.render('attn/attn_post_page_teacher', { info, infoS, infoSLen, class_name, section_name });
                }
            );
        }
    );
};



exports.teacher_attn_post_page_num = (req, res) => {
    const { class_name, section_name, offset } = req.body;

    sqlmap.query(
        `SELECT ID, student_id, student_uuid, avatar, name, roll FROM students WHERE domain=? AND class=? AND section=? GROUP BY student_id ORDER BY roll LIMIT 20 OFFSET ?`,
        [res.locals.hostname, class_name, section_name, offset * 20],
        (err, info) => {
            if (err) {
                console.log(err.sqlMessage);
                return;
            }

            if (info.length > 0) {
                let htmldata = '';
                for (let index = 0; index < info.length; index++) {
                    htmldata += `
                    <div class="student-card findcard pt-3 pb-3 shadowx">
                    <div class="d-flex  justify-content-start align-content-center align-items-center">
                    <img class="rounded-circle border border-1 p-1" height="60px" width="60px" src="/assets/images/student/resized/${info[index].avatar}" alt="">
                    <p class="fw-semibold text-muted ps-1"> ${info[index].roll}</p>
                    <p class="fw-semibold text-muted ps-2  text-truncate">${info[index].name}</p>
                
                    </div>
            
                    <div class="d-flex p-1  justify-content-center align-content-center align-items-center">
                
                    <code>Last checkout</code>
                    <code class="checkout_${info[index].student_id} ps-1">
                    <span class="spinner-border spinner-border-sm"></span>
                    </code>
                    
                </div>

                    <div class="d-flex  justify-content-center align-content-center align-items-center">
                    <button onclick="att_post_def('${info[index].student_id}', '${info[index].name}', '${info[index].roll}', '${info[index].avatar}', 0)"
                    
                    class="0_${info[index].student_id} btn btn-light fw-semibold text-danger bi bi-calendar-x border border-3 btn-sm pt-0 pb-0 fw-semibold">Absent</button>
                
                    <button onclick="att_post_def('${info[index].student_id}', '${info[index].name}', '${info[index].roll}', '${info[index].avatar}', 1)"
                    
                    class="1_${info[index].student_id} btn btn-light fw-semibold text-primary bi bi-calendar-check  border border-3 btn-sm pt-0 pb-0 ms-1 fw-semibold">Present</button>
                </div>

                </div>`;
                }
                res.send({ htmldata });
            } else {
                res.send({ htmldata: 404 });
            }
        }
    );
};




exports.teacher_attn_post = (req, res) => {
    const { class_name, section_name, student_id, name, roll, avatar, checkout } = req.body;
    const today = new Date(); 
    const currentDate = today.getDate();
    const currentMonth = today.getMonth();
    const currentYear = today.getFullYear();
    const get_cal = currentMonth + '-' + currentYear;
    const myMonth = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];
    const find_date = `${myMonth[currentMonth]}-${currentDate}-${currentMonth + 1}-${currentYear}`;
    const attn_date = today.toDateString();
    const duplicate_data = student_id + "_" + attn_date;
    const at_status = checkout == 1 ? 'present' : 'absent';

    sqlmap.query(
        `SELECT user_id, find_date, attn_date FROM attn_record WHERE domain=? AND user=? AND user_id=? AND find_date=? ORDER BY id DESC`,
        [res.locals.hostname, 'Student', student_id, find_date],
        (errf, find) => {
            if (errf) {
                console.log(errf.sqlMessage);
                return;
            }

            if (find.length > 0) {
                sqlmap.query(
                    `UPDATE attn_record SET checkout=?, at_status=? WHERE domain=? AND user=? AND user_id=? AND find_date=?`,
                    [checkout, at_status, res.locals.hostname, 'Student', student_id, find_date],
                    (erru, up) => {
                        if (erru) {
                            console.log(erru.sqlMessage);
                            return;
                        }
                        student_rank_mark_attn(res.locals.hostname, class_name, section_name, student_id, at_status);
                        res.send({ att: true });
                    }
                );
                
            } else {
                sqlmap.query(
                    `INSERT INTO attn_record (domain, session, duplicate_data, menual, user, get_cal, attn_date, find_date, checkout, at_status, class, section, user_id, name, roll, avatar, year, month, day)
                     VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)`,
                    [res.locals.hostname, currentYear, duplicate_data, 1, 'Student', get_cal, attn_date, find_date, checkout, at_status, class_name, section_name, student_id, name, roll, avatar, currentYear, currentMonth, currentDate],
                    (erri, inser) => {
                        if (erri) {
                            console.log(erri.sqlMessage);
                            return;
                        }
                        student_rank_mark_attn(res.locals.hostname, class_name, section_name, student_id, at_status);
                        res.send({ att: true });
                    }
                );
            }
        }
    );
};



   exports.teacher_attn_checkout = (req, res) => {
    const { class_name, section_name } = req.body;
    const attn_date = new Date().toDateString();

    sqlmap.query(
        `SELECT user_id, checkout, attn_date FROM attn_record WHERE domain=? AND user='Student' AND class=? AND section=? AND attn_date=?`,
        [res.locals.hostname, class_name, section_name, attn_date],
        (err, info) => {
            if (err) {
                console.log(err.sqlMessage);
                return;
            }
            res.send({ info });
        }
    );
};



   exports.teacher_attn_checkout_last_five = (req, res) => {
    const { class_name, section_name, student_id } = req.body;

    sqlmap.query(
        `SELECT user_id, checkout, attn_date FROM attn_record WHERE domain=? AND class=? AND section=? AND user_id=? ORDER BY at_date LIMIT 5`,
        [res.locals.hostname, class_name, section_name, student_id],
        (err, info) => {
            if (err) {
                console.log(err.sqlMessage);
                return;
            }
            res.send({ info });
        }
    );
};




exports.privet_attn_init_page= (req, res)=>{

    res.render('attn/attn_init_page_privet')

}


exports.privet_attn_repo_page = (req, res) => {
    const { class_name, section_name } = req.params;
    const attn_date = new Date().toDateString();

    sqlmap.query(
        `SELECT user_id, attn_date FROM attn_record WHERE domain=? AND class=? AND section=? ORDER BY at_date DESC LIMIT 1`,
        [res.locals.hostname, class_name, section_name],
        (errf, infof) => {
            if (errf) {
                console.log(errf.sqlMessage);
                return;
            }

            if (infof.length > 0) {
                const get_attn_date = infof[0].attn_date;
                sqlmap.query(
                    `SELECT id, user_id, avatar, name, roll, checkout, at_status FROM attn_record WHERE domain=? AND class=? AND section=? AND attn_date=? GROUP BY user_id ORDER BY roll LIMIT 20 OFFSET 0`,
                    [res.locals.hostname, class_name, section_name, get_attn_date],
                    (err, info) => {
                        if (err) {
                            console.log(err.sqlMessage);
                            return;
                        }
                        res.render('attn/attn_repo_page_privet', { info, get_attn_date, class_name, section_name });
                    }
                );
            } else {
                res.redirect('/pages/empty.html');
            }
        }
    );
};




exports.privet_attn_repo_page_num = (req, res) => {
    const { class_name, section_name, offset, find_date } = req.body; 
    const attn_date = find_date;
    
    sqlmap.query(
        `SELECT id, user_id, avatar, name, checkout, at_status, roll FROM attn_record WHERE domain=? AND class=? AND section=? AND attn_date=? GROUP BY user_id ORDER BY roll LIMIT 20 OFFSET ?`,
        [res.locals.hostname, class_name, section_name, attn_date, offset * 20],
        (err, info) => {
            if (err) {
                console.log(err.sqlMessage);
                return;
            }
            
            if (info.length > 0) {
                let htmldata = '';
                for (let index = 0; index < info.length; index++) {
                    htmldata += ` 
                    <a href="/privet/attn/student/calendar/${class_name}/${section_name}/${info[index].user_id}">
                    <div class="student-card findcard pt-1 pb-1 shadowx">
                    <div class="d-flex  justify-content-start align-content-center align-items-center">
                 
                      <img class="rounded-circle border border-1 p-1" height="60px" width="60px" src="/assets/images/student/resized/${info[index].avatar}" alt="">
                      <p class="fw-semibold text-muted ps-1">${info[index].roll}</p>
                      <p class="fw-semibold text-muted ps-2  text-truncate">${info[index].name}</p>
                  
                      </div>
                      <code class="p-2 link-hover">History</code> 
                      <div class="d-flex  justify-content-center align-content-center align-items-center">
                      <p class="border fw-semibold border-1 bi ${info[index].checkout == 1 ? 'text-primary bi-calendar-check' : 'text-danger bi-calendar-x'} pt-0 pb-0 ps-1 pe-1 rounded ms-1 fw-semibold">
                      ${info[index].at_status}
                    </p>  
                          </div>
                  
                    </div>
                    </a>`;
                }
                res.send({ htmldata });
            } else {
                res.send({ htmldata: 404 });
            }
        }
    );
}

exports.privet_attn_repo_find = (req, res) => {
    const { class_name, section_name, find_date } = req.body; 
    const attn_date = find_date;
    
    sqlmap.query(
        `SELECT id, user_id, avatar, name, checkout, at_status, roll FROM attn_record WHERE domain=? AND class=? AND section=? AND attn_date=? GROUP BY user_id ORDER BY roll LIMIT 20 OFFSET 0`,
        [res.locals.hostname, class_name, section_name, attn_date],
        (err, info) => {
            if (err) {
                console.log(err.sqlMessage);
                return;
            }
            
            if (info.length > 0) {
                let htmldata = '';
                for (let index = 0; index < info.length; index++) {
                    htmldata += ` 
                    <a href="/privet/attn/student/calendar/${class_name}/${section_name}/${info[index].user_id}">         
                    <div class="student-card findcard pt-1 pb-1 shadowx">
                    <div class="d-flex  justify-content-start align-content-center align-items-center">
                 
                      <img class="rounded-circle border border-1 p-1" height="60px" width="60px" src="/assets/images/student/resized/${info[index].avatar}" alt="">
                      <p class="fw-semibold text-muted ps-1">${info[index].roll}</p>
                      <p class="fw-semibold text-muted ps-2  text-truncate">${info[index].name}</p>
                  
                      </div>
                      <code class="p-2 link-hover">History</code> 
              
                      <div class="d-flex  justify-content-center align-content-center align-items-center">
                      <p class="border fw-semibold border-1 bi ${info[index].checkout == 1 ? 'text-primary bi-calendar-check' : 'text-danger bi-calendar-x'} pt-0 pb-0 ps-1 pe-1 rounded ms-1 fw-semibold">
                      ${info[index].at_status}
                    </p>  
                          </div>
                  
                    </div>`;
                }
                res.send({ htmldata });
            } else {
                res.send({ htmldata: 404 });
            }
        }
    );
}




   exports.privet_attn_student_calendar = (req, res) => {
    const { class_name, section_name, student_id } = req.params;

    sqlmap.query(
        `SELECT id, user_id, avatar, name, roll, checkout, at_status FROM attn_record WHERE domain=? AND class=? AND section=? AND user_id=?`,
        [res.locals.hostname, class_name, section_name, student_id],
        (err, info) => {
            if (err) {
                console.log(err.sqlMessage);
                return;
            }

            if (info.length > 0) {
                res.render('attn/attn_record_calendar_privet', { info, class_name, section_name, student_id });
            } else {
                res.redirect('/pages/empty.html');
            }
        }
    );
};

   


   exports.privet_attn_calendar_checkout = (req, res) => {
    const { class_name, section_name, student_id, get_cal } = req.body;

    sqlmap.query(
        `SELECT COUNT(CASE checkout WHEN 1 THEN 1 ELSE null END) AS present, COUNT(CASE checkout WHEN 0 THEN 1 ELSE null END) AS absent FROM attn_record WHERE domain=? AND class=? AND section=? AND user_id=? AND get_cal=?`,
        [res.locals.hostname, class_name, section_name, student_id, get_cal],
        (errc, cal) => {
            if (errc) {
                console.log(errc.sqlMessage);
                return;
            }
            
            const present = cal[0].present;
            const absent = cal[0].absent;

            sqlmap.query(
                `SELECT find_date, get_cal, checkout FROM attn_record WHERE domain=? AND class=? AND section=? AND user_id=? AND get_cal=? ORDER BY day`,
                [res.locals.hostname, class_name, section_name, student_id, get_cal],
                (err, info) => {
                    if (err) {
                        console.log(err.sqlMessage);
                        return;
                    }

                    if (info.length > 0) {
                        res.send({ info, present, absent });
                    } else {
                        res.send({ info: 404 });
                    }
                }
            );
        }
    );
};







function student_rank_mark_attn(domain, class_name, section_name, student_id, at_status) {
    sqlmap.query(
        `SELECT ${at_status} FROM student_rank WHERE domain=? AND class=? AND section=? AND student_id=? ORDER BY ${at_status} DESC LIMIT 1`,
        [domain, class_name, section_name, student_id],
        (errf, infof) => {
            if (errf) {
                console.log(errf.sqlMessage + ' errf');
                return;
            }

            if (infof.length > 0) {
                let marked;
                if (at_status == 'present') {
                    marked = infof[0].present == undefined ? 1 : parseFloat(infof[0].present) + 1;
                } else {
                    marked = infof[0].absent == undefined ? 1 : parseFloat(infof[0].absent) + 1;
                }

                sqlmap.query(
                    `UPDATE student_rank SET ${at_status}=? WHERE domain=? AND class=? AND section=? AND student_id=?`,
                    [marked, domain, class_name, section_name, student_id],
                    (erru, infou) => {
                        if (erru) {
                            console.log(erru.sqlMessage + ' erru');
                            return;
                        }
                    }
                );
            }
        }
    );
}
