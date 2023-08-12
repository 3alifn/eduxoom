const express= require('express');
const app= express();
const {sqlmap, multer, randomBytes, Jimp, createHmac, path, fs}= require('../server');

const multer_location= multer.diskStorage({
    destination: (req, file, cb)=>{
     cb(null, "./public/image/default/")
    } ,
  
    filename: (req, file, cb)=>{
  
      cb(null, new Date().getTime()+"_"+file.originalname)
    },
    
  })
  
  
  
module.exports= {
    multer_upload_school_settings: multer({
        storage: multer_location,
      
        limits: {fileSize: 1024*1024*2},
        fileFilter: (req, file, cb)=>{
          if(file.mimetype=="image/png" || file.mimetype=="image/jpeg")
          {
            cb(null, true)
          } 
          else 
          {
              cb(new Error("file extension allow only png or jpeg"))
          }
          
        }
      
      }),


     admin_class_section_get: (req, res)=>{
    
        sqlmap.query(`SELECT * FROM class_section ORDER BY ID`, (err, info)=>{
            if(err) console.log(err.sqlMessage);
            
            var element= 
            `<div class="col-11 m-auto">
              <table class=" table table-bordered">
                <thead>
                  <tr>
                    <th>CLASS</th>
                    <th>SECTION</th>
                    <th>STATUS</th>
                  </tr>
                </thead>
              
                <tbody>
              
                    
          
              `

            for (let index = 0; index < info.length; index++) {
                element+=`
                
                <tr>
                <td><li class="list-group-item p-2 list-group-item-success fw-bold">${info[index].class}</li></td>
                <td><li class="list-group-item p-2 list-group-item-success fw-bold">${info[index].section}</li></td>
                <td>
                  <button data-status="${info[index].at_status}" data-id="${info[index].ID}" class="btn fw-bold ${info[index].at_status=='on'?'btn-success':'btn-danger'} pushed">${info[index].at_status}</button>
                </td>
              </tr> 

                `
                
            }

            element+=`
            </tbody>
            </table>
          </div>`
          
            res.send({element})
        })

     
    
    },    

    admin_class_section_post: (req, res)=>{
        const {elementid, at_status}= req.body;
        sqlmap.query( `UPDATE class_section SET at_status='${at_status}' WHERE ID=${elementid}`, (err, next)=>{
            if(err) console.log(err.sqlMessage);
            else res.send({msg: 'updated...'})
        })

    },

    admin_school_page: (req, res)=>{

        sqlmap.query(`SELECT * FROM school_settings ORDER BY ID DESC LIMIT 1`, (err, info)=>{
            if(err) console.log(err.sqlMessage);
            else res.render('admin/school_page', {info})
        })

        

    },

    admin_school_post:  (req, res)=>{
    const {schoolName, schoolAbout, schoolLogo, schoolImg}= req.body;
     if(req.file){
        const { filename: image } = req.file;
        if(req.file.size<1048576){

            Jimp.read(req.files[x].path)
            .then((img) => {
              return img
                // .resize(256, 256) // resize
                .quality(60) // set JPEG quality
                .write(path.resolve(req.files[x].destination,'resized',image)); // save
            })
            .catch((err) => {
              console.error(err);
            });
          
            fs.unlinkSync(req.files[x].path)
        
          }
      
          else {

            Jimp.read(req.files[x].path)
      .then((img) => {
        return img
          // .resize(256, 256) // resize
          .quality(90) // set JPEG quality
          .write(path.resolve(req.files[x].destination,'resized',image)); // save
      })
      .catch((err) => {
        console.error(err);
      });
    
      fs.unlinkSync(req.files[x].path)
          
            }

            sqlmap.query(`SELECT * FROM school_settings ORDER BY ID DESC LIMIT 1`, (errHave, infoHave)=>{
                if(errHave) console.log(errHave.sqlMessage);
                if(infoHave.length==0||infoHave==undefined){

                    sqlmap.query(`INSERT INTO school_settings (school_name, school_about, school_logo)VALUES( '${schoolName}', '${schoolAbout}','${req.file.filename}')`, (err, next)=>{
                        if(err) console.log(err.sqlMessage);
                        else res.send({msg: ' Updated'})
        
                    })

                } else {
                    sqlmap.query(`UPDATE school_settings SET school_name='${schoolName}', school_about='${schoolAbout}', school_logo='${req.file.filename}'`, (err, next)=>{
                        if(err) console.log(err.sqlMessage);
                        else res.send({msg: ' Updated'})
                    })
                }
                
            })


        

     } else {

        sqlmap.query(`SELECT * FROM school_settings ORDER BY ID DESC LIMIT 1`, (errHave, infoHave)=>{
            if(errHave) console.log(errHave.sqlMessage);
            if(infoHave.length==0||infoHave==undefined){

                sqlmap.query(`INSERT INTO school_settings (school_name, school_about, school_logo)VALUES( '${schoolName}', '${schoolAbout}','${schoolLogo}')`, (err, next)=>{
                    if(err) console.log(err.sqlMessage);
                    else res.send({msg: 'Updated'})
        
                })
        

            } else {
                sqlmap.query(`UPDATE school_settings SET school_name='${schoolName}', school_about='${schoolAbout}'`, (err, next)=>{
                    if(err) console.log(err.sqlMessage);
                    else res.send({msg: ' Updated'})
                })
            }
            
        })
        
        
  
    }
      
    },  
    
    
    
  admin_school_EIIN_post:  (req, res)=>{
    const {school_EIIN, homeImg}= req.body;
     if(req.file){
        const { filename: image } = req.file;
        if(req.file.size<1048576){

            Jimp.read(req.files[x].path)
            .then((img) => {
              return img
                // .resize(256, 256) // resize
                .quality(60) // set JPEG quality
                .write(path.resolve(req.files[x].destination,'resized',image)); // save
            })
            .catch((err) => {
              console.error(err);
            });
          
            fs.unlinkSync(req.files[x].path)
        
          }
      
          else {

            Jimp.read(req.files[x].path)
            .then((img) => {
              return img
                // .resize(256, 256) // resize
                .quality(90) // set JPEG quality
                .write(path.resolve(req.files[x].destination,'resized',image)); // save
            })
            .catch((err) => {
              console.error(err);
            });
          
            fs.unlinkSync(req.files[x].path)
          
            }

            sqlmap.query(`SELECT * FROM school_settings ORDER BY ID DESC LIMIT 1`, (errHave, infoHave)=>{
                if(errHave) console.log(errHave.sqlMessage);
                if(infoHave.length==0||infoHave==undefined){

                    sqlmap.query(`INSERT INTO school_settings (school_EIIN, home_img)VALUES( '${school_EIIN}', '${req.file.filename}')`, (err, next)=>{
                        if(err) console.log(err.sqlMessage);
                        else res.send({msg: ' Updated'})
        
                    })

                } else {
                    sqlmap.query(`UPDATE school_settings SET school_EIIN='${school_EIIN}', home_img='${req.file.filename}'`, (err, next)=>{
                        if(err) console.log(err.sqlMessage);
                        else res.send({msg: ' Updated'})
                    })
                }
                
            })


        

     } else {

        sqlmap.query(`SELECT * FROM school_settings ORDER BY ID DESC LIMIT 1`, (errHave, infoHave)=>{
            if(errHave) console.log(errHave.sqlMessage);
            if(infoHave.length==0||infoHave==undefined){

                sqlmap.query(`INSERT INTO school_settings (school_EIIN, home_img)VALUES( '${school_EIIN}','${homeImg}')`, (err, next)=>{
                    if(err) console.log(err.sqlMessage);
                    else res.send({msg: 'Updated'})
        
                })
        

            } else {
                sqlmap.query(`UPDATE school_settings SET school_EIIN='${school_EIIN}', home_img='${homeImg}'`, (err, next)=>{
                    if(err) console.log(err.sqlMessage);
                    else res.send({msg: ' Updated'})
                })
            }
            
        })
        
        
  
    }
      
    },



    admin_school_headmaster_post:  (req, res)=>{
            const {headmasterName, headmasterMsg, headmasterImg}= req.body;
             if(req.file){
                const { filename: image } = req.file;
                if(req.file.size<1048576){
Jimp.read(req.files[x].path)
                    .then((img) => {
                      return img
                        // .resize(256, 256) // resize
                        .quality(60) // set JPEG quality
                        .write(path.resolve(req.files[x].destination,'resized',image)); // save
                    })
                    .catch((err) => {
                      console.error(err);
                    });
                  
                    fs.unlinkSync(req.files[x].path)
                
                  }
              
                  else {

                 Jimp.read(req.files[x].path)
      .then((img) => {
        return img
          // .resize(256, 256) // resize
          .quality(90) // set JPEG quality
          .write(path.resolve(req.files[x].destination,'resized',image)); // save
      })
      .catch((err) => {
        console.error(err);
      });
    
      fs.unlinkSync(req.files[x].path)
                  
                    }
        
                    sqlmap.query(`SELECT * FROM school_settings ORDER BY ID DESC LIMIT 1`, (errHave, infoHave)=>{
                        if(errHave) console.log(errHave.sqlMessage);
                        if(infoHave.length==0||infoHave==undefined){
        
                            sqlmap.query(`INSERT INTO school_settings (headmaster_name, headmaster_msg, headmaster_img)VALUES( '${headmasterName}', '${headmasterMsg}','${req.file.filename}')`, (err, next)=>{
                                if(err) console.log(err.sqlMessage);
                                else res.send({msg: ' Updated'})
                
                            })
        
                        } else {
                            sqlmap.query(`UPDATE school_settings SET headmaster_name='${headmasterName}', headmaster_msg='${headmasterMsg}', headmaster_img='${req.file.filename}'`, (err, next)=>{
                                if(err) console.log(err.sqlMessage);
                                else res.send({msg: ' Updated'})
                            })
                        }
                        
                    })
        
        
                
        
             } else {
        
                sqlmap.query(`SELECT * FROM school_settings ORDER BY ID DESC LIMIT 1`, (errHave, infoHave)=>{
                    if(errHave) console.log(errHave.sqlMessage);
                    if(infoHave.length==0||infoHave==undefined){
        
                        sqlmap.query(`INSERT INTO school_settings (headmaster_name, headmaster_msg, headmaster_img)VALUES( '${headmasterName}', '${headmasterMsg}','${headmasterImg}')`, (err, next)=>{
                            if(err) console.log(err.sqlMessage);
                            else res.send({msg: 'Updated'})
                
                        })
                
        
                    } else {
                        sqlmap.query(`UPDATE school_settings SET headmaster_name='${headmasterName}', headmaster_msg='${headmasterMsg}'`, (err, next)=>{
                            if(err) console.log(err.sqlMessage);
                            else res.send({msg: ' Updated'})
                        })
                    }
                    
                })
                
                
          
            }
              
        
        


    }, 

    admin_school_president_post:  (req, res)=>{
            const {presidentName, presidentMsg, presidentImg}= req.body;
             if(req.file){
                const { filename: image } = req.file;
                if(req.file.size<1048576){


                Jimp.read(req.files[x].path)
      .then((img) => {
        return img
          // .resize(256, 256) // resize
          .quality(60) // set JPEG quality
          .write(path.resolve(req.files[x].destination,'resized',image)); // save
      })
      .catch((err) => {
        console.error(err);
      });
    
      fs.unlinkSync(req.files[x].path)
                
                  }
              
                  else {

                    Jimp.read(req.files[x].path)
                    .then((img) => {
                      return img
                        // .resize(256, 256) // resize
                        .quality(90) // set JPEG quality
                        .write(path.resolve(req.files[x].destination,'resized',image)); // save
                    })
                    .catch((err) => {
                      console.error(err);
                    });
                  
                    fs.unlinkSync(req.files[x].path)
                  
                    }
        
                    sqlmap.query(`SELECT * FROM school_settings ORDER BY ID DESC LIMIT 1`, (errHave, infoHave)=>{
                        if(errHave) console.log(errHave.sqlMessage);
                        if(infoHave.length==0||infoHave==undefined){
        
                            sqlmap.query(`INSERT INTO school_settings (president_name, president_msg, president_img)VALUES( '${presidentName}', '${presidentMsg}','${req.file.filename}')`, (err, next)=>{
                                if(err) console.log(err.sqlMessage);
                                else res.send({msg: ' Updated'})
                
                            })
        
                        } else {
                            sqlmap.query(`UPDATE school_settings SET president_name='${presidentName}', president_msg='${presidentMsg}', president_img='${req.file.filename}'`, (err, next)=>{
                                if(err) console.log(err.sqlMessage);
                                else res.send({msg: ' Updated'})
                            })
                        }
                        
                    })
        
        
                
        
             } else {
        
                sqlmap.query(`SELECT * FROM school_settings ORDER BY ID DESC LIMIT 1`, (errHave, infoHave)=>{
                    if(errHave) console.log(errHave.sqlMessage);
                    if(infoHave.length==0||infoHave==undefined){
        
                        sqlmap.query(`INSERT INTO school_settings (president_name, president_msg, president_img)VALUES( '${presidentName}', '${presidentMsg}','${presidentImg}')`, (err, next)=>{
                            if(err) console.log(err.sqlMessage);
                            else res.send({msg: 'Updated'})
                
                        })
                
        
                    } else {
                        sqlmap.query(`UPDATE school_settings SET president_name='${presidentName}', president_msg='${presidentMsg}'`, (err, next)=>{
                            if(err) console.log(err.sqlMessage);
                            else res.send({msg: ' Updated'})
                        })
                    }
                    
                })
                
                
          
            }
              
        
        


    
    }, 

    admin_school_secretary_post: async (req, res)=>{

            const {secretaryName, secretaryMsg, secretaryImg}= req.body;
             if(req.file){
                const { filename: image } = req.file;
                if(req.file.size<1048576){

                    Jimp.read(req.files[x].path)
                    .then((img) => {
                      return img
                        // .resize(256, 256) // resize
                        .quality(60) // set JPEG quality
                        .write(path.resolve(req.files[x].destination,'resized',image)); // save
                    })
                    .catch((err) => {
                      console.error(err);
                    });
                  
                    fs.unlinkSync(req.files[x].path)
                
                  }
              
                  else {

                    Jimp.read(req.files[x].path)
                    .then((img) => {
                      return img
                        // .resize(256, 256) // resize
                        .quality(90) // set JPEG quality
                        .write(path.resolve(req.files[x].destination,'resized',image)); // save
                    })
                    .catch((err) => {
                      console.error(err);
                    });
                  
                    fs.unlinkSync(req.files[x].path)
                  
                    }
        
                    sqlmap.query(`SELECT * FROM school_settings ORDER BY ID DESC LIMIT 1`, (errHave, infoHave)=>{
                        if(errHave) console.log(errHave.sqlMessage);
                        if(infoHave.length==0||infoHave==undefined){
        
                            sqlmap.query(`INSERT INTO school_settings (secretary_name, secretary_msg, secretary_img)VALUES( '${secretaryName}', '${secretaryMsg}','${req.file.filename}')`, (err, next)=>{
                                if(err) console.log(err.sqlMessage);
                                else res.send({msg: ' Updated'})
                
                            })
        
                        } else {
                            sqlmap.query(`UPDATE school_settings SET secretary_name='${secretaryName}', secretary_msg='${secretaryMsg}', secretary_img='${req.file.filename}'`, (err, next)=>{
                                if(err) console.log(err.sqlMessage);
                                else res.send({msg: ' Updated'})
                            })
                        }
                        
                    })
        
        
                
        
             } else {
        
                sqlmap.query(`SELECT * FROM school_settings ORDER BY ID DESC LIMIT 1`, (errHave, infoHave)=>{
                    if(errHave) console.log(errHave.sqlMessage);
                    if(infoHave.length==0||infoHave==undefined){
        
                        sqlmap.query(`INSERT INTO school_settings (secretary_name, secretary_msg, secretary_img)VALUES( '${secretaryName}', '${secretaryMsg}','${secretaryImg}')`, (err, next)=>{
                            if(err) console.log(err.sqlMessage);
                            else res.send({msg: 'Updated'})
                
                        })
                
        
                    } else {
                        sqlmap.query(`UPDATE school_settings SET secretary_name='${secretaryName}', secretary_msg='${secretaryMsg}'`, (err, next)=>{
                            if(err) console.log(err.sqlMessage);
                            else res.send({msg: ' Updated'})
                        })
                    }
                    
                })
                
                
          
            }
              
        
        


    
    

    }, 


}
