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
  
  

exports.admin_notice_get= (req, res)=>{  

let sql="SELECT * FROM notice ORDER BY ID DESC"
sqlmap.query(sql, (err, info)=>{
    if(err) console.log(err.sqlMessage);
    else 
    {    if(info.length>0)
        {
            let html= "";
            for (const key in info) {
             html+= `
             <li class="list-group-item list-group-item-light shadow p-2 mt-2">
             <a class="float-start text-decoration-none" target="_blank" href="/docs/notice/${info[key].attachment}">${info[key].at_date.toString().substring(0, 25)} | <i class="bi bi-download"></i></a>
             <span class="float-end">${info[key].description} <i class='btn btn-close'  onclick="_delbox_pull(${info[key].ID})"></i></span>
             <span class="d-none">${info[key].at_date.toLocaleString('en-ZA')}</span>

         </li>
`
            }

            res.send({html: html})
        }

        else 
        {
            res.send({html: "<center><strong><h5>এখনো কোন নোটিশ পাওয়া যুক্ত করা হয়নি!</h5></strong></center>"})
        }
    }

    
})

}






exports.admin_notice_post= (req, res)=>{

    let {title, description}=req.body;
    let session= new Date().getUTCFullYear();

    if(req.file) var attachmentNotice= req.file.filename;
    else var attachmentNotice= "demo.pdf"
    let sql= `INSERT INTO notice (session, title, description, attachment)VALUES('${session}', "${title}",  "${description}", "${attachmentNotice}")`
    sqlmap.query(sql, (err, next)=>{
        if(err) console.log(err.sqlMessage);
        else
        {
            res.send({msg: "Notice Added Successfully!", alert: 'text-success'})
        }
    })

}


exports.public_notice_get= (req, res)=>{
    let sql= "SELECT * FROM notice";
    sqlmap.query(sql, (err, info)=>{
        if(err) console.log(err.sqlMessage);
        else 
        {
            if(info.length>0)
            {
                let html= "";
                for (const key in info) {
                 html+= 
                 `
                 <li class="list-group-item list-group-item-light shadow mt-2">
                 <a class="float-start nav-link" target="_blank" href="/public/docs/notice/${info[key].attachment}">${info[key].at_date.toString().substring(0, 25)} | <i class="bi bi-download"></i></a>
                 <span class="float-end">${info[key].description}</span>
                 <span class="d-none">${info[key].at_date.toLocaleString('en-ZA')}</span>
               
               </li>`                }

                res.send({html: html})
            }

            else 
            {
                res.send({html: "<center><strong><h5>এখনো কোন নোটিশ পাওয়া যুক্ত করা হয়নি!</h5></strong></center>"})
            }
          
        }
    })
}



exports.admin_notice_delete= (req, res)=>{

    let {ID} =req.body;

    sqlmap.query(`SELECT * FROM notice WHERE ID IN (${ID.toString()})`, (errInfo, findInfo)=>{
        if(errInfo) console.log("data not found!")
        
        else {

            
    sqlmap.query(`DELETE FROM notice WHERE ID IN (${ID.toString()})`, (err, next)=>{
        if(err) console.log(err.sqlMessage);
        else
        {

           for (const i in findInfo) {
            fs.unlink(`./public/docs/notice/${findInfo[i].attachment}`, function (errDelete) {
                if (errDelete) console.log(errDelete+"_"+"Notice Deleted! Not found file!");

                
              
              });
           }

           res.send({msg: "Notice Deleted! Successfully!", alert: "success"})
            
        }
    })

        }

    })

}




exports.public_notice_download= (req, res)=>{
    let {id} =req.query;

    let sql= `SELECT attachment FROM notice WHERE ID=${id}`
    sqlmap.query(sql, (err, info)=>{
        if(err) console.log(err.sqlMessage);
        else
        {
            if(info.length>0)
            {
                res.download(`./public/docs/notice/${info[0].attachment}`)
                
            }
            else 
            {
                res.redirect("/pu/notice/page")
            }
        }
    })
}




exports.admin_notice_download= (req, res)=>{
    let {id} =req.query;

    let sql= `SELECT attachment FROM notice WHERE ID=${id}`
    sqlmap.query(sql, (err, info)=>{
        if(err) console.log(err.sqlMessage);
        else
        {
            if(info.length>0)
            {
                res.download(`./public/docs/notice/${info[0].attachment}`)
                
            }
            else 
            {
                res.redirect("/admin/notice/page")
            }
        }
    })
}






    
    
  