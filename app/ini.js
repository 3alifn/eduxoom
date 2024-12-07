const {app, sqlmap, createHmac, randomBytes, session}= require('../server');

module.exports= {


    ini_termial_get: (req, res) => { 
        const { ini_key, status } = req.body;
        const sql = status === '' ? 
            `SELECT * FROM ___ini ORDER BY ID DESC` : 
            `SELECT * FROM ___ini WHERE at_status=? ORDER BY ID DESC`;
    
        if (ini_key === '$dream$billion$') {
            sqlmap.query(sql, [status], (err, info) => {
                if (err) {
                    console.log(err.sqlMessage);
                    return;
                }
    
                if (info.length > 0) {
                    let htmldata = '';
                    for (let index = 0; index < info.length; index++) {
                        htmldata += `<p class="fs-6 fw-semibold">  status : ${info[index].at_status ? 'active' : 'inactive'} => ${info[index].domain} => ${info[index].lics} => ${info[index].join_date} => ${info[index].expire_date}</p>`;
                    }
    
                    res.send({ status: true, html: true, htmldata });
                } else {
                    res.send({ status: true, msg: `Domain not found!` });
                }
            });
        } else {
            res.send({ status: false, msg: 'Ini key is not correct!' });
        }
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
                    sqlmap.query(
                        `SELECT domain FROM ___ini WHERE domain=?`,
                        [domain],
                        (err, have) => {
                            if (err) {
                                console.log(err.sqlMessage);
                                return;
                            }
                    
                            if (have.length == 0) {
                                sqlmap.query(
                                    `INSERT INTO ___ini (domain, lics, join_date, expire_date, at_status) VALUES (?, ?, ?, ?, ?)`,
                                    [domain, new_lics, join_date, expire_date, true],
                                    (err1, info1) => {
                                        if (err1) {
                                            console.log(err1.sqlMessage);
                                            return;
                                        }
                    
                                        sqlmap.query(
                                            `INSERT INTO user_admin (domain) VALUES (?)`,
                                            [domain],
                                            (err2, info2) => {
                                                if (err2) {
                                                    console.log(err2.sqlMessage);
                                                    return;
                                                }
                                                res.send({ msg: `Created domain => ${domain}; lics => ${new_lics}; Expires => ${expire_date};` });
                                            }
                                        );
                                    }
                                );
                            } else {
                                res.send({ status: true, msg: `${domain} is already active!` });
                            }
                        }
                    );
                    
                   
                // } ___ini_dll()
            }  else res.send({status: false, msg: 'Ini key is not currect!'})
           

    },

    ini_termial_dea: (req, res)=>{
        const {ini_key, domain}= req.body;
         if(ini_key=='$dream$billion$') {
            //  function ___ini_dll(){
                sqlmap.query(
                    `SELECT domain FROM ___ini WHERE domain=?`,
                    [domain],
                    (err, have) => {
                        if (err) {
                            console.log(err.sqlMessage);
                            return;
                        }
                
                        if (have.length > 0) {
                            sqlmap.query(
                                `UPDATE ___ini SET at_status=? WHERE domain=?`,
                                [false, domain],
                                (err, info) => {
                                    if (err) {
                                        console.log(err.sqlMessage);
                                        return;
                                    }
                                    res.send({ status: true, msg: `${domain} is now deactivated!` });
                                }
                            );
                        } else {
                            res.send({ status: true, msg: `${domain} domain not found!` });
                        }
                    }
                );
                
                
            //  } ___ini_dll()
         }  else res.send({status: false, msg: 'Ini key is not currect!'})
        

 },   
 
 
 
 ini_termial_rm: (req, res)=>{
        const {ini_key, domain}= req.body;
         if(ini_key=='$dream$billion$') {
            //  function ___ini_dll(){
                sqlmap.query(
                    `SELECT domain FROM ___ini WHERE domain=?`,
                    [domain],
                    (err, have) => {
                        if (err) {
                            console.log(err.sqlMessage);
                            return;
                        }
                
                        if (have.length > 0) {
                            sqlmap.query(
                                `DELETE FROM ___ini WHERE domain=?`,
                                [domain],
                                (err, info) => {
                                    if (err) {
                                        console.log(err.sqlMessage);
                                        return;
                                    }
                
                                    sqlmap.query(
                                        `DELETE FROM user_admin WHERE domain=?`,
                                        [domain],
                                        (err2, info2) => {
                                            if (err2) {
                                                console.log(err2.sqlMessage);
                                                return;
                                            }
                                            res.send({ status: true, msg: `${domain} is now removed!` });
                                        }
                                    );
                                }
                            );
                        } else {
                            res.send({ status: true, msg: `${domain} domain not found!` });
                        }
                    }
                );
                
                
            //  } ___ini_dll()
         }  else res.send({status: false, msg: 'Ini key is not currect!'})
        

 },


 ini_termial_ren: (req, res)=>{
    const {ini_key, domain}= req.body;
     if(ini_key=='$dream$billion$') {
        //  function ___ini_dll(){
            sqlmap.query(
                `SELECT domain FROM ___ini WHERE domain=?`,
                [domain],
                (err, have) => {
                    if (err) {
                        console.log(err.sqlMessage);
                        return;
                    }
            
                    if (have.length > 0) {
                        sqlmap.query(
                            `UPDATE ___ini SET at_status=? WHERE domain=?`,
                            [1, domain],
                            (err, info) => {
                                if (err) {
                                    console.log(err.sqlMessage);
                                    return;
                                }
                                res.send({ status: true, msg: `${domain} is now active!` });
                            }
                        );
                    } else {
                        res.send({ status: true, msg: `${domain} domain not found!` });
                    }
                }
            );
            
            
        //  } ___ini_dll()
     }  else res.send({status: false, msg: 'Ini key is not currect!'})
    

},

    lics_checkout: (req, res)=>{
        const {lics}= req.body;
        sqlmap.query(
            `SELECT domain, lics FROM ___ini WHERE domain=? AND lics=? AND at_status=?`,
            [req.cookies["hostname"], lics, true],
            (errllc, infollc) => {
                if (errllc) {
                    console.log(errllc.sqlMessage);
                    return;
                }
        
                if (infollc.length > 0) {
                    sqlmap.query(
                        `UPDATE ___ini SET checkout=? WHERE domain=?`,
                        [true, req.cookies["hostname"]],
                        (errup, update) => {
                            if (errup) {
                                console.log(errup.sqlMessage);
                                return;
                            }
                            //  init_class_section(req.cookies["hostname"])
                            //  init_subject(req.cookies["hostname"])
                            // init_bi_catagory(req.cookies["hostname"])
                            
                            
                            res.send({ status: true, msg: 'WELCOME TO SAANVI ABC', alert: 'alert-success' });
                        }
                    );
                } else {
                    req.session.hashUser = 'hashAdmin';
                    req.session.hashUsername = 'user@admin.com';
                    req.session.hashPassword = createHmac('md5', 'pipilikapipra').update('hashPassword').digest('hex');
                    req.session.userAccess = "privet";
        
                    res.send({ status: false, msg: 'Invalid Lics key!', alert: 'alert-warning' });
                }
            }
        );
        

        function init_class_section(domain) {
            sqlmap.query(
                `SELECT class, section FROM ini_class_section WHERE domain=?`,
                [domain],
                (err, info) => {
                    if (err) {
                        console.log(err.sqlMessage);
                        return;
                    }
        
                    for (let index = 0; index < info.length; index++) {
                        sqlmap.query(
                            `SELECT class, section FROM class_section WHERE domain=? AND class=? AND section=?`,
                            [domain, info[index].class, info[index].section],
                            (errcs, have_cs) => {
                                if (errcs) {
                                    console.log(errcs.sqlMessage);
                                    return;
                                }
        
                                if (have_cs.length == 0) {
                                    sqlmap.query(
                                        `INSERT INTO class_section (domain, class, section) VALUES (?, ?, ?)`,
                                        [domain, info[index].class, info[index].section],
                                        (erri, infoi) => {
                                            if (erri) {
                                                console.log(erri.sqlMessage);
                                                return;
                                            }
        
                                            if (info.length == index + 1) {
                                                console.log('class_section_updated');
                                            }
                                        }
                                    );
                                } else {
                                    console.log('class and section already exists');
                                }
                            }
                        );
                    }
                }
            );
        }
        
    
        
        function init_subject(domain) {
            sqlmap.query(
                `SELECT class, subject, subject_code FROM ini_subject WHERE domain=?`,
                [domain],
                (err, info) => {
                    if (err) {
                        console.log(err.sqlMessage);
                        return;
                    }
        
                    for (let index = 0; index < info.length; index++) {
                        const randomString = createHmac('md5', 'pipilikapipra').update(`${info[index].subject}`).digest('hex');
        
                        sqlmap.query(
                            `SELECT subject FROM subject WHERE domain=? AND subject=?`,
                            [domain, info[index].subject],
                            (errh, have_subject) => {
                                if (errh) {
                                    console.log(errh.sqlMessage);
                                    return;
                                }
        
                                if (have_subject.length == 0) {
                                    sqlmap.query(
                                        `INSERT INTO subject (domain, class, subject, subject_code) VALUES (?, ?, ?, ?)`,
                                        [domain, info[index].class, info[index].subject, randomString],
                                        (erri, infoi) => {
                                            if (erri) {
                                                console.log(erri.sqlMessage);
                                                return;
                                            }
        
                                            if (info.length == index + 1) {
                                                console.log('subject_updated');
                                            }
                                        }
                                    );
                                } else {
                                    console.log('subject already exists');
                                }
                            }
                        );
                    }
                }
            );
        }
        
        function init_bi_catagory(domain) {
            sqlmap.query(
                `SELECT catagory_name, catagory_code FROM ini_bi_catagory WHERE domain=? GROUP BY catagory_code`,
                [domain],
                (err, info) => {
                    if (err) {
                        console.log(err.sqlMessage);
                        return;
                    }
        
                    for (let index = 0; index < info.length; index++) {
                        const randomString = createHmac('md5', 'pipilikapipra').update(`${info[index].catagory_name}`).digest('hex');
        
                        sqlmap.query(
                            `SELECT catagory_name FROM bi_catagory WHERE domain=? AND catagory_name=?`,
                            [domain, info[index].catagory_name],
                            (errbi, have_bi) => {
                                if (errbi) {
                                    console.log(errbi.sqlMessage);
                                    return;
                                }
        
                                if (have_bi.length == 0) {
                                    sqlmap.query(
                                        `INSERT INTO bi_catagory (domain, catagory_name, catagory_code) VALUES (?, ?, ?)`,
                                        [domain, info[index].catagory_name, randomString],
                                        (erri, infoi) => {
                                            if (erri) {
                                                console.log(erri.sqlMessage);
                                                return;
                                            }
        
                                            if (info.length == index + 1) {
                                                console.log('bi_catagory');
                                            }
                                        }
                                    );
                                } else {
                                    console.log('bi catagory already exists');
                                }
                            }
                        );
                    }
                }
            );
        }
        
    },




}