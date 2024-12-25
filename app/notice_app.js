const express = require("express")
const app = express()
const { sqlmap, multer } = require("../server")

const fs= require('fs')
const path= require('path')

const locationNotice= multer.diskStorage({
    destination: (req, file, cb)=>{
     cb(null, "./public/docs/notice/")
    } ,
  
    filename: (req, file, cb)=>{
  
      cb(null, new Date().getTime()+"_"+file.originalname)
    },
    
  })

exports.uploadNotice= multer({
    storage: locationNotice,
  
    limits: {fileSize: 10000000},
    fileFilter: (req, file, cb)=>{
  
      if(file.mimetype=="application/pdf" || file.mimetype=="image/png" || file.mimetype=="image/jpeg" || file.mimetype=="image/jpg")
      {
        cb(null, true)
      } 
      else 
      {
          cb(new Error("file extension allow only pdf / png / jpeg/ jpg"))
      }
      
    }
  
  })
  
  
exports.admin_notice_get = (req, res) => {
    let sql = `SELECT * FROM notice WHERE domain=? ORDER BY ID DESC`;
    sqlmap.query(sql, [req.cookies["hostname"]], (err, info) => {
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






exports.admin_notice_post = (req, res) => {
    const { title, notice_date, description } = req.body;
    const session = new Date().getUTCFullYear();
    const find_date = new Date().toLocaleDateString();
    const attachment = req.file ? req.file.filename : "demo.pdf";
    const attachment_type = req.file ? req.file.mimetype : 'text';
    
    const sql = notice_date == undefined || notice_date == '' 
        ? `INSERT INTO notice (domain, session, find_date, title, attachment_type, description, attachment)
           VALUES (?, ?, ?, ?, ?, ?, ?)`
        : `INSERT INTO notice (domain, session, find_date, at_date, title, attachment_type, description, attachment)
           VALUES (?, ?, ?, ?, ?, ?, ?, ?)`;

    const values = notice_date == undefined || notice_date == '' 
        ? [req.cookies["hostname"], session, find_date, title, attachment_type, description, attachment]
        : [req.cookies["hostname"], session, find_date, notice_date, title, attachment_type, description, attachment];

    sqlmap.query(sql, values, (err, next) => {
        if (err) {
            console.log(err.sqlMessage);
            return;
        }
        res.send({ msg: "Notice Added Successfully!", alert: 'alert-success' });
    });
};





exports.admin_notice_rm = (req, res) => {
    const { dataid } = req.body;

    sqlmap.query(
        `SELECT * FROM notice WHERE domain=? AND ID IN (?)`,
        [req.cookies["hostname"], dataid],
        (errInfo, findInfo) => {
            if (errInfo) {
                console.log("data not found!");
                return;
            }

            sqlmap.query(
                `DELETE FROM notice WHERE domain=? AND ID IN (?)`,
                [req.cookies["hostname"], dataid],
                (err, next) => {
                    if (err) {
                        console.log(err.sqlMessage);
                        return;
                    }

                    for (const i in findInfo) {
                        fs.unlink(`./public/docs/notice/${findInfo[i].attachment}`, function (errDelete) {
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
    sqlmap.query(sql, [req.cookies["hostname"]], (err, info) => {
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

    sqlmap.query(sql, [req.cookies["hostname"], dataid], (err, info) => {
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






    
    
  