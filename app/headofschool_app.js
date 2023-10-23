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

    admin_headofschool_get: (req, res) => {
        sqlmap.query(`SELECT * FROM headofschool WHERE domain='${req.hostname}' ORDER BY ID DESC`, (err, info) => {
            if (err) console.log(err.sqlMessage);
             if(info.length>0){
                var listdata='';
                for (let index = 0; index < info.length; index++) {
                    listdata+=`
                     <form id='updateform_${index}' class="updateform_${index}">
                    <div class="mt-1 p-2">
                      <div class="col-12">
                        <input value="${info[index].ID}" type="hidden" name="dataid">
                        <input value="${info[index].image}" type="hidden" name="haveimage">
                        <p class="p-2 text-muted text-center fw-semibold fs-5">
                          Our honourable <code class="pe-1">*</code> 
                           <input required placeholder="Headmaster" value="${info[index].position}" class="form-dev p-0" name="position"
                            list="positionList">
                          <datalist id="positionList">
                            <option value="Chairman">Chairman</option>
                            <option value="Principal">Principal</option>
                            <option value="President">President</option>
                            <option value="Headmaster">Headmaster</option>
      
                          </datalist>
      
                        </p>
      
                        <div class="d-flex shadowx  overflow-auto text-muted fw-semibold justify-content-end">
                          <button onclick="_delbox_pull('${info[index].ID}')" type="button" class="page-link btn-go text-primary shadowx at_action border p-2">Delete our ${info[index].position}</button>
      
                        </div>
                      </div>
      

                      
      <div class="d-flex p-2 justify-content-between align-items-center">
      <p class="w-25 fw-semibold m-auto">Gender </p>
      <code class='pe-1'>*</code> <span class="w-75">
        Male <input value="Male" class="form-check-input shadowx ms-2 me-2" ${info[0].gender=='Male'?'checked':null} type="radio" name="gender" id="">
        Female <input value="Female" class="form-check-input shadowx ms-2" ${info[0].gender=='Female'?'checked':null} type="radio" name="gender" id="">
    
      </span>
    
    </div>
      
      
                      <div class="d-flex  p-2 justify-content-between align-items-center">
                        <p class="w-25 fw-semibold m-auto">Name</p>
                        <code class="pe-1">*</code>   <input  required value="${info[index].name}" name="name" class="w-75 shadowx form-dev form-control-sm" placeholder="enter name"
                          type="text" id="">
                      </div>
      
      
      
                      <div class="d-flex p-2 justify-content-between align-items-center">
                        <p class="w-25  fw-semibold m-auto">Message</p>
                        <span class="w-75">
      
                         <code class="pe-1">*</code> <textarea required name="message" class="form-dev shadowx" style="width: 100%;" placeholder="message" id=""
                            cols="40" rows="5">${info[index].message}</textarea>
      
                        </span>
      
                      </div>
      
      
                      <div class="d-flex  p-2 justify-content-between align-items-center">
                        <p class="w-25 fw-semibold m-auto">Photo</p>
                        <code class="pe-1">-</code>    <img class="rounded-circle p-2 shadowx" src="/image/headofschool/resized/${info[index].image}" height="100px" width="100px"
                          alt="">
                        <input  name="image" value="${info[index].image}" class="w-75 ps-3 shadowx  form-dev form-control-sm" type="file"
                          id="">
                      </div>
      
                    </div>
      
                    <div class="d-flex justify-content-end p-2 mt-2 mb-2">
                      <button onclick='updateform("updateform_${index}")' type="button" class="btn  text-primary submitbtn nav-fill btn-hover shadowx">Changes and publish</button>
                    </div>
      
                  </form>
                  
                  <script>
                  function updateform(form){
                    let formdata = new FormData($("."+form)[0])
                    $.ajax({
                      method: "post",
                      url: "/admin/headofschool/update",
                      data: formdata,
                      dataType: "JSON",
                      mimeType: 'multipart/form-data',
                      cache: false,
                      processData: false,
                      contentType: false,
                      beforeSend: function(){
                    $('.submitbtn').addClass('disabled')
                      },
                      success: function (res) {
                        _msg_pull(res.alert, res.msg)
                        listdata()
                        $('.submitbtn').removeClass('disabled')
                       
                      }
                    });
                }
                </script>`;
    
                    
                }
    
                res.send({listdata})
             } else res.send({listdata: null})

        })



    },


    admin_headofschool_post: async(req, res) => {
        var { position, name, message, gender} = req.body;
        const randomString= Math.random()*90000;

        if(req.file){
            var { filename: image } = req.file;

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

          if(req.file){
            var avatar_png= req.file.filename;
        
           }
        
           else {
            if(gender=="Female") var avatar_png= "female_avatar.png"
            else var avatar_png= "male_avatar.png"
           }
                 sqlmap.query(`INSERT INTO headofschool (domain, position, name, gender, message, image)
                 VALUES( '${req.hostname}', '${position}', '${name}', '${gender}', '${message}', '${avatar_png}')`, (err, next) => {
                        if (err) console.log(err.sqlMessage);
                        else res.send({status: 200, alert: 'alert-success', msg: `${position} add successfully!`})
    
              })

             

    },


    admin_headofschool_update: async(req, res) => {
        var { position, name, gender, message, dataid, haveimage } = req.body;
         if(req.file){
            var { filename: image } = req.file;

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
  
              if(req.file){
                var avatar_png= req.file.filename;
            
               } else{
                var avatar_png= haveimage;
               }

                    sqlmap.query(`UPDATE headofschool SET position='${position}', name='${name}', gender='${gender}', message='${message}', image='${avatar_png}' WHERE domain='${req.hostname}' AND  ID='${dataid}'`, (errN, nextN) => {
                        if (errN) console.log(errN.sqlMessage+"- update issued");
                        else res.send({alert: 'alert-success', msg: `${position} update successfully!`})
    
                    })
                
            

             

    },

    admin_headofschool_rm: (req, res)=>{
        const {dataid}=req.body;
        sqlmap.query(`DELETE FROM headofschool WHERE domain='${req.hostname}' AND  ID=${dataid}`, (err, next)=>{
            if(err) console.log(err.sqlMessage);
            else res.send({msg: 'Deleted!'})
        })
    }


} 