sconst {app, sqlmap, createHmac, randomBytes, session}= require('../configs/server');

function init_class_section(domain) {
    
    const defaultDomain= 'localhost';
    sqlmap.query(
        `SELECT class, section FROM ini_class_section WHERE domain=?`,
        [defaultDomain],
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

const ini_termial_get = (req, res) => { 
    const { ini_key, status } = req.body;

    // Choose SQL and params depending on whether status was provided
    let sql;
    let params = [];
    if (typeof status === 'undefined' || status === '') {
        sql = `SELECT * FROM ___ini ORDER BY ID DESC`;
    } else {
        sql = `SELECT * FROM ___ini WHERE at_status=? ORDER BY ID DESC`;
        params = [status];
    }

    if (ini_key === '$dream$billion$') {
        sqlmap.query(sql, params, (err, info) => {
            if (err) {
                console.log(err.sqlMessage);
                return;
            }

            if (info.length > 0) {
                let htmldata = '';
                for (let index = 0; index < info.length; index++) {
                    htmldata += `<p class="fs-6 fw-semibold">status : ${info[index].at_status ? 'active' : 'inactive'} => ${info[index].domain} => ${info[index].lics} => ${info[index].join_date} => ${info[index].expire_date || ''}</p>`;
                }

                res.send({ status: true, html: true, htmldata });
            } else {
                res.send({ status: true, msg: `Domain not found!` });
            }
        });
    } else {
        res.send({ status: false, msg: 'Ini key is not correct!' });
    }
}

const ini_terminal_push = (req, res)=>{ 
    let {ini_key, domain, lics}= req.body;
    domain = domain.trim();
    lics = lics.trim();
    let new_lics;
    if (lics === 'AUTO') new_lics = randomBytes(10).toString('hex').toUpperCase();
    else new_lics = lics;

    const join_date_temp = new Date().toLocaleString().split(',');
    const join_date= join_date_temp[0];
    const expire_date= parseInt(new Date().getUTCDate())+'/'+parseInt(new Date().getUTCMonth()+1)+'/'+parseInt(new Date().getFullYear()+1);

    if (ini_key === '$dream$billion$') {
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
                                    init_class_section(domain);
                                    res.send({ status: true, msg: `Created domain => ${domain}; lics => ${new_lics}; Expires => ${expire_date};` });
                                }
                            );
                        }
                    );
                } else {
                    res.send({ status: true, msg: `${domain} is already active!` });
                }
            }
        );
    } else {
        res.send({status: false, msg: 'Ini key is not correct!'});
    }
}

const ini_termial_dea = (req, res) => {
    const {ini_key, domain} = req.body;
    if (ini_key === '$dream$billion$') {
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
    } else {
        res.send({status: false, msg: 'Ini key is not correct!'});
    }
}

const ini_termial_rm = (req, res) => {
    const {ini_key, domain} = req.body;
    if (ini_key === '$dream$billion$') {
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
    } else {
        res.send({status: false, msg: 'Ini key is not correct!'});
    }
}

const ini_termial_ren = (req, res) => {
    const {ini_key, domain} = req.body;
    if (ini_key === '$dream$billion$') {
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
                        [true, domain],
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
    } else {
        res.send({status: false, msg: 'Ini key is not correct!'});
    }
}

const lics_checkout = (req, res) => {
    const {lics} = req.body;
    const isWww = req.hostname.startsWith("www.");
    const hostnameInt = isWww ? req.hostname.split("www.")[1] : req.hostname;
    sqlmap.query(
        `SELECT domain, lics FROM ___ini WHERE domain=? AND lics=? AND at_status=?`,
        [hostnameInt, lics, true],
        (errllc, infollc) => {
            if (errllc) {
                console.log(errllc.sqlMessage);
                return;
            }
    
            if (infollc.length > 0) {
                sqlmap.query(
                    `UPDATE ___ini SET checkout=? WHERE domain=?`,
                    [true, hostnameInt],
                    (errup, update) => {
                        if (errup) {
                            console.log(errup.sqlMessage);
                            return;
                        }
                        
                        res.send({ status: true, msg: 'Welcome to Eduxoom', alert: 'alert-success' });
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
    
}

module.exports={
    ini_termial_get, ini_terminal_push, ini_termial_dea, ini_termial_ren, ini_termial_rm, lics_checkout
}
