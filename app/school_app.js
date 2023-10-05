const express = require('express');
const app = express();
const { sqlmap, multer, randomBytes, createHmac, path, fs, nodemailer, dotenv} = require('../server');
const { json } = require('body-parser');
const sharp = require("sharp")

const multer_location = multer.diskStorage({
    destination: (req, file, cb) => {
        cb(null, "./public/image/default/")
    },

    filename: (req, file, cb) => {

        cb(null, new Date().getTime() + "_" + file.originalname)
    },

})


module.exports = {
    multer_upload_school_settings: multer({
        storage: multer_location,

        limits: { fileSize: 1024 * 1024 * 2 },
        fileFilter: (req, file, cb) => {
            if (file.mimetype == "image/png" || file.mimetype == "image/jpeg") {
                cb(null, true)
            }
            else {
                cb(new Error("file extension allow only png or jpeg"))
            }

        }

    }),

    pu_aboutus_render: (req, res)=>{
        
        sqlmap.query(`SELECT * FROM school_settings WHERE domain='${req.hostname}'`, (err, info) => {
            if (err) console.log(err.sqlMessage);
            res.render('public/about-us', {info})

        })

      },

    pu_contactus_render: (req, res)=>{
        
        sqlmap.query(`SELECT * FROM school_settings WHERE domain='${req.hostname}'`, (err, info) => {
            if (err) console.log(err.sqlMessage);
            res.render('public/contact-us', {info})

        })

      },

    admin_school_page: (req, res) => {

        sqlmap.query(`SELECT * FROM school_settings WHERE domain='${req.hostname}' ORDER BY ID DESC LIMIT 1`, (err, info) => {
            if (err) console.log(err.sqlMessage);
            else res.render('admin/school_page', { info })
        })



    },

    admin_school_post: (req, res) => {
        const { eiin, name, email, phone, address, headline, about, fb_link } = req.body;
        sqlmap.query(`SELECT * FROM school_settings WHERE domain='${req.hostname}' ORDER BY ID DESC LIMIT 1`, (errHave, infoHave) => {
            if (errHave) console.log(errHave.sqlMessage);
            if (infoHave.length == 0 || infoHave == undefined) {

                sqlmap.query(`INSERT INTO school_settings (domain, eiin, name, email, phone, address, headline, about, fb_link)
                VALUES('${req.hostname}', '${eiin}', '${name}','${email}', '${phone}', '${address}', '${headline}', '${about}', '${fb_link}')`, (err, next) => {
                    if (err) console.log(err.sqlMessage);
                    else res.send({ msg: 'Updated' })

                })


            } else {
                sqlmap.query(`UPDATE school_settings SET eiin='${eiin}', name='${name}', about="${about}", fb_link='${fb_link}', 
                headline='${headline}', address='${address}', email='${email}', phone='${phone}' WHERE domain='${req.hostname}'`, (err, next) => {
                    if (err) console.log(err.sqlMessage);
                    else res.send({ msg: ' Updated' })
                })
            }

        })


    },

    admin_school_img_post: async (req, res) => {
        const jsondata = (JSON.stringify(req.body));
        const imgrole = JSON.parse(jsondata).imgrole;
        //   console.log(imgrole, JSON.parse(jsondata).image);
         const randomString= Math.random()*900000000;
          const imgname= imgrole=='logo'?'logo':'image'
        //   console.log(req.file.size);
        if (req.file.size < 524288) {

            await sharp(req.file.path)
                .jpeg({ quality: 80 })
                .toFile(
                    path.resolve(path.resolve(req.file.destination, 'resized', imgname+randomString+'.png'))
                )

            fs.unlinkSync(req.file.path)


        }


        else {
            await sharp(req.file.path)
                .jpeg({ quality: 50 })
                .toFile(
                    path.resolve(path.resolve(req.file.destination, 'resized', imgname+randomString+'.png'))
                )

            fs.unlinkSync(req.file.path)


        }


        sqlmap.query(`SELECT * FROM school_settings WHERE domain='${req.hostname}'`, (err, info)=>{
            if(info.length>0){
                
        sqlmap.query(`UPDATE school_settings SET  ${imgname}="${imgname+randomString+'.png'}" WHERE domain='${req.hostname}'`, (err, next)=>{
            if(err) console.log(err.sqlMessage);
            else console.log('updated');
        })
            } else {

                sqlmap.query(`INSERT INTO school_settings (domain, ${imgname}) VALUES('${req.hostname}',"${imgname+randomString+'.png'}")`, (err, next)=>{
                    if(err) console.log(err.sqlMessage);
                    else console.log('inserted');

                })

            }
        })

        res.send({ msg: "Added Successfully!", alert: "success" })
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