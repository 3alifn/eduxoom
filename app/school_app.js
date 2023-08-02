const express= require('express');
const app= express();
const {sqlmap, multer, randomBytes, createHmac, sharp, path, fs}= require('../server');

const multer_location= multer.diskStorage({
    destination: (req, file, cb)=>{
     cb(null, "./public/image/school/setup")
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

    admin_school_page: (req, res)=>{

        sqlmap.query(`SELECT * FROM school_settings ORDER BY ID DESC LIMIT 1`, (err, info)=>{
            if(err) console.log(err.sqlMessage);
            else res.render('admin/school_page', {info})
        })

        

    },

    admin_school_post: async (req, res)=>{
    const {schoolName, schoolAbout, schoolLogo}= req.body;
     if(req.file){
        const { filename: image } = req.file;
        if(req.file.size<1048576){
          await sharp(req.file.path)
          //  .resize(4000, 4000)
          //  .jpeg({ quality: 99 })
           .toFile(
               path.resolve(req.file.destination,'resized',image)
           )
           fs.unlinkSync(req.file.path)
        
          }
      
          else {
            await sharp(req.file.path)
            //  .resize(4000, 4000)
             .jpeg({ quality: 20 })
             .toFile(
                 path.resolve(req.file.destination,'resized',image)
             )
             fs.unlinkSync(req.file.path)
          
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

    admin_school_headmaster_post: async (req, res)=>{
            const {headmasterName, headmasterMsg, headmasterImg}= req.body;
             if(req.file){
                const { filename: image } = req.file;
                if(req.file.size<1048576){
                  await sharp(req.file.path)
                  //  .resize(4000, 4000)
                  //  .jpeg({ quality: 99 })
                   .toFile(
                       path.resolve(req.file.destination,'resized',image)
                   )
                   fs.unlinkSync(req.file.path)
                
                  }
              
                  else {
                    await sharp(req.file.path)
                    //  .resize(4000, 4000)
                     .jpeg({ quality: 20 })
                     .toFile(
                         path.resolve(req.file.destination,'resized',image)
                     )
                     fs.unlinkSync(req.file.path)
                  
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

    admin_school_president_post: async (req, res)=>{
            const {presidentName, presidentMsg, presidentImg}= req.body;
             if(req.file){
                const { filename: image } = req.file;
                if(req.file.size<1048576){
                  await sharp(req.file.path)
                  //  .resize(4000, 4000)
                  //  .jpeg({ quality: 99 })
                   .toFile(
                       path.resolve(req.file.destination,'resized',image)
                   )
                   fs.unlinkSync(req.file.path)
                
                  }
              
                  else {
                    await sharp(req.file.path)
                    //  .resize(4000, 4000)
                     .jpeg({ quality: 20 })
                     .toFile(
                         path.resolve(req.file.destination,'resized',image)
                     )
                     fs.unlinkSync(req.file.path)
                  
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
                  await sharp(req.file.path)
                  //  .resize(4000, 4000)
                  //  .jpeg({ quality: 99 })
                   .toFile(
                       path.resolve(req.file.destination,'resized',image)
                   )
                   fs.unlinkSync(req.file.path)
                
                  }
              
                  else {
                    await sharp(req.file.path)
                    //  .resize(4000, 4000)
                     .jpeg({ quality: 20 })
                     .toFile(
                         path.resolve(req.file.destination,'resized',image)
                     )
                     fs.unlinkSync(req.file.path)
                  
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



