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

 
exports.result_mark_student_page= (req, res, next)=>{
    const {class_name, section_name, subject_code}= req.params;

    sqlmap.query('SELECT class, section, student_uuid as suuid, roll, name, avatar FROM students WHERE class=? AND section=? ORDER BY roll',
        [class_name, section_name], (err, students)=>{
       if(err) {
       next(err.sql)
       return
       }

       sqlmap.query(`SELECT subject FROM ini_subject WHERE subject_code=?`,
        [subject_code],(err, subjectData)=>{
        if(err) {
          next(err.sqlMessage)
          return
        }
        const subject_name=subjectData[0].subject;
       res.render('result/mark-student-page', {class_name, section_name, subject_name, subject_code, students})

       })
    })
 }

 exports.result_mark_push = (req, res, next) => {
    const { suuid, ci_mark, fi_mark, subject_code, subject_name } = req.body;
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
                   
                    sqlmap.query('SELECT suuid, output_mark FROM result WHERE suuid=? AND subject_code=?',
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

    const sqlInsert = (ci_mark, fi_mark, tuuid, subject_code, subject_name, student) => {
        const { class_name, section_name, suuid, roll, name, avatar } = student;
        // const fi_mark_f = parseFloat(fi_mark / 100 * 70);
        // const ci_mark_f = ci_mark == "" ? parseFloat(fi_mark / 100 * 30) : parseFloat(ci_mark);
        // const output_mark= parseFloat(ci_mark_f+fi_mark_f);
        return new Promise((resolve, reject) => {
            sqlmap.query('INSERT INTO result (class, section, suuid, roll, name, avatar, real_ci_mark, real_fi_mark, ci_mark, fi_mark, output_mark, tuuid, subject_name, subject_code) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)',
                [class_name, section_name, suuid, roll, name, avatar, ci_mark, fi_mark, ci_mark_f, fi_mark_f, output_mark, tuuid, subject_name, subject_code], (err, insert) => {
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
            sqlmap.query('UPDATE result SET real_ci_mark=?, real_fi_mark=?, ci_mark=?, fi_mark=?, output_mark=?, tuuid=? WHERE suuid=? AND subject_code=?',
                [ci_mark, fi_mark, ci_mark_f, fi_mark_f, output_mark, tuuid, suuid, subject_code], (err, update) => {
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
                result = await sqlInsert(ci_mark, fi_mark, tuuid, subject_code, subject_name, student);
            } else if (selectResult.msg == 'sqlUpdate') {
                result = await sqlUpdate(suuid, ci_mark, fi_mark, tuuid, subject_code);
            }

           await res.send({ alert: "alert-success", msg: result.msg });
            
        } catch (err) {
           
            next(err)
        }
    })();
};



 exports.result_mark_pull= (req, res, next)=>{
    const {class_name, section_name, subject_code}= req.query;
       function fetchData(class_name, section_name, subject_code){
        return new Promise((resolve, reject)=>{
         sqlmap.query('SELECT id, suuid, if(real_ci_mark=0, null, real_ci_mark) as real_ci_mark, real_fi_mark FROM result WHERE class=? AND section=? AND subject_code=?', 
            [class_name, section_name, subject_code], (err, data)=>{
             if(err){
                reject({msg: err.sqlMessage})
                return ;
                
             }

                resolve({data: data})
                
         })
        })
       }

       (async function(){
           try{
             const data= await fetchData(class_name, section_name, subject_code)

            await res.send({status: 200, data})

           }catch(err){

            next(new Error(err.msg))
           }
       })()
 }


exports.result_repo_student_page=(req, res, next)=>{
    const {class_name, section_name}= req.params;

    sqlmap.query(`SELECT class, section, student_uuid as suuid, roll, name, avatar FROM students WHERE class=? AND section=? 
        AND student_uuid IN (SELECT suuid FROM result WHERE class=? AND section=? ORDER BY roll) ORDER BY roll`,
        [class_name, section_name, class_name, section_name], (err, students)=>{
       if(err) {
       next(err.sqlMessage)
       return
       }

       if(students?.length==0 || students==undefined){
        res.redirect('/pages/empty.html')
        return
       } 

       res.render('result/repo-student-page', {class_name, section_name, students})

    })
}


exports.result_repo_sheet_page=(req, res, next)=>{
 const {class_name, section_name, suuid}= req.params;
 function makeRepo(class_name, section_name, suuid){
    return new Promise((resolve, reject)=>{
        sqlmap.query(`SELECT class, section, subject_name, subject_code, name, roll, suuid,
             avatar, ci_mark, fi_mark, output_mark FROM result
              WHERE class=? AND section=? AND suuid=?`,
            [class_name, section_name, suuid], (err, result)=>{
                if(err){
                    reject(err.sqlMessage)
                    return;
                }

                sqlmap.query(`SELECT SUM(output_mark) as total_mark FROM result
                     WHERE class=? AND section=? AND suuid=?`,
                   [class_name, section_name, suuid], (err, total_mark)=>{
                       if(err){
                           reject(err.sqlMessage)
                           return;
                       }
                       resolve({result, total_mark})
       
                   })

            })
    })
 }

  (async function(){
  try{
    const {result, total_mark}= await makeRepo(class_name, section_name, suuid);
    
    if(result?.length==0 || result==undefined){
        res.redirect('/pages/empty.html')
        return
    }
    await res.render('result/repo-sheet-page', {result, total_mark})
  }
  
  catch(err){
   next(err)
  }
  
 })()

}

