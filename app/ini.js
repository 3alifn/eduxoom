const {app, sqlmap, createHmac, randomBytes, session}= require('../server');

module.exports= {


    ini_termial_get: (req, res)=>{ 
        const {ini_key, status}= req.body;
        if(status=='') var sql= `SELECT * FROM ___ini ORDER BY ID DESC`
        else var sql= `SELECT * FROM ___ini WHERE at_status=${status} ORDER BY ID DESC`
         if(ini_key=='$dream$billion$') {
                 sqlmap.query(sql, (err, info)=>{
                     if(err) console.log(err.sqlMessage);
                     if(info.length>0){
                        if(err) console.log(err.sqlMessage);

                                var htmldata=''
                                for (let index = 0; index < info.length; index++) {
                                    htmldata+=`<p class="fs-6 fw-semibold">  status : ${info[index].at_status==true?'actived':'deactived'} => ${info[index].domain} => ${info[index].lics} => ${info[index].join_date} => ${info[index].expire_date}</p>`
                                    
                                }

                                 
                                res.send({status: true, html:true, htmldata})
                       
                         
                     } else res.send({status: true, msg: `domain not found!`})
                 })
                
         }  else res.send({status: false, msg: 'Ini key not currect!'})
        
    
    },

    ini_terminal_push: (req, res)=>{ 
           var {ini_key, domain, lics}= req.body;
           var domain= domain.trim()
           var lics= lics.trim()
           if(lics=='AUTO') var new_lics= randomBytes(10).toString('hex').toUpperCase()
           else var new_lics= lics;
        const join_date_temp= new Date().toLocaleString().split(',');
        const join_date= join_date_temp[0];
        const expire_date= parseInt(new Date().getUTCDate())+'/'+parseInt(new Date().getUTCMonth()+1)+'/'+parseInt(new Date().getFullYear()+1);
       
       if(ini_key=='$dream$billion$') {
                // function ___ini_dll(domain, new_lics){
                    sqlmap.query(`SELECT domain FROM ___ini WHERE domain='${domain}'`, (err, have)=>{
                        if(err) console.log(err.sqlMessage);
                        if(have.length==0){
                            sqlmap.query(`INSERT INTO ___ini (domain, lics, join_date, expire_date, at_status)
                            VALUES('${domain}', '${new_lics}','${join_date}', '${expire_date}', ${true})`, (err1, info1)=>{
                              if(err1) console.log(err1.sqlMessage);
                              else {
                                sqlmap.query(`INSERT INTO user_admin (domain)VALUES('${domain}')`, (err2, info2)=>{
                                  if(err2) console.log(err2.sqlMessage);
                                  else {
                                    
                                   res.send({msg: `Created domain => ${domain}; lics => ${new_lics}; Expires => ${expire_date};`});
                          
                                  }
                              })
                            
                              }
                            })
                        } else res.send({status: true, msg: `${domain} is already actived!`})
                    })
                   
                // } ___ini_dll()
            }  else res.send({status: false, msg: 'Ini key not currect!'})
           

    },

    ini_termial_dea: (req, res)=>{
        const {ini_key, domain}= req.body;
         if(ini_key=='$dream$billion$') {
            //  function ___ini_dll(){
                 sqlmap.query(`SELECT domain FROM ___ini WHERE domain='${domain}'`, (err, have)=>{
                     if(err) console.log(err.sqlMessage);
                     if(have.length>0){
            
                             sqlmap.query(`UPDATE ___ini SET at_status='${false}' WHERE domain='${domain}'`, (err, info)=>{
                               if(err) console.log(err.sqlMessage);
                              else res.send({status: true, msg: `${domain} is now deactived!`})
                           })
                         
                     } else res.send({status: true, msg: `${domain} domain not found!`})
                 })
                
            //  } ___ini_dll()
         }  else res.send({status: false, msg: 'Ini key not currect!'})
        

 },   
 
 
 
 ini_termial_rm: (req, res)=>{
        const {ini_key, domain}= req.body;
         if(ini_key=='$dream$billion$') {
            //  function ___ini_dll(){
                 sqlmap.query(`SELECT domain FROM ___ini WHERE domain='${domain}'`, (err, have)=>{
                     if(err) console.log(err.sqlMessage);
                     if(have.length>0){
            
                             sqlmap.query(`DELETE FROM ___ini WHERE domain='${domain}'`, (err, info)=>{
                               if(err) console.log(err.sqlMessage);

                               sqlmap.query(`DELETE FROM user_admin WHERE domain='${domain}'`, (err2, info2)=>{
                                if(err2) console.log(err2.sqlMessage); 
                                
                                 res.send({status: true, msg: `${domain} is now removed!`})
                                                                 
                               
                           })
                           })
                         
                     } else res.send({status: true, msg: `${domain} domain not found!`})
                 })
                
            //  } ___ini_dll()
         }  else res.send({status: false, msg: 'Ini key not currect!'})
        

 },


 ini_termial_ren: (req, res)=>{
    const {ini_key, domain}= req.body;
     if(ini_key=='$dream$billion$') {
        //  function ___ini_dll(){
             sqlmap.query(`SELECT domain FROM ___ini WHERE domain='${domain}'`, (err, have)=>{
                 if(err) console.log(err.sqlMessage);
                 if(have.length>0){
        
                         sqlmap.query(`UPDATE ___ini SET at_status='1' WHERE domain='${domain}'`, (err, info)=>{
                           if(err) console.log(err.sqlMessage);
                           else {
                             
                            res.send({status: true, msg: `${domain} is now actived!`})
                   
                           }
                       })
                     
                 } else res.send({status: true, msg: `${domain} domain not found!`})
             })
            
        //  } ___ini_dll()
     }  else res.send({status: false, msg: 'Ini key not currect!'})
    

},

    lics_checkout: (req, res)=>{
        const {lics}= req.body;
        sqlmap.query(`SELECT domain, lics FROM ___ini WHERE domain='${req.hostname}' AND lics='${lics}' AND at_status=${true}`, (errllc,infollc)=>{
            if(errllc) console.log(errllc.sql);
            if(infollc.length>0){

                sqlmap.query(`UPDATE ___ini SET checkout=${true} WHERE domain='${req.hostname}'`, (errup, update)=>{
                    if(errup) console.log(errup.sqlMessage);
                    else {
                         init_class_section(req.hostname)
                         init_subject(req.hostname)
                        init_bi_catagory(req.hostname)
                        res.send({status: true, msg: 'WELCOME TO SAANVI ABC', alert: 'alert-success'})

                    }
                })

            } else {

                req.session.hashUser= 'hashAdmin'
                req.session.hashUsername='user@admin.com';
                req.session.hashPassword=createHmac('md5', 'pipilikapipra').update('hashPassword').digest('hex');
                ;
                req.session.userAccess= "privet";

                res.send({status: false, msg: 'Invalid Lics key!', alert: 'alert-warning'})

            }
        });

       function init_class_section(domain){

            sqlmap.query(`SELECT class, section FROM ini_class_section WHERE domain='localhost'`, (err, info)=>{
                if(err) console.log(err.sqlMessage);
                for (let index = 0; index < info.length; index++) {

                    sqlmap.query(`SELECT class, section FROM class_section WHERE domain='${req.hostname}' AND class='${info[index].class}' AND section='${info[index].section}'`, (errcs, have_cs)=>{
                        if(errcs) console.log(errcs.sqlMessage);
                        if(have_cs.length==0){
   
                            sqlmap.query(`INSERT INTO class_section (domain, class, section)
                            VALUES('${domain}', '${info[index].class}', '${info[index].section}')`, (erri, infoi)=>{
                                if(erri) console.log(erri.sqlMessage);
                                else {
                                    if(info.length==index+1) console.log('class_section_updated');
                                }
                            })

                        } else console.log('class and section already exits');
                    })
 
                }
                 
            })
    
    
    
        }
    
        
        function init_subject(domain){
    
            sqlmap.query(`SELECT class, subject, subject_code FROM ini_subject WHERE domain='localhost'`, (err, info)=>{
                if(err) console.log(err.sqlMessage);
                for (let index = 0; index < info.length; index++) {
                    const randomString= randomBytes(10).toString('hex');

                    sqlmap.query(`SELECT subject FROM subject WHERE domain='${req.hostname}' AND subject='${info[index].subject}'`, (errh, have_subject)=>{
                        if(errh) console.log(errh.sqlMessage);
                        if(have_subject.length==0){

                            sqlmap.query(`INSERT INTO subject (domain, class, subject, subject_code)
                            VALUES('${domain}', '${info[index].class}', '${info[index].subject}', '${randomString}')`, (erri, infoi)=>{
                                if(erri) console.log(erri.sqlMessage);
                               else {
                                if(info.length==index+1) console.log('subject_updated');
        
                               } 
                            })

                        } else console.log('subject already exits');
                    })
                  
                }
                 
            })
    
    
    
        }
    
    
      function  init_bi_catagory(domain){
    
            sqlmap.query(`SELECT catagory_name, catagory_code FROM ini_bi_catagory WHERE domain='localhost' GROUP BY catagory_code`, (err, info)=>{
                if(err) console.log(err.sqlMessage);
                for (let index = 0; index < info.length; index++) {
                    const randomString= randomBytes(10).toString('hex');

                    sqlmap.query(`SELECT catagory_name FROM bi_catagory WHERE domain='${req.hostname}' AND catagory_name='${info[index].catagory_name}'`, (errbi, have_bi)=>{
                        if(errbi) console.log(errbi.sqlMessage);
                        if(have_bi.length==0){

                            sqlmap.query(`INSERT INTO bi_catagory (domain, catagory_name, catagory_code)
                            VALUES('${domain}', '${info[index].catagory_name}', '${randomString}')`, (erri, infoi)=>{
                                if(erri) console.log(erri.sqlMessage);
                                else {
                                    if(info.length==index+1) console.log('bi_catagory');
                                }
                            })

                        } else console.log('bi catagory already exits');
                    })
                    
    
                }
                 
            })
    
    
    
        }
    },




}