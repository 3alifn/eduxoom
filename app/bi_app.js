const {app, express, dotenv, nodemailer, mysql, sqlmap, multer, session, createHmac, randomBytes} = require("../server")
var regexTelephone= /^01[0-9]*$/
var regexNumber= /^[0-9]*$/
var regexString= /^[A-Za-z .-_]*$/
var regexBi= /^[A-Za-z0-9-_]*$/
var regexPassword= /^[a-zA-Z0-9!@#$%&*]*$/
var regexEmail= /^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/ 
const chapter_six= require('../chapter_api')


exports.teacher_bi_info= (req, res)=>{
    const {ID}= req.body;
sqlmap.query(`SELECT * FROM ini_bi_catagory WHERE domain='${req.cookies["hostname"]}' AND  ID=${ID}`, (err, info)=>{
    if(err) console.log(err.sqlMessage);
    const data= `<p>${info[0].catagory_name}</p>`
    res.send({data})
})
}



exports.admin_bi_catagory_post = (req, res) => {
    const { catagory_name } = req.body;
    const session = new Date().getUTCFullYear();

    for (let index = 0; index < catagory_name.length; index++) {
        const randomString = randomBytes(10).toString('hex');
        const sql = `INSERT INTO bi_catagory (session, domain, catagory_name, catagory_code) VALUES (?, ?, ?, ?)`;

        sqlmap.query(sql, [session, req.cookies["hostname"], catagory_name[index], randomString], (err, post) => {
            if (err) {
                console.log(err.sqlMessage);
            }
        });
    }

    res.send({ msg: 'Adding successfully!' });
};

    


exports.admin_bi_catagory_get = (req, res) => {
    const sql = `SELECT * FROM ini_bi_catagory GROUP BY catagory_code ORDER BY ID`;

    sqlmap.query(sql, (err, info) => {
        if (err) {
            console.log(err.sqlMessage);
            return;
        }

        let tbody_data = '';
        for (let index = 0; index < info.length; index++) {
            tbody_data += `
            <tr>
                <td> 
                    <textarea class="_inputbox-${info[index].ID}" disabled placeholder="catagory name" cols="40" rows="5">${info[index].catagory_name}</textarea>
                </td>
                <td> 
                    <span class="_penbox-sm-area-${info[index].ID}">
                        <button data-id="${info[index].ID}" onclick="_penbox_sm_pull(${info[index].ID})" class="btn disabled edit-btn"><i class="bi bi-pen-fill"></i></button>
                    </span>   
                    <span class="_delbox-sm-area-${info[index].ID}">
                        <button data-id="${info[index].ID}" onclick="_delbox_sm_pull(${info[index].ID})" class="btn disabled"><i class="bi bi-trash-fill"></i></button>
                    </span>
                </td>
            </tr>`;
        }

        res.send({ tbody_data });
    });
};




exports.admin_bi_catagory_update_post = (req, res) => {
    const { catagory_id, catagory_name } = req.body;
    const sql = `UPDATE bi_catagory SET catagory_name=? WHERE domain=? AND ID=?`;

    sqlmap.query(sql, [catagory_name, req.cookies["hostname"], catagory_id], (err, done) => {
        if (err) {
            console.log(err.sqlMessage);
            return;
        }

        res.send({ msg: 'successfully!' });
    });
};



exports.admin_bi_catagory_delete = (req, res) => {
    const { catagory_id } = req.body;
    const sql = `DELETE FROM bi_catagory WHERE domain=? AND ID=?`;

    sqlmap.query(sql, [req.cookies["hostname"], catagory_id], (err, done) => {
        if (err) {
            console.log(err.sqlMessage);
            return;
        }

        res.send({ msg: 'successfully!' });
    });
};






// exports.teacher_bi_page_mark_get= (req, res)=>{
//     const teacher_uuid= req.session.teacher_uuid; 
//     const {className, sectionName, page}= req.params; if(page==1) var offset=0; else var offset=page-1; const limit=20; 

//     sqlmap.query(`SELECT * FROM ini_bi_catagory GROUP BY catagory_name ORDER BY ID`, (err_catagory, infoCatagory)=>{
//         if(err_catagory) console.log(err_catagory.sqlMessage);

//         sqlmap.query(`SELECT COUNT(student_uuid) as student_row FROM students WHERE domain='${req.cookies["hostname"]}' AND  class='${className}' AND section='${sectionName}'`
//        ,(err_row, count_row)=>{
//          if(err_row) console.log(err_row.sqlMessage);
//         const student_row= count_row[0].student_row;
//         const pagination= student_row / limit 
//         if(Math.ceil(pagination)==page) var nextbtnstatus= 'disabled'; else nextbtnstatus=''
//         if(page==1) var prevbtnstatus= 'disabled';  else prevbtnstatus=''
//         sqlmap.query(`SELECT * FROM students WHERE domain='${req.cookies["hostname"]}' AND  class='${className}' AND section='${sectionName}'
//          ORDER BY roll LIMIT ${limit} OFFSET ${offset*limit}`
//         ,(errStudent, infoStudentData)=>{
    
//         if(infoStudentData.length>0){
//             const infoStudent= infoStudentData;
//             res.render('bi/bi-page-mark-teacher', {infoStudent, infoCatagory, pagination, page, nextbtnstatus, prevbtnstatus, className, sectionName, teacher_uuid})
//         }
//         else res.redirect('/pages/empty.html')
    
    
//         })

//         })

        
//     })
// }


exports.teacher_bi_page_mark_get = (req, res) => {
    const teacher_uuid = req.session.teacher_uuid;
    const { className, sectionName, page } = req.params;
    const limit = 20;
    const offset = (page == 1) ? 0 : (page - 1) * limit;

    const sqlCatagory = `SELECT * FROM ini_bi_catagory GROUP BY catagory_name ORDER BY ID`;
    sqlmap.query(sqlCatagory, (err_catagory, infoCatagory) => {
        if (err_catagory) {
            console.log(err_catagory.sqlMessage);
            return;
        }

        const sqlCount = `SELECT COUNT(student_uuid) as student_row FROM students WHERE domain=? AND class=? AND section=?`;
        sqlmap.query(sqlCount, [req.cookies["hostname"], className, sectionName], (err_row, count_row) => {
            if (err_row) {
                console.log(err_row.sqlMessage);
                return;
            }

            const student_row = count_row[0].student_row;
            const pagination = Math.ceil(student_row / limit);
            const nextbtnstatus = (pagination == page) ? 'disabled' : '';
            const prevbtnstatus = (page == 1) ? 'disabled' : '';

            const sqlStudents = `SELECT * FROM students WHERE domain=? AND class=? AND section=? ORDER BY roll LIMIT ? OFFSET ?`;
            sqlmap.query(sqlStudents, [req.cookies["hostname"], className, sectionName, limit, offset], (errStudent, infoStudentData) => {
                if (errStudent) {
                    console.log(errStudent.sqlMessage);
                    return;
                }

                if (infoStudentData.length > 0) {
                    const infoStudent = infoStudentData;
                    res.render('bi/bi-page-mark-teacher', { infoStudent, infoCatagory, pagination, page, nextbtnstatus, prevbtnstatus, className, sectionName, teacher_uuid });
                } else {
                    res.redirect('/pages/empty.html');
                }
            });
        });
    });
};



exports.teacher_bi_report_get = (req, res) => {
    const teacher_uuid = req.session.teacher_uuid;
    const { className, sectionName, page } = req.params;
    const limit = 20;
    const offset = page == 1 ? 0 : (page - 1) * limit;

    const sqlCatagory = `SELECT * FROM ini_bi_catagory ORDER BY ID`;
    sqlmap.query(sqlCatagory, (err_catagory, infoCatagory) => {
        if (err_catagory) {
            console.log(err_catagory.sqlMessage);
            return;
        }

        const sqlCount = `SELECT COUNT(student_uuid) as student_row FROM bi_mark WHERE domain=? AND class=? AND section=? AND teacher_uuid=? GROUP BY student_uuid`;
        sqlmap.query(sqlCount, [req.cookies["hostname"], className, sectionName, teacher_uuid], (err_row, count_row) => {
            if (err_row) {
                console.log(err_row.sqlMessage);
                return;
            }

            if (count_row.length > 0) {
                const student_row = count_row[0].student_row;
                const pagination = Math.ceil(student_row / limit);
                const nextbtnstatus = pagination == page ? 'disabled' : '';
                const prevbtnstatus = page == 1 ? 'disabled' : '';

                const sqlStudents = `SELECT * FROM bi_mark WHERE domain=? AND class=? AND section=? AND teacher_uuid=? GROUP BY student_uuid ORDER BY ID LIMIT ? OFFSET ?`;
                sqlmap.query(sqlStudents, [req.cookies["hostname"], className, sectionName, teacher_uuid, limit, offset], (errStudent, infoStudentData) => {
                    if (errStudent) {
                        console.log(errStudent.sqlMessage);
                        return;
                    }

                    if (infoStudentData.length > 0) {
                        const infoStudent = infoStudentData;
                        res.render('bi/bi-page-report-teacher', { infoStudent, infoCatagory, pagination, page, nextbtnstatus, prevbtnstatus, className, sectionName, teacher_uuid });
                    } else {
                        res.redirect('/pages/empty.html');
                    }
                });
            } else {
                res.redirect('/pages/empty.html');
            }
        });
    });
};



const teacher_bi_transcript_post = (domain, teacher_uuid, roll, className, sectionName, bi_no, bi_group, catagory, bi, student_uuid, name, checkout) => {
    const session = new Date().getUTCFullYear();

    const checkQuery = `SELECT * FROM bi_transcript WHERE domain=? AND teacher_uuid=? AND student_uuid=? AND class=? AND section=? AND catagory=?`;
    const insertQuery = `INSERT INTO bi_transcript (domain, session, class, section, bi_no, bi_group, teacher_uuid, student_uuid, roll, name, catagory, bi, checkout) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)`;

    sqlmap.query(checkQuery, [domain, teacher_uuid, student_uuid, className, sectionName, catagory], (errCheck, infoCheck) => {
        if (errCheck) {
            console.log(errCheck.sqlMessage);
            return;
        }

        if (!infoCheck || infoCheck.length == 0) {
            sqlmap.query(insertQuery, [domain, session, className, sectionName, bi_no, bi_group, teacher_uuid, student_uuid, roll, name, catagory, bi, checkout], (errPost, nextPost) => {
                if (errPost) {
                    console.log(errPost.sqlMessage);
                    return;
                }

                // Assuming teacher_bi_transcript_post_update is defined elsewhere
                teacher_bi_transcript_post_update(domain, className, sectionName, student_uuid);
            });
        } else {
            console.log('Already exists!');
        }
    });
};





const teacher_bi_transcript_post_update = (domain, className, sectionName, student_uuid) => {
    sqlmap.query(`SELECT * FROM ini_bi_catagory GROUP BY catagory_name ORDER BY ID`, (err_catagory, infoCatagory) => {
        if (err_catagory) {
            console.log(err_catagory.sqlMessage);
            return;
        }

        infoCatagory.forEach(catagory => {
            sqlmap.query(`SELECT count(bi) as bi FROM bi_transcript WHERE domain=? AND class=? AND section=? AND student_uuid=? AND catagory=? AND bi=-1`,
                [domain, className, sectionName, student_uuid, catagory.catagory_code],
                (err_bi_danger, info_bi_danger) => {
                    if (err_bi_danger) {
                        console.log(err_bi_danger.sqlMessage);
                        return;
                    }

                    sqlmap.query(`SELECT count(bi) as bi FROM bi_transcript WHERE domain=? AND class=? AND section=? AND student_uuid=? AND catagory=? AND bi=0`,
                        [domain, className, sectionName, student_uuid, catagory.catagory_code],
                        (err_bi_warning, info_bi_warning) => {
                            if (err_bi_warning) {
                                console.log(err_bi_warning.sqlMessage);
                                return;
                            }

                            sqlmap.query(`SELECT count(bi) as bi FROM bi_transcript WHERE domain=? AND class=? AND section=? AND student_uuid=? AND catagory=? AND bi=1`,
                                [domain, className, sectionName, student_uuid, catagory.catagory_code],
                                (err_bi_success, info_bi_success) => {
                                    if (err_bi_success) {
                                        console.log(err_bi_success.sqlMessage);
                                        return;
                                    }

                                    let bg_color = 'bg-danger';
                                    let bi_point = -1;

                                    if (info_bi_success[0].bi >= info_bi_warning[0].bi && info_bi_success[0].bi >= info_bi_danger[0].bi) {
                                        bg_color = 'bg-success';
                                        bi_point = 1;
                                    } else if (info_bi_warning[0].bi >= info_bi_danger[0].bi) {
                                        bg_color = 'bg-warning';
                                        bi_point = 0;
                                    }

                                    sqlmap.query(`UPDATE bi_transcript SET bi_point=?, bg_color=? WHERE domain=? AND student_uuid=? AND catagory=?`,
                                        [bi_point, bg_color, domain, student_uuid, catagory.catagory_code],
                                        (errUpdate, infoUpdate) => {
                                            if (errUpdate) {
                                                console.log(errUpdate.sqlMessage);
                                            }
                                        });
                                });
                        });
                });
        });
    });
};



exports.teacher_bi_mark_post = (req, res) => {
    const teacher_uuid = req.session.teacher_uuid;
    const session = new Date().getUTCFullYear();
    const domain = req.cookies["hostname"];
    const { className, sectionName, bi_no, bi, student_uuid, roll, name, avatar, catagory, checkout, bg_color } = req.body;

    let bi_group;
    if (['1', '2', '9', '10'].includes(bi_no)) {
        bi_group = 'gp1';
    } else if (['3', '4', '5', '6'].includes(bi_no)) {
        bi_group = 'gp2';
    } else {
        bi_group = 'gp3';
    }

    const checkQuery = `SELECT * FROM bi_mark WHERE domain=? AND teacher_uuid=? AND class=? AND section=? AND student_uuid=? AND catagory=?`;
    const insertQuery = `INSERT INTO bi_mark (domain, session, class, section, bi_no, bi_group, teacher_uuid, student_uuid, roll, name, avatar, catagory, bi, checkout, bg_color)
                         VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)`;

    sqlmap.query(checkQuery, [domain, teacher_uuid, className, sectionName, student_uuid, catagory], (errCheck, infoCheck) => {
        if (errCheck) {
            console.log(errCheck.sqlMessage);
            return;
        }

        if (!infoCheck || infoCheck.length == 0) {
            sqlmap.query(insertQuery, [domain, session, className, sectionName, bi_no, bi_group, teacher_uuid, student_uuid, roll, name, avatar, catagory, bi, checkout, bg_color], (errPost, nextPost) => {
                if (errPost) {
                    console.log(errPost.sqlMessage);
                    return;
                }

                teacher_bi_transcript_post(domain, teacher_uuid, roll, className, sectionName, bi_no, bi_group, catagory, bi, student_uuid, name, checkout);
                res.send({ msg: 'success' });
            });
        } else {
            console.log('Already exists!');
        }
    });
};







// exports.admin_bi_transcript_report_checkout=(req, res)=>{
//     const {className,sectionName, student_uuid}= req.body;
//     const domain= req.cookies["hostname"];
//     teacher_bi_transcript_post_update(domain, className, sectionName, student_uuid)

//     sqlmap.query(`SELECT * FROM ini_bi_catagory GROUP BY catagory_name ORDER BY ID`, (err_catagory, infoCatagory)=>{
   
//         sqlmap.query(`SELECT bi_group, bi_point, bi_no, ID  FROM bi_transcript WHERE domain='${req.cookies["hostname"]}' AND  class='${className}' AND section='${sectionName}' 
//         AND student_uuid='${student_uuid}' AND bi_group='gp1' GROUP BY bi_no ORDER BY ID DESC`,
//     (errg01, infog01)=>{
        
//         sqlmap.query(`SELECT bi_group, bi_point, bi_no, ID  FROM bi_transcript WHERE domain='${req.cookies["hostname"]}' AND  class='${className}' AND section='${sectionName}'
//          AND student_uuid='${student_uuid}' AND bi_group='gp2' GROUP BY bi_no ORDER BY ID DESC`,
//         (errg02, infog02)=>{
            
            
//             sqlmap.query(`SELECT bi_group, bi_point, bi_no, ID  FROM bi_transcript WHERE domain='${req.cookies["hostname"]}' AND  class='${className}' AND section='${sectionName}' 
//             AND student_uuid='${student_uuid}' AND bi_group='gp3' GROUP BY bi_no ORDER BY ID DESC`,
//             (errg03, infog03)=>{
           
//                 if(infog01.length>0){
//                  var tempgp01= [];
//                  for (const key in infog01) {
//                     tempgp01.push((infog01[key].bi_point));
//                 }
                
//                var get_gp01=  tempgp01.reduce((a, b)=>{
//                    return a+=b;
//                 })
// // ................
//                 }
                
//                 if(infog02.length>0){
//                  var tempgp02= [];
//                  for (const key in infog02) {
//                     tempgp02.push((infog02[key].bi_point));
//                 }
                
//                var get_gp02=  tempgp02.reduce((a, b)=>{
//                    return a+=b;
//                 })
// // .................
//                 }

//                 if(infog03.length>0){
//                  var tempgp03= [];
                    
                       
       
//                 for (const key in infog03) {
//                     tempgp03.push((infog03[key].bi_point));
//                 }
                
//                var get_gp03=  tempgp03.reduce((a, b)=>{
//                    return a+=b;
//                 })
               
//                 }
         
                   
//                 const gp01v= (((get_gp01)/4)*100);
//                 const gp02v= (((get_gp02)/4)*100);
//                 const gp03v= (((get_gp03)/2)*100);
//                 // console.log('bi =>', gp01v, gp02v, gp03v);
//                if(gp01v==100){
//                 var gp01= 7;
//                } 
//                else if(gp01v>=50){
//                 var gp01= 6;
//                } 
//                else if(gp01v>=25){
//                 var gp01= 5;
//                }
//                else if(gp01v>=0){
//                 var gp01= 4;
//                }
//                else if(gp01v>=-25){
//                 var gp01= 3;

//                } else if(gp01v>=-50){
//                 var gp01= 2;

//                }else if(gp01v>=-100){
//                 var gp01= 1;

//                } else {

//                 var gp01= null;

//                }


                      
//                if(gp02v==100){
//                 var gp02= 7;
//                } 
//                else if(gp02v>=50){
//                 var gp02= 6;
//                } 
//                else if(gp02v>=25){
//                 var gp02= 5;
//                }
//                else if(gp02v>=0){
//                 var gp02= 4;
//                }
//                else if(gp02v>=-25){
//                 var gp02= 3;

//                } else if(gp02v>=-50){
//                 var gp02= 2;

//                }else if(gp02v>=-100){
//                 var gp02= 1;

//                } else {

//                 var gp02= null;

//                }




                      
//                if(gp03v==100){
//                 var gp03= 7;
//                } 
//                else if(gp03v>=50){
//                 var gp03= 6;
//                } 
//                else if(gp03v>=25){
//                 var gp03= 5;
//                }
//                else if(gp03v>=0){
//                 var gp03= 4;
//                }
//                else if(gp03v>=-25){
//                 var gp03= 3;

//                } else if(gp03v>=-50){
//                 var gp03= 2;

//                }else if(gp03v>=-100){
//                 var gp03= 1;

//                } else {

//                 var gp03= null;

//                }
//                 res.send({gp01, gp02, gp03})

//             })
    
//         })

//     });
    
   
//     })
// }




exports.admin_bi_transcript_report_checkout = (req, res) => {
    const { className, sectionName, student_uuid } = req.body;
    const domain = req.cookies["hostname"];
    teacher_bi_transcript_post_update(domain, className, sectionName, student_uuid);

    const sqlCatagory = `SELECT * FROM ini_bi_catagory GROUP BY catagory_name ORDER BY ID`;

    sqlmap.query(sqlCatagory, (err_catagory, infoCatagory) => {
        if (err_catagory) {
            console.log(err_catagory.sqlMessage);
            return;
        }

        const sqlGroup1 = `SELECT bi_group, bi_point, bi_no, ID FROM bi_transcript WHERE domain=? AND class=? AND section=? AND student_uuid=? AND bi_group='gp1' GROUP BY bi_no ORDER BY ID DESC`;
        const sqlGroup2 = `SELECT bi_group, bi_point, bi_no, ID FROM bi_transcript WHERE domain=? AND class=? AND section=? AND student_uuid=? AND bi_group='gp2' GROUP BY bi_no ORDER BY ID DESC`;
        const sqlGroup3 = `SELECT bi_group, bi_point, bi_no, ID FROM bi_transcript WHERE domain=? AND class=? AND section=? AND student_uuid=? AND bi_group='gp3' GROUP BY bi_no ORDER BY ID DESC`;

        sqlmap.query(sqlGroup1, [domain, className, sectionName, student_uuid], (errg01, infog01) => {
            if (errg01) {
                console.log(errg01.sqlMessage);
                return;
            }

            sqlmap.query(sqlGroup2, [domain, className, sectionName, student_uuid], (errg02, infog02) => {
                if (errg02) {
                    console.log(errg02.sqlMessage);
                    return;
                }

                sqlmap.query(sqlGroup3, [domain, className, sectionName, student_uuid], (errg03, infog03) => {
                    if (errg03) {
                        console.log(errg03.sqlMessage);
                        return;
                    }

                    const getGroupPoints = (infoGroup, divider) => {
                        if (infoGroup.length > 0) {
                            const tempGroup = infoGroup.map(item => item.bi_point);
                            return tempGroup.reduce((a, b) => a + b, 0) / divider * 100;
                        }
                        return 0;
                    };

                    const gp01v = getGroupPoints(infog01, 4);
                    const gp02v = getGroupPoints(infog02, 4);
                    const gp03v = getGroupPoints(infog03, 2);

                    const calculateGP = (gpv) => {
                        if (gpv == 100) return 7;
                        if (gpv >= 50) return 6;
                        if (gpv >= 25) return 5;
                        if (gpv >= 0) return 4;
                        if (gpv >= -25) return 3;
                        if (gpv >= -50) return 2;
                        if (gpv >= -100) return 1;
                        return null;
                    };

                    const gp01 = calculateGP(gp01v);
                    const gp02 = calculateGP(gp02v);
                    const gp03 = calculateGP(gp03v);

                    res.send({ gp01, gp02, gp03 });
                });
            });
        });
    });
};






exports.teacher_bi_checkout = (req, res) => {
    const teacher_uuid = req.session.teacher_uuid;
    const { className, sectionName, checkout } = req.body;

    const sql = `SELECT * FROM bi_mark WHERE domain=? AND class=? AND section=? AND teacher_uuid=? ORDER BY ID`;

    sqlmap.query(sql, [req.cookies["hostname"], className, sectionName, teacher_uuid], (errFind, info_checkout) => {
        if (errFind) {
            console.log(errFind.sqlMessage);
            return;
        }

        res.send({ info_checkout });
    });
};






exports.teacher_bi_report_self_checkout = (req, res) => {
    const teacher_uuid = req.session.teacher_uuid;
    const { className, sectionName } = req.body;

    const sql = `SELECT * FROM bi_mark WHERE domain=? AND class=? AND section=? AND teacher_uuid=?`;

    sqlmap.query(sql, [req.cookies["hostname"], className, sectionName, teacher_uuid], (errFind, info_checkout) => {
        if (errFind) {
            console.log(errFind.sqlMessage);
            return;
        }

        res.send({ info_checkout });
    });
};




