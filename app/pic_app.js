import { app, express, sqlmap, session } from '../server.js';
import {chapter_Six, chapter_Seven} from '../chapter_api.js';



export const teacher_pic_page_mark_get= (req, res)=>{
  var {class_section, subject, page}= req.query; 
  if(class_section==undefined) {
    var {className, sectionName}= req.query
  } else {
  var class_section_temp= class_section.split('$%&')
 var className= class_section_temp[0];
 var sectionName= class_section_temp[1];
  } 
  const tempSubject= subject.split('-')[0];

  const subject_flag= `${className}_${sectionName}_${tempSubject}`


 if(page==1) var offset=0; else var offset=page-1; const limit=20; 

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
                      [req.cookies["hostname"], className, sectionName],
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
                              [req.cookies["hostname"], className, sectionName, limit, offset * limit],
                              (errStudent, infoStudentData) => {
                                  sqlmap.query(
                                      `SELECT subject, subject_code FROM ini_subject WHERE class=? AND subject=?`,
                                      [className, subject],
                                      (errSubjectCode, infoSubjectCode) => {
                                          const subject_code = infoSubjectCode[0].subject_code;
                                          if (infoStudentData) {
                                              const infoStudent = infoStudentData;
                                              res.render('pic/pic-page-mark-teacher', {
                                                  infoStudent,
                                                  className,
                                                  infoChapter,
                                                  subject_flag,
                                                  sectionName,
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

}



export const teacher_pic_mark_post = (req, res) => {
  const teacher_uuid = req.session.teacher_uuid;
  const session = new Date().getUTCFullYear();
  const { className, sectionName, pi, student_uuid, roll, name, avatar, chapter, subject, subject_code, checkout, bg_color } = req.body;
  const subjectx = subject.replaceAll(' ', '-').split('-');
  const subjecty = subjectx[0];
  const subject_flag = className + '_' + sectionName + '_' + subjecty;
  const pi_group = chapter.split('_')[0];

  sqlmap.query(
      `SELECT * FROM pic_mark WHERE domain=? AND class=? AND section=? AND student_uuid=? AND subject_code=? AND chapter=?`,
      [req.cookies["hostname"], className, sectionName, student_uuid, subject_code, chapter],
      (errCheck, infoCheck) => {
          if (errCheck) {
              console.log(errCheck.sqlMessage);
              return;
          }

          if (infoCheck == undefined || infoCheck.length == 0) {
              sqlmap.query(
                  `INSERT INTO pic_mark (domain, session, class, section, subject_flag, subject_code, pi_group, student_uuid, subject, roll, name, avatar, chapter, pi, checkout, bg_color)
                  VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)`,
                  [req.cookies["hostname"], session, className, sectionName, subject_flag, subject_code, pi_group, student_uuid, subject, roll, name, avatar, chapter, pi, checkout, bg_color],
                  (errPost, nextPost) => {
                      if (errPost) {
                          console.log(errPost.sqlMessage);
                          return;
                      }
                      res.send({ msg: 'success' });
                  }
              );
          } else {
              console.log(undefined + '!503');
          }
      }
  );
};



export const teacher_pic_mark_checkout = (req, res) => {
  const teacher_uuid = req.session.teacher_uuid;
  const { className, sectionName, subject, subject_code } = req.body;

  sqlmap.query(
      `SELECT * FROM pic_mark WHERE domain=? AND class=? AND section=? AND subject_code=?`,
      [req.cookies["hostname"], className, sectionName, subject_code],
      (errFind, info_checkout) => {
          if (errFind) {
              console.log(errFind.sqlMessage);
              return;
          }
          res.send({ info_checkout });
      }
  );
};




export const teacher_pic_subject_get=(req, res)=>{

   const {className}= req.body;
 
     sqlmap.query( `SELECT subject, subject_code FROM ini_subject WHERE  class=? GROUP BY subject ORDER BY ID DESC`,[className], (err, info)=>{
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

