const express = require("express")
const { sqlmap, multer } = require("../server")
const app = express()
const fs= require("fs")
const path = require("path")
const { log } = require("console")

const location_library= multer.diskStorage({
  destination: (req, file, cb)=>{
   cb(null, "./public/image/library/")
  } ,

  filename: (req, file, cb)=>{

    cb(null, new Date().getTime()+"_"+file.originalname)
  },
  
})



exports.upload_library_image= multer({
  storage: location_library,

  limits: {fileSize: 1000000 * 2},
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

})



exports.admin_library_post = (req, res)=>{

    let {bookName, authorName, bookCopy,  description} = req.body
    if(req.file) var filenameBook= req.file.filename;
    else  var filenameBook= "book_image.png"

    let sql= `INSERT INTO library (domain, book_name, book_author, book_copy, description, book_image) 
    VALUES ('${req.hostname}', "${bookName}", "${authorName}", "${bookCopy}", "${description}", "${filenameBook}")`

    sqlmap.query(sql, (err, next)=>{
  
      if(err) console.log(err.sqlMessage)
  
      else {

     res.send({msg: "New Book Added Successfully!"})
        
      }
  
  
    })
  
  }



exports.admin_library_get= (req, res)=>{

    let sql= `SELECT * FROM library WHERE domain='${req.hostname}' ORDER BY ID DESC`
    sqlmap.query(sql, (err, info)=>{

 if(err) console.log(err.sqlMessage);

 else {
  if(info.length>0){

    var html= ""
    for (let i = 0; i < info.length; i++) {
        
        html+= ` <tr>
        <td> <span class="badge bg-light text-danger">${info[i].book_name}</span>
        <input type="checkbox" name="ID[]" id="" value="${info[i].ID}">
         </td>
        <td><span class="badge bg-light text-primary">${info[i].book_author}</span></td>
        <td><img width='100px' height='60px' class="bg-demo-img-color" src="/image/library/${info[i].book_image}"></td>
        <td><span class="badge bg-light text-dark">${ info[i].book_copy}</span></td>
        <td><span class="badge bg-light text-dark">${info[i].description}</span></td>
     
        <td> <span class="badge bg-light text-primary">${info[i].at_date.toString().substring(0, 15)}</span></td>
        <td><a class="btn" title="Edit" href="/admin/library/update/page?id=${info[i].ID}"><i class="fa-solid fa-pen"></i></a>
        </td>
        
        </tr>`
        
    }
    res.send({html})

  } else {
    res.send({html: "<strong>No Data Found...</strong>"})
  }
 }

    })

  
}



exports.admin_library_delete = (req, res)=>{
let filepathBook= path.dirname(__dirname)

    const {ID} = req.body;

    sqlmap.query(`SELECT * FROM library WHERE domain='${req.hostname}' AND  ID IN (${ID.toString()})`, (errInfo, findInfo)=>{
      if(errInfo) console.log("data not found!")
      
      else {
  
          
  sqlmap.query(`DELETE FROM library WHERE domain='${req.hostname}' AND  ID IN (${ID.toString()})`, (err, next)=>{
      if(err) console.log(err.sqlMessage);
      else
      {
  
         for (const i in findInfo) {
          fs.unlink(`./public/image/library/${findInfo[i].book_photos}`, function (errDelete) {
              if (errDelete) console.log(errDelete+"_"+"Data Deleted! Not found file!");
  
              
            
            });
         }
  
         res.send({msg: "Data Deleted! Successfully!", alert: "success"})
          
      }
  })
  
      }
  
  })
  
  
  

}




exports.admin_library_update_page = (req, res)=>{

  let {ID}= req.query.id;

 let sql= `SELECT * FROM library WHERE domain='${req.hostname}'`
  sqlmap.query(sql, (err, info)=>{
    if(err) console.log(err.sqlMessage);

    else res.render("admin/library_update_page", {info})
  })



}


exports.admin_library_update= (req, res)=>{

  let {ID, bookName, bookAuthor,  bookCopy, description}= req.body;
  let sql= `UPDATE library SET book_name="${bookName}", book_author="${bookAuthor}",  book_copy="${bookCopy}", description="${description}" WHERE domain='${req.hostname}' AND  ID="${ID}"`
  sqlmap.query(sql, (err, next)=>{

    if(err) console.log(err.sqlMessage);
    else res.redirect("/admin/library/page")
  })

}



exports.public_library_get= (req, res)=>{

    let sql= `SELECT * FROM library WHERE domain='${req.hostname}' ORDER BY ID DESC`
    sqlmap.query(sql, (err, info)=>{

 if(err) console.log(err.sqlMessage);

 else {
  if(info.length>0){

    var html= ""
    for (let i = 0; i < info.length; i++) {
        
        html+= ` <tr>
        <td> <span class="badge bg-light text-danger"><img width="50px" height="50px" src='/image/library/${info[i].book_photos}' alt="404"></span></td>
        <td> <span class="badge bg-light text-danger">${info[i].book_name}</span> </td>
        <td><span class="badge bg-light text-primary">${info[i].book_author}</span></td>
        <td><span class="badge bg-light text-dark">${info[i].book_copy}</span></td>
        <td><span class="badge bg-light text-dark">${info[i].description}</span></td>
     
        <td> <span class="badge bg-light text-primary">${info[i].at_date.toString().substring(0, 15)}</span></td>
        
        </tr>`
        
    }
    res.send({html})

  } else {
    res.send({html: "<strong>No Data Found...</strong>"})
  }
 }

    })

  }
