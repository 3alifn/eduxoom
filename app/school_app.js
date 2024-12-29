const express = require('express');
const app = express();
const { sqlmap, randomBytes, createHmac, path, fs, nodemailer, dotenv} = require('../server');
const { json } = require('body-parser');



module.exports = {

    pu_aboutus_render: (req, res)=>{
        
        sqlmap.query(
            `SELECT * FROM school_settings WHERE domain=?`,
            [res.locals.hostname],
            (err, info) => {
                if (err) {
                    console.log(err.sqlMessage);
                    return;
                }
                res.render('public/about-us', { info });
            }
        );
        

      },

    pu_contactus_render: (req, res)=>{
        
        sqlmap.query(
            `SELECT * FROM school_settings WHERE domain=?`,
            [res.locals.hostname],
            (err, info) => {
                if (err) {
                    console.log(err.sqlMessage);
                    return;
                }
                res.render('public/contact-us', { info });
            }
        );
        

      },

    admin_school_page: (req, res) => {

        sqlmap.query(
            `SELECT * FROM school_settings WHERE domain=? ORDER BY ID DESC LIMIT 1`,
            [res.locals.hostname],
            (err, info) => {
                if (err) {
                    console.log(err.sqlMessage);
                    return;
                }
                res.render('admin/school_page', { info });
            }
        );
        



    },

    admin_school_post : (req, res) => {
        const { eiin, name, email, phone, address, headline, about, fb_link } = req.body;
        sqlmap.query(
            `SELECT * FROM school_settings WHERE domain=? ORDER BY ID DESC LIMIT 1`,
            [res.locals.hostname],
            (errHave, infoHave) => {
                if (errHave) {
                    console.log(errHave.sqlMessage);
                    return;
                }
    
                if (infoHave.length == 0 || infoHave == undefined) {
                    sqlmap.query(
                        `INSERT INTO school_settings (domain, eiin, name, email, phone, address, headline, about, fb_link)
                        VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)`,
                        [res.locals.hostname, eiin, name, email, phone, address, headline, about, fb_link],
                        (err, next) => {
                            if (err) {
                                console.log(err.sqlMessage);
                                return;
                            }
                            res.send({ msg: 'Updated' });
                        }
                    );
                } else {
                    sqlmap.query(
                        `UPDATE school_settings SET eiin=?, name=?, about=?, fb_link=?, 
                        headline=?, address=?, email=?, phone=? WHERE domain=?`,
                        [eiin, name, about, fb_link, headline, address, email, phone, res.locals.hostname],
                        (err, next) => {
                            if (err) {
                                console.log(err.sqlMessage);
                                return;
                            }
                            res.send({ msg: 'Updated' });
                        }
                    );
                }
            }
        );
    },
    
    admin_school_img_post : async (req, res) => {
        const jsondata = JSON.stringify(req.body);
        const imgrole = JSON.parse(jsondata).imgrole;
        const randomString = Math.random() * 900000000;
        const imgname = imgrole == 'logo' ? 'logo' : 'image';
    
        sqlmap.query(
            `SELECT * FROM school_settings WHERE domain=?`,
            [res.locals.hostname],
            (err, info) => {
                if (info.length > 0) {
                    sqlmap.query(
                        `UPDATE school_settings SET ${imgname}=? WHERE domain=?`,
                        [imgname + randomString + '.png', res.locals.hostname],
                        (err, next) => {
                            if (err) console.log(err.sqlMessage);
                            res.send({ msg: "Update Successfully!", alert: "success" });
                        }
                    );
                } else {
                    sqlmap.query(
                        `INSERT INTO school_settings (domain, ${imgname}) VALUES(?, ?)`,
                        [res.locals.hostname, imgname + randomString + '.png'],
                        (err, next) => {
                            if (err) console.log(err.sqlMessage);
                            else res.send({ msg: "Added Successfully!", alert: "success" });
                        }
                    );
                }
            }
        );
    
        
    },
    



    public_sent_message: (req, res)=>{
        const {fullname, email, message, school_email}= req.body;
          
    
        const transporter= nodemailer.createTransport({
        
          host: process.env.email_host,
          port: process.env.email_port,
          auth: {
            user: process.env.email_address,
            pass: process.env.email_password
          }
      
        })
      
        
        const mailOutput=
        `<html> 
          <ul>
          <li><h1>Name: ${fullname}</h1></li>
          <li><h3>Email: ${email}</h3></li>
          <li><p>Message: ${message}</p></li>
          </u>
        </html>`
      
        const mailOptions = {
          from: process.env.email_address,
          to: school_email,
          subject: "Contact us",
          text: fullname,
          html: mailOutput
        }
      
      
        
        transporter.sendMail(mailOptions, (err, info)=>{
          
          if(err) {
          console.log(err.message);
            req.flash("msg", "Something Wrong! please try again...")
             
            res.send({msg: 'Something was wrong! check your internet connection. pls try again!', alert: 'warning'})
           }
          
           else res.send({msg: 'Thanks! your message has been sent.', alert: 'success'})
      
        
      
      
      })
    },


}