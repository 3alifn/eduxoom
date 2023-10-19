const {app, sqlmap, createHmac, randomBytes, session}= require('../server');

module.exports= {

    ini_dll_push: (req, res)=>{
           const {ini_key, domain, lics}= req.body;
           if(lics=='AUTO') var new_lics= randomBytes(10).toString('hex').toUpperCase()
           else var new_lics= lics;
        console.log(ini_key, domain, new_lics);
            const join_date= new Date().toLocaleDateString();
            const expire_date= parseInt(new Date().getMonth()+1)+'/'+parseInt(new Date().getDay()+1)+'/'+parseInt(new Date().getFullYear()+1);
            if(ini_key=='$dreamofbillion$') {
                function ___ini_dll(domain, new_lics){
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
                                    
                                   res.send({msg: 'Created => '+domain, new_lics, expire_date});
                          
                                  }
                              })
                            
                              }
                            })
                        } else res.send({status: true, msg: `${domain} is already actived!`})
                    })
                   
                } ___ini_dll()
            }  else res.send({status: false, msg: 'Ini key not currect!'})
           

    },

    ini_dll_rm: (req, res)=>{
        const {ini_key, domain}= req.body;
         if(ini_key=='$dreamofbillion$') {
             function ___ini_dll(domain, new_lics){
                 sqlmap.query(`SELECT domain FROM ___ini WHERE domain='${domain}'`, (err, have)=>{
                     if(err) console.log(err.sqlMessage);
                     if(have.length>0){
            
                             sqlmap.query(`UPDATE ___ini SET  at_status='${true}' WHERE domain='${domain}'`, (err, info)=>{
                               if(err) console.log(err.sqlMessage);
                               else {
                                 
                                res.send({status: true, msg: `${domain} is now deactived!`})
                       
                               }
                           })
                         
                     } else res.send({status: true, msg: `${domain} domain not found!`})
                 })
                
             } ___ini_dll()
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