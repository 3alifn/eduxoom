const express = require("express")
const { sqlmap , multer, sharp, randomBytes, createHmac} = require("../server")
const app = express()
const fs= require('fs')
const path= require('path')


const multer_location= multer.diskStorage({
  destination: (req, file, cb)=>{
   cb(null, "./public/image/gallery/")
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


const multer_location_carousel= multer.diskStorage({
  destination: (req, file, cb)=>{
   cb(null, "./public/image/school/")
  } ,

  filename: (req, file, cb)=>{
    const randomString= randomBytes(3).toString('hex');
    cb(null, randomString+'_'+file.originalname)
  },
  
})



exports.multer_upload_carousel= multer({
  storage: multer_location_carousel,

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




// public gallery..........

exports.public_gallery_image_get= (req, res)=>{


  let sql= `SELECT * FROM gallery WHERE item_type='image' GROUP BY data_id ORDER BY ID DESC`


    sqlmap.query(sql, (err, info)=>{
        if(err) console.log(err.sqlMessage);

        if(info){
              res.render('public/gallery_image_page', {info})


        } else res.send('<center><h1>Image not found!</h1></center>')

    })

}


exports.public_gallery_image_data_get= (req, res)=>{
 const {dataid}= req.params;
  let sql= `SELECT * FROM gallery WHERE item_type='image' AND data_id='${dataid}' ORDER BY ID DESC`


    sqlmap.query(sql, (err, info)=>{
        if(err) console.log(err.sqlMessage);

        if(info){
          res.render('public/gallery_image_data', {info})


    } else res.send('<center><h1>Image not found!</h1></center>')


    })

}




exports.public_gallery_video_get= (req, res)=>{
  let sql= `SELECT * FROM gallery WHERE item_type='video' GROUP BY data_id ORDER BY ID DESC`
    sqlmap.query(sql, (err, info)=>{
        if(err) console.log(err.sqlMessage);

        if(info){
        
         res.render('public/gallery_video_page', {info})

        } else res.send('<center><h1>Video not found!</h1></center>')

    })

}



exports.public_gallery_video_data_get= (req, res)=>{
  const {dataid}= req.params;

  let sql= `SELECT * FROM gallery WHERE item_type='video' AND data_id='${dataid}' ORDER BY ID DESC`


    sqlmap.query(sql, (err, info)=>{
        if(err) console.log(err.sqlMessage);

        if(info){
        
          if(info){
        
            res.render('public/gallery_video_data', {info})
   
           } else res.send('<center><h1>Video not found!</h1></center>')

        }

    })

}







// admin carousel part

exports.admin_carousel_post= async (req, res)=>{


  for (let x = 0; x < req.files.length; x++) {
    const { filename: image } = req.files[x];
   
  if(req.files[x].size<1048576){
    await sharp(req.files[x].path)
    //  .resize(4000, 4000)
    //  .jpeg({ quality: 99 })
     .toFile(
         path.resolve(req.files[x].destination,'resized',image)
     )
     fs.unlinkSync(req.files[x].path)
  
    }

    else {
      await sharp(req.files[x].path)
      //  .resize(4000, 4000)
       .jpeg({ quality: 20 })
       .toFile(
           path.resolve(req.files[x].destination,'resized',image)
       )
       fs.unlinkSync(req.files[x].path)
    
      }
    }
  
  
  
 for (let index=0; index < req.files.length; index++) {
  sqlmap.query(`INSERT INTO carousel (item_name)VALUES('${req.files[index].filename}')`, (err, next)=>{
      if(err) console.log(err.sqlMessage);
      
  })
}

res.send({msg: 'Image Added!', alert: 'success'})


}





exports.admin_carousel_get= (req, res)=>{

  sqlmap.query(`SELECT * FROM carousel ORDER BY ID DESC LIMIT 12`, (err, info)=>{

    if(info.length>0){

      let listData= '';

      for (const index in info) {

        listData+= `
        <div class="col-6 col-md-3 m-auto ">
          
        <div class="card" id="">
        
           
          <img class='card-img-top bg-demo-img-color' width="100%" src="/image/school/resized/${info[index].item_name}" alt="404">
          <span data-id="${info[index].ID}" onclick='_delbox_pull(${info[index].ID})' class='btn bi bi-trash-fill'></span>
        </div>
                  
         </div> 
         
           
        `       
      }

      res.send({listData})


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
        fs.unlink(`./public/image/school/resized/${findInfo[index].item_name}`, function (errDelete) {
            if (errDelete) console.log(errDelete+"_"+"Data Deleted! Not found file!");

            
          
          });
       }

       res.send({msg: "Data Deleted! Successfully!", alert: "success"})
        
    }
})

    }

})





}




exports.public_carousel_get= (req, res)=>{ 

  sqlmap.query(`SELECT * FROM carousel ORDER BY ID DESC LIMIT 12`, (err, info)=>{

    if(info.length>0){

      let listData= '';
      let listDataBtn= '';

      for (const x in info) {

   
        listDataBtn+= `
    <button style="padding: 1px;" class="btn  text-secondary ${x==0?'active':''}" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="${x}"  aria-current="true" ></button>

        `       
      }
      for (const index in info) {

   

        listData+= `
 

        <div class="carousel-item  ${index==0?'active':''}" >
        <img class="d-block w-100 responsive-img"  src="/image/school/resized/${info[index].item_name}" alt="404">
        </div>
        `       
      }

      res.send({listData, listDataBtn})


    }

  })

}






// admin gallery image part

exports.admin_gallery_image_get= (req, res)=>{

        var sqlgalleryGet= `SELECT * FROM gallery WHERE item_type='image' GROUP BY data_id ORDER BY ID DESC`
  

    sqlmap.query(sqlgalleryGet, (err, info)=>{
        if(err) console.log(err.sqlMessage);

        if(info){
           let listData= '';

           for (let index = 0; index < info.length; index++) {
            listData+= `
            <div class="col-10">
            <div class="list-group">

            <a href="/admin/gallery/image/data/${info[index].data_id}/${info[index].item_title}" class="list-group-item list-group-item-action"> 
            <input <input style="transform: scale(1.5);"  type="checkbox" name="imageid" value="${info[index].data_id}"> <span class='ms-2'>${info[index].item_title}</span></a>
            </div>
         </div>
            `

        }

        res.send({listData})

        }

        else res.send(404)


    })

}



exports.admin_gallery_image_post= async (req, res)=>{
  let {itemTitle}= req.body;
  for (let x = 0; x < req.files.length; x++) {
    const { filename: image } = req.files[x];

  if(req.files[x].size<1048576){
    await sharp(req.files[x].path)
    //  .resize(4000, 4000)
    //  .jpeg({ quality: 99 })
     .toFile(
         path.resolve(req.files[x].destination,'resized',image)
     )
     fs.unlinkSync(req.files[x].path)
  
    }
    else {
      await sharp(req.files[x].path)
      //  .resize(4000, 4000)
       .jpeg({ quality: 20 })
       .toFile(
           path.resolve(req.files[x].destination,'resized',image)
       )
       fs.unlinkSync(req.files[x].path)
    
      }
    }





   const randomString= Math.random()*900000000;
  
 for (let index=0; index < req.files.length; index++) {
  sqlmap.query(`INSERT INTO gallery (item_type, item_title, item_name, data_id)VALUES('image', '${itemTitle}', '${req.files[index].filename}', '${randomString}')`, (err, next)=>{
      if(err) console.log(err.sqlMessage);
      
  })


  
 }


//  console.log(itemTitle, dataId, );

  res.send({msg: "gallery Added Successfully!", alert: "success"})
}


exports.admin_gallery_image_data_post= async (req, res)=>{
  let {itemTitle, dataId}= req.body;

  for (let x = 0; x < req.files.length; x++) {
    const { filename: image } = req.files[x];

  if(req.files[x].size<1048576){
    await sharp(req.files[x].path)
    //  .resize(4000, 4000)
    //  .jpeg({ quality: 99 })
     .toFile(
         path.resolve(req.files[x].destination,'resized',image)
     )
     fs.unlinkSync(req.files[x].path)
  
    }
    else {
      await sharp(req.files[x].path)
      //  .resize(4000, 4000)
       .jpeg({ quality: 20 })
       .toFile(
           path.resolve(req.files[x].destination,'resized',image)
       )
       fs.unlinkSync(req.files[x].path)
    
      }
    }

 for (let index=0; index < req.files.length; index++) {
  sqlmap.query(`INSERT INTO gallery (item_type, item_title, item_name, data_id)VALUES('image', '${itemTitle}', '${req.files[index].filename}', '${dataId}')`, (err, next)=>{
      if(err) console.log(err.sqlMessage);
      
  })


  
 }



  res.send({msg: "gallery Added Successfully!", alert: "success"})

}


exports.admin_gallery_image_delete= (req, res)=>{
  let dataId=  req.body.imageId;

 sqlmap.query(`SELECT * FROM gallery WHERE data_id IN (${dataId})`, (errInfo, findInfo)=>{
     if(errInfo) console.log("data not found!")
     
     else {
 
         
 sqlmap.query(`DELETE FROM gallery WHERE data_id IN (${dataId})`, (err, next)=>{
     if(err) console.log(err.sqlMessage);
     else
     {
 
        for (const index in findInfo) {
         fs.unlink(`./public/image/gallery/resized/${findInfo[index].item_name}`, function (errDelete) {
             if (errDelete) console.log(errDelete+"_"+"Data Deleted! Not found file!");
 
             
           
           });
        }
 
        res.send({msg: "Deleted! Successfully!", alert: "success"})
         
     }
 })
 
     }
 
 })

}




exports.admin_gallery_image_data_get= (req, res)=>{
 const dataid= req.body.dataid;

  let sql= `SELECT * FROM gallery WHERE item_type='image' AND data_id='${dataid}' ORDER BY ID DESC`


    sqlmap.query(sql, (err, info)=>{
        if(err) console.log(err.sqlMessage);

        if(info){
        
           let listData= '';

           for (let index= 0; index < info.length; index++) {
            listData+= `
   
                  <div class="col-10 col-md-3">
          
                  <div class="card" id="">
                  <input value='${info[index].ID}' type="checkbox" name="imageid" style="position: absolute; height: 20px; width: 20px;" >
                    <img class='card-img-top bg-demo-img-color' width="100%" height='140px' src="/image/gallery/resized/${info[index].item_name}" alt="...">
                  </div>

                   </div> 
            `

        }

        res.send({listData})

        }

    })

}


exports.admin_gallery_image_data_delete= (req, res)=>{
  let dataId=  req.body.imageId;

 sqlmap.query(`SELECT * FROM gallery WHERE ID IN (${dataId})`, (errInfo, findInfo)=>{
     if(errInfo) console.log("data not found!")
     
     else {
 
         
 sqlmap.query(`DELETE FROM gallery WHERE ID IN (${dataId})`, (err, next)=>{
     if(err) console.log(err.sqlMessage);
     else
     {
 
        for (const index in findInfo) {
         fs.unlink(`./public/image/gallery/resized/${findInfo[index].item_name}`, function (errDelete) {
             if (errDelete) console.log(errDelete+"_"+"Data Deleted! Not found file!");
 
             
           
           });
        }
 
        res.send({msg: "Deleted! Successfully!", alert: "success"})
         
     }
 })
 
     }
 
 })

}





// admin gallery video part 

exports.admin_gallery_video_post= (req, res)=>{
  let {itemLink, itemTitle}= req.body;
  let dataId=Math.random()*900000;
 for (let index = 0; index < itemLink.length; index++) {
  sqlmap.query(`INSERT INTO gallery (item_type, item_title, item_name, data_id)VALUES('video', '${itemTitle}', '${itemLink[index].replaceAll("/watch?v=", "/embed/").replaceAll("//youtu.be/", "//youtube.com/embed/")}', '${dataId}')`, (err, next)=>{
      if(err) console.log(err.sqlMessage);
      
  })
 }
  

  res.send({msg: "gallery Added Successfully!", alert: "success"})
}


exports.admin_gallery_video_data_post= (req, res)=>{
  let {itemLink, itemTitle, dataid}= req.body;
 for (let index = 0; index < itemLink.length; index++) {
  sqlmap.query(`INSERT INTO gallery (item_type, item_title, item_name, data_id)VALUES('video', '${itemTitle}', '${itemLink[index].replaceAll("/watch?v=", "/embed/").replaceAll("//youtu.be/", "//youtube.com/embed/")}', '${dataid}')`, (err, next)=>{
      if(err) console.log(err.sqlMessage);
      
  })
 }
  

  res.send({msg: "gallery Added Successfully!", alert: "success"})
}


exports.admin_gallery_video_get= (req, res)=>{


  let sql= `SELECT * FROM gallery WHERE item_type='video' GROUP BY data_id ORDER BY ID DESC`


    sqlmap.query(sql, (err, info)=>{
        if(err) console.log(err.sqlMessage);

        if(info){
        
           let listData= '';

           for (let index = 0; index < info.length; index++) {
            listData+= `
          
                  <div class="col-10">
                  <div class="list-group">
      
                  <a href="/admin/gallery/video/data/${info[index].data_id}/${info[index].item_title}" class="list-group-item list-group-item-action"> 
                  <input <input style="transform: scale(1.5);"  type="checkbox" name="imageid" value="${info[index].data_id}"> <span class='ms-2'>${info[index].item_title}</span>
                  </a>
                  </div>
               </div>

            `

        }

        res.send({listData})

        }

    })

}


exports.admin_gallery_video_data_get= (req, res)=>{
  const dataid= req.body.dataid;
   let sql= `SELECT * FROM gallery WHERE item_type='video' AND data_id='${dataid}' ORDER BY ID DESC`
 
 
     sqlmap.query(sql, (err, info)=>{
         if(err) console.log(err.sqlMessage);
 
         if(info){
         
            let listData= '';
 
            for (let index= 0; index < info.length; index++) {
             listData+= `
    
                   <div class="col-10 col-md-3">
           
                   <div class="card" id="">
                   <input value='${info[index].ID}' type="checkbox" name="imageid" style="position: absolute; height: 20px; width: 20px;" >
                    <iframe class='video-scope card-img-top bg-demo-img-color' src="${info[index].item_name.replace("watch?v=", "embed/")}" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
                   </div>
 
                    </div> 
             `
 
         }
 
         res.send({listData})
 
         }
 
     })
 
 }



 exports.admin_gallery_video_delete= (req, res)=>{
  let dataId=  req.body.videoId;
        console.log(dataId);
 sqlmap.query(`DELETE FROM gallery WHERE data_id IN (${dataId})`, (err, next)=>{
     if(err) console.log(err.sqlMessage);
     else
     {
 
        res.send({msg: "Deleted! Successfully!", alert: "success"})
         
     }
 })
 
 
}




 exports.admin_gallery_video_data_delete= (req, res)=>{
  let dataId=  req.body.videoId;

 sqlmap.query(`SELECT * FROM gallery WHERE ID IN (${dataId})`, (errInfo, findInfo)=>{
     if(errInfo) console.log("data not found!")
     
     else {
 
         
 sqlmap.query(`DELETE FROM gallery WHERE ID IN (${dataId})`, (err, next)=>{
     if(err) console.log(err.sqlMessage);
     else
     {
 
 
        res.send({msg: "Deleted! Successfully!", alert: "success"})
         
     }
 })
 
     }
 
 })

}




