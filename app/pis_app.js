const {app, express, sqlmap, session } = require("../server")
const chapter_Six = require("../chapter_api");
const chapter_Seven = require("../chapter_api");

exports.teacher_pis_page_mark_get = (req, res) => {
  var { class_section, subject, page } = req.query;
  var className, sectionName;

  if (class_section == undefined) {
      ({ className, sectionName } = req.query);
  } else {
      [className, sectionName] = class_section.split('$%&');
  }

  const tempSubject = subject.split('-')[0];
  const subject_flag = `${className}_${sectionName}_${tempSubject}`;
  const offset = page == 1 ? 0 : page - 1;
  const limit = 20;

  sqlmap.query(
      `SELECT subject, subject_code FROM ini_subject WHERE class=? AND subject=?`,
      [className, subject],
      (errfind, infof) => {
          if (errfind) {
              console.log(errfind.sqlMessage);
              return;
          }

          sqlmap.query(
              `SELECT subject, subject_code FROM ini_subject WHERE class=? AND subject=?`,
              [className, subject],
              (errfound, subjectfound) => {
                  if (subjectfound.length > 0) {
                      var infoChapter = chapter_Six[`_${infof[0].subject_code}`];

                      sqlmap.query(
                          `SELECT COUNT(student_uuid) AS student_row FROM students WHERE domain=? AND class=? AND section=?`,
                          [res.locals.hostname, className, sectionName],
                          (err_row, count_row) => {
                              if (err_row) {
                                  console.log(err_row.sqlMessage);
                                  return;
                              }

                              const student_row = count_row[0].student_row;
                              const pagination = student_row / limit;
                              const nextbtnstatus = Math.ceil(pagination) == page ? 'disabled' : '';
                              const prevbtnstatus = page == 1 ? 'disabled' : '';

                              sqlmap.query(
                                  `SELECT * FROM students WHERE domain=? AND class=? AND section=? ORDER BY roll LIMIT ? OFFSET ?`,
                                  [res.locals.hostname, className, sectionName, limit, offset * limit],
                                  (errStudent, infoStudentData) => {
                                      sqlmap.query(
                                          `SELECT subject, subject_code FROM ini_subject WHERE class=? AND subject=?`,
                                          [className, subject],
                                          (errSubjectCode, infoSubjectCode) => {
                                              const subject_code = infoSubjectCode[0].subject_code;
                                              if (infoStudentData) {
                                                  const infoStudent = infoStudentData;
                                                  res.render('pis/pis-page-mark-teacher', {
                                                      infoStudent,
                                                      className,
                                                      sectionName,
                                                      infoChapter,
                                                      subject,
                                                      subject_code,
                                                      pagination,
                                                      page,
                                                      nextbtnstatus,
                                                      prevbtnstatus
                                                  });
                                              } else {
                                                  res.redirect('/pages/empty.html');
                                              }
                                          }
                                      );
                                  }
                              );
                          }
                      );
                  } else {
                      res.redirect('/pages/empty.html');
                  }
              }
          );
      }
  );
};


exports.teacher_pis_mark_post = (req, res) => {
  const teacher_uuid = req.session.teacher_uuid; 
  const session = new Date().getUTCFullYear();
  const domain = res.locals.hostname;
  const { className, sectionName, pi, student_uuid, roll, name, avatar, chapter, subject, subject_code, checkout, bg_color } = req.body;
  const subjectx = subject.replaceAll(' ', '-').split('-');
  const subjecty = subjectx[0];
  const subject_flag = className + '_' + sectionName + '_' + subjecty;  
  const pi_group = chapter.split('_')[0];

  sqlmap.query(
      `SELECT * FROM pic_mark WHERE domain=? AND class=? AND section=? AND student_uuid=? AND subject_code=? AND chapter=?`,
      [res.locals.hostname, className, sectionName, student_uuid, subject_code, chapter],
      (err_pic, info_pic) => {
          if (err_pic) {
              console.log(err_pic.sqlMessage);
              return;
          }

          if (info_pic.length > 0) {
              const pic_pi = info_pic[0].pi;
              sqlmap.query(
                  `SELECT * FROM pis_mark WHERE domain=? AND class=? AND section=? AND student_uuid=? AND subject_code=? AND chapter=?`,
                  [res.locals.hostname, className, sectionName, student_uuid, subject_code, chapter],
                  (errCheck, infoCheck) => {
                      if (errCheck) {
                          console.log(errCheck.sqlMessage);
                          return;
                      }

                      if (infoCheck == undefined || infoCheck.length == 0) {
                          sqlmap.query(
                              `INSERT INTO pis_mark (domain, session, class, section, subject_flag, subject_code, pi_group, student_uuid, subject, roll, name, avatar, chapter, pi, checkout, bg_color)
                              VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)`,
                              [res.locals.hostname, session, className, sectionName, subject_flag, subject_code, pi_group, student_uuid, subject, roll, name, avatar, chapter, pi, checkout, bg_color],
                              (errPost, nextPost) => {
                                  if (errPost) {
                                      console.log(errPost.sqlMessage);
                                      return;
                                  }
                                  todo_transcipt(domain, className, subject_flag, subject_code, pi_group, teacher_uuid, roll, sectionName, student_uuid, subject, chapter, name, avatar, pi, pic_pi, checkout);
                                  res.send({ msg: 'success' });
                              }
                          );
                      } else {
                          console.log(undefined + '!503');
                      }
                  }
              );
          } else {
              res.send({ msg: 'উক্ত বিষয় এবং অধ্যায়ের পি আই সি মার্ক আগে সম্পূর্ণ করতে হবে! তারপর পি আই এস করতে হবে! ' });
          }
      }
  );
};




exports.teacher_pis_mark_checkout = (req, res) => {
  const teacher_uuid = req.session.teacher_uuid;
  const { className, sectionName, subject, subject_code } = req.body;

  sqlmap.query(
      `SELECT * FROM pis_mark WHERE domain=? AND class=? AND section=? AND subject_code=?`,
      [res.locals.hostname, className, sectionName, subject_code],
      (errFind, info_checkout) => {
          if (errFind) {
              console.log(errFind.sqlMessage);
              return;
          }
          res.send({ info_checkout });
      }
  );
};







exports.teacher_pis_subject_get=(req, res)=>{


   const {className}= req.body;
 
     sqlmap.query( `SELECT * FROM ini_subject WHERE  class=? GROUP BY subject ORDER BY ID DESC`,[className], (err, info)=>{
 
       if (err) console.log(err.sqlMessage);
 
       let listData= 
       `
       <option selected value="" disabled >বিষয় নির্বাচন করুন</option>
       `
       for (const i in info) {

     listData+= `<option vlaue='${info[i].subject_code}'>${info[i].subject}</option>`

       }
 
       res.send({listData})
 
     } )
 
 }



function todo_transcipt(domain, className, subject_flag, subject_code, pi_group, teacher_uuid, roll, sectionName,  student_uuid, subject, chapter, name, avatar, pi, pic_pi, checkout){
  const session= new Date().getUTCFullYear(); 

  if(pi>pic_pi) var final_pi= pi; else var final_pi=  pic_pi; if(final_pi==1) var bg_color= 'bg-success'; else if(final_pi==0) var bg_color='bg-warning'; else bg_color='bg-danger';


  sqlmap.query(`SELECT subject, subject_code, chapter, student_uuid, roll FROM transcript_report WHERE domain='${domain}' AND  class='${className}' AND section='${sectionName}' AND 
  subject_code='${subject_code}' AND chapter='${chapter}' AND student_uuid='${student_uuid}'`, (err_find, info_find)=>{
    if(err_find) console.log(err_find.sqlMessage);
    if(info_find.length==0 || info_find==undefined){

    
      sqlmap.query(`INSERT INTO transcript_report (domain, session, class, section, subject_flag, subject_code, pi_group, subject, chapter,
        teacher_uuid, student_uuid, roll, name, pi, bg_color, checkout, avatar)
      VALUES('${domain}', ${session},'${className}', '${sectionName}', '${subject_flag}', '${subject_code}', '${pi_group}', '${subject}', '${chapter}', '${teacher_uuid}',
    '${student_uuid}', '${roll}', '${name}',  '${final_pi}', '${bg_color}', '${checkout}',  '${avatar}')`, (errTranscipt, todoTranscipt)=>{
     if(errTranscipt) console.log(errTranscipt.sqlMessage);
    //  else console.log('transcipt inserted!.');
   })

    }
  })

}