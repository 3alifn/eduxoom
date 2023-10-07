const {app, sqlmap, createHmac, randomBytes}= require('../server');

module.exports= {
    lics_checkout: (req, res)=>{
        const {lics}= req.body;
        console.log(lics);
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
                res.send({status: false, msg: 'Invalid Lics key!', alert: 'alert-warning'})

            }
        });

       function init_class_section(domain){

            sqlmap.query(`SELECT class, section FROM ini_class_section WHERE domain='localhost'`, (err, info)=>{
                if(err) console.log(err.sqlMessage);
                for (let index = 0; index < info.length; index++) {
    
                    sqlmap.query(`INSERT INTO class_section (domain, class, section)
                    VALUES('${domain}', '${info[index].class}', '${info[index].section}')`, (erri, infoi)=>{
                        if(erri) console.log(erri.sqlMessage);
                        else {
                            if(info.length==index+1) console.log('class_section_updated');
                        }
                    })
                }
                 
            })
    
    
    
        }
    
        
        function init_subject(domain){
    
            sqlmap.query(`SELECT class, subject, subject_code FROM ini_subject WHERE domain='localhost'`, (err, info)=>{
                if(err) console.log(err.sqlMessage);
                for (let index = 0; index < info.length; index++) {
                    const randomString= randomBytes(10).toString('hex');
                    sqlmap.query(`INSERT INTO subject (domain, class, subject, subject_code)
                    VALUES('${domain}', '${info[index].class}', '${info[index].subject}', '${randomString}')`, (erri, infoi)=>{
                        if(erri) console.log(erri.sqlMessage);
                       else {
                        if(info.length==index+1) console.log('subject_updated');

                       } 
                    })
                }
                 
            })
    
    
    
        }
    
    
      function  init_bi_catagory(domain){
    
            sqlmap.query(`SELECT catagory_name, catagory_code FROM ini_bi_catagory WHERE domain='localhost' GROUP BY catagory_code`, (err, info)=>{
                if(err) console.log(err.sqlMessage);
                for (let index = 0; index < info.length; index++) {
                    const randomString= randomBytes(10).toString('hex');

                    sqlmap.query(`INSERT INTO bi_catagory (domain, catagory_name, catagory_code)
                    VALUES('${domain}', '${info[index].catagory_name}', '${randomString}')`, (erri, infoi)=>{
                        if(erri) console.log(erri.sqlMessage);
                        else {
                            if(info.length==index+1) console.log('bi_catagory');
                        }
                    })
    
                }
                 
            })
    
    
    
        }
    },




}