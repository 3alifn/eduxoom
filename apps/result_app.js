const output = require('sharp/lib/output');
const {sqlmap} = require('../configs/server');

exports.result_mark_subject_page= (req, res, next)=>{
    const host = req.hostname.startsWith("www.");
    const hostname = host ? req.hostname.split("www.")[1] : req.hostname;
    const {class_name, section_name}= req.params; 
    sqlmap.query('SELECT subject, subject_code FROM ini_subject WHERE class=? ORDER BY subject',
        [class_name], 
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
    const host = req.hostname.startsWith("www.");
    const hostname = host ? req.hostname.split("www.")[1] : req.hostname;
    sqlmap.query('SELECT class, section, student_uuid as suuid, roll, name, avatar FROM students WHERE domain=? AND class=? AND section=? ORDER BY roll',
        [hostname, class_name, section_name], (err, students)=>{
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
    const {class_name, section_name, suuid, ci_mark, fi_mark, subject_code, subject_name } = req.body;
    const tuuid = req.session.teacher_uuid;
    const fi_mark_f = Math.round(parseFloat(fi_mark / 100 * 70));
    const ci_mark_f = ci_mark == "" ? parseInt(fi_mark - fi_mark_f) : Math.round(parseFloat(ci_mark));
        const book_mark= Math.round(parseFloat(ci_mark_f+fi_mark_f));
        const host = req.hostname.startsWith("www.");
        const hostname = host ? req.hostname.split("www.")[1] : req.hostname;
 
    const sqlSelect = (class_name, section_name, suuid, subject_code) => {
        return new Promise((resolve, reject) => {

            sqlmap.query(`SELECT id, student_uuid as suuid, roll, name, avatar
                 FROM students WHERE domain=? AND class=? AND section=? AND student_uuid=?`,
                [hostname, class_name, section_name, suuid],(err, studentData)=>{

                   if (err) {
                       return reject(err.sqlMessage);
                   }
 
                   if(studentData?.length>0){
                   
                    sqlmap.query('SELECT suuid, book_mark FROM result WHERE domain=? AND class=? AND section=? AND suuid=? AND subject_code=?',
                        [hostname, class_name, section_name, suuid, subject_code], (err, data) => {
                        
                            if (err) {
                                return reject(err.sqlMessage);
                            }
        
                            if (data?.length>0) {
                                resolve({ next: true, msg: 'sqlUpdate'});
                            } else {
                                resolve({status:200, next: true, msg: 'sqlInsert', student: studentData[0]});

                            }
                        });
                   } else reject("Student not exists!")

           })

          
        });
    };

    const sqlInsert = (class_name, section_name, ci_mark, fi_mark, tuuid, subject_code, subject_name, student) => {
        const { suuid, roll, name, avatar } = student;

        return new Promise((resolve, reject) => {
            sqlmap.query(`INSERT INTO result (domain, class, section, suuid, roll, name, avatar, real_ci_mark, 
                real_fi_mark, ci_mark, fi_mark, book_mark, tuuid, subject_name, subject_code)
                 VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)`,
                [hostname, class_name, section_name, suuid, roll, name, avatar, ci_mark, fi_mark, ci_mark_f, fi_mark_f, book_mark, tuuid, subject_name, subject_code], (err, insert) => {
                    if (err) {
                        return reject(err.sqlMessage);
                    }
                    resolve({ status: 200, next: false, msg: "Mark Inserted..." });
                });
        });
    };
    

    const sqlUpdate = (class_name, section_name, suuid, ci_mark, fi_mark, tuuid, subject_code) => {

        return new Promise((resolve, reject) => {
            sqlmap.query(`UPDATE result SET real_ci_mark=?, real_fi_mark=?, ci_mark=?, fi_mark=?, book_mark=?, tuuid=? WHERE 
                domain=? AND class=? AND section=? AND suuid=? AND subject_code=?`,
                [ci_mark, fi_mark, ci_mark_f, fi_mark_f, book_mark, tuuid, hostname, class_name, section_name, suuid, subject_code], (err, update) => {
                    if (err) {
                        return reject(err.sqlMessage);
                    }
                    resolve({ status: 200, next: true, msg: "Mark Updated..." });
                });
        });
    };


    const sqlRankUpdate=(class_name, section_name, suuid)=>{

     return new Promise((resolve, reject) => {
        sqlmap.query('SELECT SUM(book_mark) as book_mark FROM result WHERE domain=? AND class=? AND section=? AND suuid=?',
            [hostname, class_name, section_name, suuid],(err, mark)=>{
             if(err) return reject(err.sqlMessage)

                sqlmap.query('UPDATE result SET output_mark=? WHERE domain=? AND class=? AND section=? AND suuid=?', 
                    [mark[0].book_mark, hostname, class_name, section_name, suuid], ()=>{
             if(err) return reject(err.sqlMessage)
              return resolve({next: false, status: 200, msg: 'Mark posted'})
                })
         })
     })
    }

    (async () => {
        try {

            if(ci_mark_f>30 || ci_mark_f<=0 || fi_mark_f>100 || fi_mark_f<=0) {
                throw "Invalid Input!"
                return;
            }
            
            const selectResult = await sqlSelect(class_name, section_name, suuid, subject_code);
            let result;
            const student= selectResult.student;            
            if (selectResult.msg == 'sqlInsert') {
                result = await sqlInsert(class_name, section_name, ci_mark, fi_mark, tuuid, subject_code, subject_name, student);
                await sqlRankUpdate(class_name, section_name, suuid)
            } else if (selectResult.msg == 'sqlUpdate') {
                result = await sqlUpdate(class_name, section_name, suuid, ci_mark, fi_mark, tuuid, subject_code);
                await sqlRankUpdate(class_name, section_name, suuid)

            }

           await res.send({ alert: "alert-success", msg: result.msg });
            
        } catch (err) {
           
            next(err)
        }
    })();
};


exports.result_mark_pull= (req, res, next)=>{
    const {class_name, section_name, subject_code}= req.query;
    const host = req.hostname.startsWith("www.");
    const hostname = host ? req.hostname.split("www.")[1] : req.hostname;
       function fetchData(class_name, section_name, subject_code){
        return new Promise((resolve, reject)=>{
         sqlmap.query('SELECT id, suuid, if(real_ci_mark=0, null, real_ci_mark) as real_ci_mark, real_fi_mark FROM result WHERE domain=? AND class=? AND section=? AND subject_code=?', 
            [hostname, class_name, section_name, subject_code], (err, data)=>{
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
    const host = req.hostname.startsWith("www.");
    const hostname = host ? req.hostname.split("www.")[1] : req.hostname;
    sqlmap.query(`SELECT class, section, suuid, roll, name, output_mark, avatar FROM result 
        WHERE domain=? AND class=? AND section=? GROUP BY suuid ORDER BY output_mark DESC`,
        [hostname, class_name, section_name], (err, students)=>{
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
 const host = req.hostname.startsWith("www.");
 const hostname = host ? req.hostname.split("www.")[1] : req.hostname;
 function getMarkSheet(class_name, section_name, suuid){
    return new Promise((resolve, reject)=>{
        sqlmap.query(`SELECT class, section, subject_name, subject_code, name, roll, suuid,
             avatar, ci_mark, fi_mark, book_mark, output_mark FROM result
              WHERE domain=? AND class=? AND section=? AND suuid=? GROUP BY subject_code ORDER BY subject_name`,
            [hostname, class_name, section_name, suuid], (err, result)=>{
                if(err){
                    reject(err.sqlMessage)
                    return;
                }
                resolve(result)

            })
    })
 }
 
 function getSubjectName(class_name){
    return new Promise((resolve, reject)=>{
        sqlmap.query(`SELECT subject_code, subject as subject_name FROM ini_subject 
            WHERE class=? GROUP BY subject_code ORDER BY subject`,
            [class_name], (err, subject)=>{
                if(err){
                    reject(err.sqlMessage)
                    return;
                }
                resolve(subject)

            })
    })
 }

  (async function(){
  try{
    const result= await getMarkSheet(class_name, section_name, suuid);
    const subject= await getSubjectName(class_name);

    if(result?.length==0 || result==undefined){
        res.redirect('/pages/empty.html')
        return
    }
    await res.render('result/repo-sheet-page', {subject, result})
  }
  
  catch(err){
   next(err)
  }
  
 })()

}



exports.result_rank_pull= (req, res, next)=>{
    const {class_name, section_name, suuid}= req.body;
    const host = req.hostname.startsWith("www.");
    const hostname = host ? req.hostname.split("www.")[1] : req.hostname;

    const  initRank= (class_name, section_name)=>{
        return new Promise((resolve, reject)=>{
        sqlmap.query(`select suuid, output_mark from result where domain=? and class=? and section=? group by suuid order by output_mark desc`,
            [hostname, class_name, section_name],(err, rank)=>{
            if(err) return reject(err)
                resolve(rank)
        })
        })
    
      }
    
    const viewRank= (suuid, rank)=>{
        return new Promise((resolve, reject)=>{
            const rankNumber= new Map();
         rank.forEach((item, index)=>{
            if(item.suuid==suuid){
                rankNumber.set('rank', index+1)
                return resolve(rankNumber.get('rank'))
            } 
            
         })
    
        })
    }
    
(async function(){
try{
const rankNumber= await initRank(class_name, section_name);
const rank= await viewRank(suuid, rankNumber);
res.send({status: 200, msg: rank})
}
catch(err){
next(err)
}

})()

}




exports.result_marksheet_pull_page= (req, res, next)=>{
    const {class_name, section_name}= req.params;
    const host = req.hostname.startsWith("www.");
    const hostname = host ? req.hostname.split("www.")[1] : req.hostname;

    const studentsFunc= (class_name, section_name)=>{
        return new Promise((resolve, reject)=>{
        sqlmap.query(`SELECT suuid FROM result WHERE domain=? AND class=? AND section=? GROUP BY suuid ORDER BY output_mark DESC`,
            [hostname, class_name, section_name],(err, studentsData)=>{
            if(err) return reject("err")
                resolve(studentsData)
        })
        })
    
      }

      (async function(){
       try {
        const students= await studentsFunc(class_name, section_name)
        await res.render("result/marksheet-print-page", {class_name, section_name, students})

       } catch (err) {
        next(err)

       }
      })()
    
}


exports.result_marksheet_pull_print=(req, res, next)=>{
    const {class_name, section_name, suuid}= req.body;
    const host = req.hostname.startsWith("www.");
    const hostname = host ? req.hostname.split("www.")[1] : req.hostname;

    function getSubjectName(class_name){
        return new Promise((resolve, reject)=>{
            sqlmap.query(`SELECT subject_code, subject as subject_name FROM ini_subject 
                WHERE class=? GROUP BY subject_code ORDER BY subject`,
                [class_name], (err, subject)=>{
                    if(err){
                        reject(err.sqlMessage)
                        return;
                    }
                    resolve(subject)
    
                })
        })
     }


    function markSheetPull(class_name, section_name, suuid){
       return new Promise((resolve, reject)=>{
           sqlmap.query(`SELECT class, section, subject_name, subject_code, name, roll, suuid,
                avatar, ci_mark, fi_mark, book_mark, output_mark FROM result
                 WHERE domain=? AND class=? AND section=? AND suuid=? GROUP BY subject_code`,
               [hostname, class_name, section_name, suuid], (err, result)=>{
                   if(err){
                       reject(err.sqlMessage)
                       return;
                   }
                   resolve(result)
   
               })
       })
    }

    
   
     (async function(){
     try{
       const subject= await getSubjectName(class_name);
       const result= await markSheetPull(class_name, section_name, suuid);
       console.log(result[0].suuid);
       
       if(result?.length==0 || result==undefined){
        await res.send({status: 404, msg: result})
        return
       }
       await res.send({status: 200, result: result, subject: subject})
     }
     
     catch(err){
      next(err)
     }
     
    })()
   
   }
   