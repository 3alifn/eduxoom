const {app, sqlmap, fs, path } = require("../configs/server")


exports.admin_notice_get = (req, res) => {
    let sql = `SELECT * FROM notice WHERE domain=? ORDER BY ID DESC`;
    sqlmap.query(sql, [res.locals.hostname], (err, info) => {
        if (err) {
            console.log(err.sqlMessage);
            return;
        }

        if (info.length > 0) {
            let html = "";
            for (const key in info) {
                html += `
                <li class="list-group-item list-group-item-light shadow p-2 mt-2">
                <a class="float-start text-decoration-none" href="/pu/notice/view/${info[key].ID}">${info[key].at_date.toString().substring(0, 25)} | <i class="bi bi-download"></i></a>
                <span class="float-end">${info[key].title} <i class='btn btn-close' onclick="_delbox_pull(${info[key].ID})"></i></span>
                <span class="d-none">${info[key].at_date.toLocaleString('en-ZA')}</span>
                </li>`;
            }

            res.send({ html: html });
        } else {
            res.send({ html: "<center class='mt-5 fs-5'>No record</strong></center>" });
        }
    });
};






exports.admin_notice_post = async (req, res, next) => {
    const { title, notice_date, description } = req.body;
    const session = new Date().getUTCFullYear();
    const find_date = new Date().toLocaleDateString();
    const attachmentx = req.file ? req.file.filename : "demo.pdf";
    const attachment_type = req.file ? req.file.mimetype : 'text';
    
    const sql = notice_date == undefined || notice_date == '' 
        ? `INSERT INTO notice (domain, session, find_date, title, attachment_type, description, attachment)
           VALUES (?, ?, ?, ?, ?, ?, ?)`
        : `INSERT INTO notice (domain, session, find_date, at_date, title, attachment_type, description, attachment)
           VALUES (?, ?, ?, ?, ?, ?, ?, ?)`;

    const values = notice_date == undefined || notice_date == '' 
        ? [res.locals.hostname, session, find_date, title, attachment_type, description, attachmentx]
        : [res.locals.hostname, session, find_date, notice_date, title, attachment_type, description, attachmentx];

    sqlmap.query(sql, values, (err, next) => {
        if (err) {
            return next(err.sqlMessage);
        }
        res.send({ msg: "Notice Added Successfully!", alert: 'alert-success' });
    });
};





exports.admin_notice_rm = (req, res) => {
    const { dataid } = req.body;

    sqlmap.query(
        `SELECT * FROM notice WHERE domain=? AND ID IN (?)`,
        [res.locals.hostname, dataid],
        (errInfo, findInfo) => {
            if (errInfo) {
                console.log("data not found!");
                return;
            }

            sqlmap.query(
                `DELETE FROM notice WHERE domain=? AND ID IN (?)`,
                [res.locals.hostname, dataid],
                (err, next) => {
                    if (err) {
                        console.log(err.sqlMessage);
                        return;
                    }

                    for (const i in findInfo) {
                        fs.unlink(`./assets/docs/notice/${findInfo[i].attachment}`, function (errDelete) {
                            if (errDelete) {
                                console.log(errDelete + "_" + "Notice Deleted! Not found file!");
                            }
                        });
                    }

                    res.send({ msg: "Notice Deleted! Successfully!", alert: "alert-success" });
                }
            );
        }
    );
};





exports.public_notice_page = (req, res) => {
    let sql = `SELECT * FROM notice WHERE domain=? ORDER BY ID DESC`;
    sqlmap.query(sql, [res.locals.hostname], (err, info) => {
        if (err) {
            console.log(err.sqlMessage);
            return;
        }
        
        res.render("public/notice_page_public", {info})
    });
};




exports.public_notice_view = (req, res) => {
    const { dataid } = req.params;
    const sql = `SELECT * FROM notice WHERE domain=? AND ID=?`;

    sqlmap.query(sql, [res.locals.hostname, dataid], (err, info) => {
        if (err) {
            console.log(err.sqlMessage);
            return;
        }

        if (info.length > 0) {
            res.render('public/notice_view', { info });
        } else {
            res.redirect("/pages/404.html");
        }
    });
};






    
    
  