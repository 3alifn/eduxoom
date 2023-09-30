const express = require("express")

const { sqlmap , multer, randomBytes, createHmac} = require("../server")
const app = express()
const fs= require('fs')
const path= require('path')
const sharp= require("sharp");


const multer_location= multer.diskStorage({
  destination: (req, file, cb)=>{
   cb(null, "./public/image/eventnews/")
  } ,

  filename: (req, file, cb)=>{

    cb(null, new Date().getTime()+"_"+file.originalname)
  },
  
})



exports.multer_upload= multer({
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

})


const multer_location_images= multer.diskStorage({
  destination: (req, file, cb)=>{
   cb(null, "./public/image/eventnews/")
  } ,

  filename: (req, file, cb)=>{
    const randomString= randomBytes(3).toString('hex');
    cb(null, randomString+'_'+file.originalname)
  },
  
})



exports.multer_upload_eventnews= multer({
  storage: multer_location_images,

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

})


// admin event news part

exports.admin_eventnews_post= async(req, res)=>{

  const {title, e_date, description, images}= req.body;
  const type= 'eventnews';
  const dataid= Math.random()*900000000;

  for (let x = 0; x < req.files.length; x++) {
    const { filename: image } = req.files[x];
   
  if(req.files[x].size<1048576){

    await sharp(req.files[x].path)
    .jpeg({ quality: 50 })
    .toFile(
        path.resolve(path.resolve(req.files[x].destination, 'resized',image))
    )
    fs.unlinkSync(req.files[x].path)

    }

    else {

      
      await sharp(req.file.path)
      .jpeg({ quality: 50 })
      .toFile(
          path.resolve(path.resolve(req.files[x].destination, 'resized',image))
      )

  fs.unlinkSync(req.files[x].path)
    
      }
    }
  
  
  
 for (let index=0; index < req.files.length; index++) {
  sqlmap.query(`INSERT INTO aef (dataid, type, title, e_date, description, image )VALUES('${dataid}','${type}', '${title}', '${e_date}', '${description}', '${req.files[index].filename}')`, (err, next)=>{
      if(err) console.log(err.sqlMessage);
  })
}

res.send({msg: 'Image Added!', alert: 'success'})


}




exports.admin_eventnews_get= (req, res)=>{
  const {type}= req.body;
  sqlmap.query(`SELECT * FROM aef WHERE type='${type}'  ORDER BY ID DESC`, (err, info)=>{
        if(info.length>0){

      let tabledata= '';

      for (const index in info) {

        tabledata+=`

        <tr>
                <td class="p-3"> <input class="shadowx checkout form-check-input" type="checkbox" value="${info[index].ID}" name="checkout[]" id=""></td>
                <td class="fw-semibold text-muted">

                  <img class="shadowx" style="width: 60px; height: 40px;" src="/image/eventnews/resized/${info[index].image}" alt="">
                  ${info[index].title}
                </td>

                <td class="fw-semibold text-muted">${info[index].e_date}</td>

                <td class="fw-semibold text-muted">
                  <div class="dropdown">
                    <button data-bs-toggle="dropdown" class="btn btn-link dropdown-toggle shadowx"> <i
                        class="bi bi-three-dots-vertical"></i></button>
                    <div class="dropdown-menu">
                      <button type='button' onclick='_edit_pull(${info[index].ID})' class="btn  dropdown-item btn-link p-2"><i class="bi bi-pen p-1"></i>Edit</button>
                      <button type='button' onclick='_delbox_pull(${info[index].ID})' class="btn dropdown-item btn-link p-2"><i class="bi bi-trash p-1"></i>Delete</button>
                    </div>
                  </div>
                </td>

              </tr>
         
           
        `       
      }

      res.send({tabledata})


    }

  })

}



exports.admin_carousel_delete= (req, res)=>{

  let {ID}= req.body;

  sqlmap.query(`SELECT * FROM carousel WHERE ID = ${ID}`, (errInfo, findInfo)=>{
    if(errInfo) console.log("data not found!")
    
    else {

        
sqlmap.query(`DELETE FROM carousel WHERE ID=${ID}`, (err, next)=>{
    if(err) console.log(err.sqlMessage);
    else
    {

       for (const index in findInfo) {
        fs.unlink(`./public/image/carousel/resized/${findInfo[index].item_name}`, function (errDelete) {
            if (errDelete) console.log(errDelete+"_"+"Data Deleted! Not found file!");

            
          
          });
       }

       res.send({msg: "Data Deleted! Successfully!", alert: "success"})
        
    }
})

    }

})





}



