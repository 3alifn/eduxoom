const express = require('express');
const app = express();
const { sqlmap, multer, randomBytes, createHmac, path, fs } = require('../server');
const { json } = require('body-parser');
const sharp = require("sharp")


const multer_location = multer.diskStorage({
    destination: (req, file, cb) => {
        cb(null, "./public/image/headofschool/")
    },

    filename: (req, file, cb) => {

        cb(null, new Date().getTime() + "_" + file.originalname)
    },

})


module.exports = {
    multer_upload_headofschool: multer({
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

      

    pu_headofschool_view_page: (req, res) => {

        sqlmap.query(`SELECT * FROM headofschool WHERE domain='${req.hostname}' GROUP BY position ORDER BY ID DESC`, (err, info) => {
            if (err) console.log(err.sqlMessage);
            else res.render('public/headofschool', {info})
        })


    },

    admin_headofschool_page: (req, res) => {

        sqlmap.query(`SELECT * FROM headofschool WHERE domain='${req.hostname}' ORDER BY ID DESC`, (err, info) => {
            if (err) console.log(err.sqlMessage);
            else res.render('admin/headofschool', { info })
        })



    },

    admin_headofschool_post: async(req, res) => {
        var { position, name, message, dataid, haveimage } = req.body;
        const randomString= Math.random()*90000;

        if(haveimage==undefined || haveimage=='') var image= position+randomString+'.png'; else var image=haveimage;
              sqlmap.query(`SELECT * FROM headofschool WHERE domain='${req.hostname}' AND  ID='${dataid}'`, (errcheck, infocheck)=>{
                if(errcheck) console.log(errcheck.sqlMessage);
                if(infocheck.length==undefined||infocheck.length==0){
                    sqlmap.query(`INSERT INTO headofschool (domain, position, name, message, image)
                    VALUES( '${req.hostname}', '${position}', '${name}','${message}', '${image}')`, (err, next) => {
                        if (err) console.log(err.sqlMessage);
                        else res.redirect('/admin/setup/headofschool')
    
                    })
                } 
                
            else {
                    sqlmap.query(`UPDATE headofschool SET position='${position}', name='${name}', message='${message}', image='${image}' WHERE domain='${req.hostname}' AND  ID='${dataid}'`, (errN, nextN) => {
                        if (errN) console.log(errN.sqlMessage+"- update issued");
                       else res.redirect('/admin/setup/headofschool')
    
                    })
                }
              })

              if(req.file){
                if (req.file.size < 524288) {
        
                    await sharp(req.file.path)
                        .jpeg({ quality: 50 })
                        .toFile(
                            path.resolve(path.resolve(req.file.destination, 'resized', image))
                        )
        
                    fs.unlinkSync(req.file.path)
        
        
                }
        
        
                else {
                    await sharp(req.file.path)
                        .jpeg({ quality: 20 })
                        .toFile(
                            path.resolve(path.resolve(req.file.destination, 'resized', image))
                        )
        
                    fs.unlinkSync(req.file.path)
        
        
                }
              }
  

    },

    admin_headofschool_rm: (req, res)=>{
        const {dataid}=req.body;
        sqlmap.query(`DELETE FROM headofschool WHERE domain='${req.hostname}' AND  ID=${dataid}`, (err, next)=>{
            if(err) console.log(err.sqlMessage);
            else res.send({msg: 'Deleted!'})
        })
    }


} 