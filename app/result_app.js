const output = require('sharp/lib/output');
const {sqlmap} = require('../server');

exports.result_mark_subject_page= (req, res)=>{
    const {class_name, section_name}= req.params; 
    sqlmap.query('SELECT subject, subject_code FROM ini_subject WHERE class=? ORDER BY subject',[class_name], 
        (err, subject)=>{
       if(err) {
        console.log(err.sqlMessage);
        return
       }
       res.render('result/mark-subject-page', {subject, class_name, section_name})
    })
 }

 
exports.result_mark_student_page= (req, res)=>{
    const {class_name, section_name, subject_code}= req.params;

    sqlmap.query('SELECT class, section, student_uuid as suuid, roll, name, avatar FROM students WHERE class=? AND section=? ORDER BY roll',
        [class_name, section_name], (err, students)=>{
       if(err) {
        console.log(err.sqlMessage);
       return
       }
       res.render('result/mark-student-page', {class_name, section_name, subject_code, students})
    })
 }

 exports.result_mark_push = (req, res) => {
    const { suuid, ci_mark, fi_mark, subject_code } = req.body;
    const tuuid = req.session.teacher_uuid;
    const fi_mark_f = parseFloat(fi_mark / 100 * 70);
    const ci_mark_f = ci_mark == "" ? parseFloat(fi_mark / 100 * 30) : parseFloat(ci_mark);
        const output_mark= parseFloat(ci_mark_f+fi_mark_f);

    const sqlSelect = (suuid, subject_code) => {
        return new Promise((resolve, reject) => {

            sqlmap.query("SELECT id, student_uuid as suuid, roll, name, avatar, class as class_name, section as section_name FROM students WHERE student_uuid=?",
                [suuid],(err, studentData)=>{

                   if (err) {
                       return reject("sql1: "+err.sqlMessage);
                   }

                   if(studentData?.length>0){
                   
                    sqlmap.query('SELECT suuid, output_mark FROM result WHERE suuid=? OR subject_code=?',
                        [suuid, subject_code], (err, data) => {
                        
                            if (err) {
                                return reject(err.sqlMessage);
                            }
        
                            if (data?.length>0) {
                                resolve({ next: true, msg: 'sqlUpdate'});
                            } else {
                                resolve({ next: true, msg: 'sqlInsert', student: studentData[0]});

                            }
                        });
                   } else reject("Student not exists!")

           })

          
        });
    };

    const sqlInsert = (ci_mark, fi_mark, tuuid, subject_code, student) => {
        const { class_name, section_name, suuid, roll, name, avatar } = student;
        // const fi_mark_f = parseFloat(fi_mark / 100 * 70);
        // const ci_mark_f = ci_mark == "" ? parseFloat(fi_mark / 100 * 30) : parseFloat(ci_mark);
        // const output_mark= parseFloat(ci_mark_f+fi_mark_f);
        return new Promise((resolve, reject) => {
            sqlmap.query('INSERT INTO result (class, section, suuid, roll, name, avatar, ci_mark, fi_mark, output_mark, tuuid, subject_code) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)',
                [class_name, section_name, suuid, roll, name, avatar, ci_mark_f, fi_mark_f, output_mark, tuuid, subject_code], (err, insert) => {
                    if (err) {
                        return reject(err.sqlMessage);
                    }
                    resolve({ next: false, msg: "Mark Inserted..." });
                });
        });
    };
    

    const sqlUpdate = (suuid, ci_mark, fi_mark, tuuid, subject_code) => {
        // const fi_mark_f = parseFloat(fi_mark / 100 * 70);
        // const ci_mark_f = ci_mark == "" ? parseFloat(fi_mark / 100 * 30) : parseFloat(ci_mark);
        // const output_mark= parseFloat(ci_mark_f+fi_mark_f);

        return new Promise((resolve, reject) => {
            sqlmap.query('UPDATE result SET ci_mark=?, fi_mark=?, output_mark=?, tuuid=? WHERE suuid=? AND subject_code=?',
                [ci_mark_f, fi_mark_f, output_mark, tuuid, suuid, subject_code], (err, update) => {
                    if (err) {
                        return reject(err.sqlMessage);
                    }
                    resolve({ next: false, msg: "Mark Updated..." });
                });
        });
    };

    (async () => {
        try {

            if(ci_mark_f>30 || ci_mark_f<=0 || fi_mark_f>100 || fi_mark_f<=0) {
                throw "Invalid Input!"
                return;
            }
            
            const selectResult = await sqlSelect(suuid, subject_code);
            let result;
            const student= selectResult.student;
            if (selectResult.msg == 'sqlInsert') {
                result = await sqlInsert(ci_mark, fi_mark, tuuid, subject_code, student);
            } else if (selectResult.msg == 'sqlUpdate') {
                result = await sqlUpdate(suuid, ci_mark, fi_mark, tuuid, subject_code);
            }

            res.send({ msg: result.msg });
            console.log(result.msg);
            
        } catch (err) {
            console.log(err);
            res.send({ msg: 'An error occurred', error: err });
        }
    })();
};



 exports.result_mark_pull= (req, res)=>{
    const {class_name, section_name, subject_code}= req.params;

 }

