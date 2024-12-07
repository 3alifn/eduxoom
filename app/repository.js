const express = require("express")

const { sqlmap , multer, randomBytes, createHmac} = require("../server")
const app = express()
const fs= require('fs')
const path= require('path')
const sharp= require("sharp");


const multer_location= multer.diskStorage({
  destination: (req, file, cb)=>{
   cb(null, "./public/image/repository/")
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
   cb(null, "./public/image/repository/")
  } ,

  filename: (req, file, cb)=>{
    const randomString= randomBytes(3).toString('hex');
    cb(null, randomString+'_'+file.originalname)
  },
  
})



exports.multer_upload_repository= multer({
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


// admin repository settings

exports.admin_repository_post= async(req, res)=>{

  const {datatype, title, e_date, description, images}= req.body;
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
  
  
  
    for (let index = 0; index < req.files.length; index++) {
      sqlmap.query(
          `INSERT INTO repository (domain, dataid, datatype, title, e_date, description, image) VALUES (?, ?, ?, ?, ?, ?, ?)`,
          [req.cookies["hostname"], dataid, datatype, title, e_date, description, req.files[index].filename],
          (err, next) => {
              if (err) {
                  console.log(err.sqlMessage);
                  return;
              }
          }
      );
  }
  

res.send({msg: 'Post successfully!', alert: 'success'})


}


exports.admin_repository_get= (req, res)=>{
  const {datatype}= req.body;
  sqlmap.query(`SELECT * FROM repository WHERE domain=? AND datatype=? GROUP BY dataid ORDER BY e_date DESC`, [req.cookies["hostname"], datatype], (err, info)=>{
        if(info.length>0){

      let tabledata= '';

      for (const index in info) {

        tabledata+=`

        <tr>
                <td class="p-3"> <input class="shadowx checkout form-check-input" type="checkbox" value="${info[index].dataid}" name="dataid[]" id=""></td>
                <td class="fw-semibold text-muted">

                  <img class="shadowx" style="width: 60px; height: 40px;" src="/image/repository/resized/${info[index].image}" alt="">
                
                </td>

                <td> <p class='p-1'>${info[index].title}</p></td>

                <td class="fw-semibold text-muted">${info[index].e_date}</td>

                <td class="fw-semibold text-muted">
                  <div class="dropdown">
                    <button data-bs-toggle="dropdown" class="btn btn-link dropdown-toggle shadowx"> <i
                        class="bi bi-three-dots-vertical"></i></button>
                    <div class="dropdown-menu">
                      <a  href='/admin/repository/update/page/${info[index].datatype}/${info[index].dataid}' class="btn  dropdown-item btn-link p-2"><i class="bi bi-pen p-1"></i>view and edit</a>
                      <button type='button' onclick='_delbox_push(${info[index].dataid})' class="btn dropdown-item btn-link p-2"><i class="bi bi-trash p-1"></i>delete forever</button>
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

exports.admin_repository_update_page = (req, res) => {
  const { datatype, dataid } = req.params;

  sqlmap.query(
      `SELECT * FROM repository WHERE domain=? AND datatype=? AND dataid=?`,
      [req.cookies["hostname"], datatype, dataid],
      (err, info) => {
          if (err) {
              console.log(err.sqlMessage);
              return;
          }
          res.render('admin/repository_update', { info });
      }
  );
};



exports.admin_repository_rm = (req, res) => {
  const { dataid } = req.body;

  if (dataid === undefined) {
      res.send({ msg: "Data not found!", alert: "alert-info" });
      return;
  }

  sqlmap.query(
      `SELECT * FROM repository WHERE domain=? AND dataid IN (?)`,
      [req.cookies["hostname"], dataid],
      (errInfo, findInfo) => {
          if (errInfo) {
              console.log("data not found!");
              return;
          }

          sqlmap.query(
              `DELETE FROM repository WHERE domain=? AND dataid IN (?)`,
              [req.cookies["hostname"], dataid],
              (err, next) => {
                  if (err) {
                      console.log(err.sqlMessage);
                      return;
                  }

                  for (const index in findInfo) {
                      fs.unlink(`./public/image/repository/resized/${findInfo[index].image}`, function (errDelete) {
                          if (errDelete) {
                              console.log(errDelete + "_" + "Data Deleted! Not found file!");
                          }
                      });
                  }

                  res.send({ msg: "Data Deleted! Successfully!", alert: "alert-success" });
              }
          );
      }
  );
};


exports.admin_repository_img_rm = (req, res) => {
  const { dataid } = req.body;

  if (dataid === undefined) {
      res.send({ msg: "Data not found!", alert: "alert-info" });
      return;
  }

  sqlmap.query(
      `SELECT * FROM repository WHERE domain=? AND ID IN (?)`,
      [req.cookies["hostname"], dataid],
      (errInfo, findInfo) => {
          if (errInfo) {
              console.log("data not found!");
              return;
          }

          sqlmap.query(
              `DELETE FROM repository WHERE domain=? AND ID IN (?)`,
              [req.cookies["hostname"], dataid],
              (err, next) => {
                  if (err) {
                      console.log(err.sqlMessage);
                      return;
                  }

                  for (const index in findInfo) {
                      fs.unlink(`./public/image/repository/resized/${findInfo[index].image}`, function (errDelete) {
                          if (errDelete) {
                              console.log(errDelete + "_" + "Data Deleted! Not found file!");
                          }
                      });
                  }

                  res.send({ msg: "Data Deleted! Successfully!", alert: "alert-success" });
              }
          );
      }
  );
};


exports.admin_repository_update_post = (req, res) => {
  const { datatype, dataid, title, e_date, description } = req.body;

  sqlmap.query(
      `UPDATE repository SET title=?, e_date=?, description=? WHERE domain=? AND dataid=?`,
      [title, e_date, description, req.cookies["hostname"], dataid],
      (err, update) => {
          if (err) {
              console.log(err.sqlMessage);
              return;
          }
          res.send({ alert: 'alert-success', msg: 'Updated!' });
      }
  );
};




exports.admin_repository_img_update_post= async(req, res)=>{
  const {datatype, dataid, title, e_date, description, images}= req.body;
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
  
  
  
    for (let index = 0; index < req.files.length; index++) {
      sqlmap.query(
          `INSERT INTO repository (domain, dataid, datatype, title, e_date, description, image) VALUES (?, ?, ?, ?, ?, ?, ?)`,
          [req.cookies["hostname"], dataid, datatype, title, e_date, description, req.files[index].filename],
          (err, next) => {
              if (err) {
                  console.log(err.sqlMessage);
                  return;
              }
          }
      );
  }
  

res.send({msg: 'Update successfully!', alert: 'success'})


}


exports.public_facilities_page = (req, res) => {
  sqlmap.query(
      `SELECT * FROM repository WHERE domain=? AND datatype=? GROUP BY dataid ORDER BY ID DESC`,
      [req.cookies["hostname"], 'facilities'],
      (err, info_f) => {
          if (err) {
              console.log(err.sqlMessage);
              return;
          }
          res.render('public/facilities_page', { info_f });
      }
  );
};


exports.public_facilities_view = (req, res) => {
  const { dataid } = req.params;

  sqlmap.query(
      `SELECT * FROM repository WHERE domain=? AND datatype=? AND ID=?`,
      [req.cookies["hostname"], 'facilities', dataid],
      (err, info_f) => {
          if (err) {
              console.log(err.sqlMessage);
              return;
          }
          res.render('public/facilities_view', { info_f });
      }
  );
};



exports.public_achievement_page = (req, res) => {
  sqlmap.query(
      `SELECT * FROM repository WHERE domain=? AND datatype=? GROUP BY dataid ORDER BY ID DESC`,
      [req.cookies["hostname"], 'achievement'],
      (err, info_a) => {
          if (err) {
              console.log(err.sqlMessage);
              return;
          }
          res.render('public/achievement_page', { info_a });
      }
  );
};


exports.public_achievement_view = (req, res) => {
  const { dataid } = req.params;

  sqlmap.query(
      `SELECT * FROM repository WHERE domain=? AND datatype=? AND ID=?`,
      [req.cookies["hostname"], 'achievement', dataid],
      (err, info_a) => {
          if (err) {
              console.log(err.sqlMessage);
              return;
          }
          res.render('public/achievement_view', { info_a });
      }
  );
};



exports.public_eventnews_page = (req, res) => {
  const { dataid } = req.params;

  sqlmap.query(
      `SELECT * FROM repository WHERE domain=? AND datatype=? GROUP BY dataid ORDER BY ID DESC`,
      [req.cookies["hostname"], 'eventnews'],
      (err, info_e) => {
          if (err) {
              console.log(err.sqlMessage);
              return;
          }
          res.render('public/eventnews_page', { info_e });
      }
  );
};


exports.public_eventnews_view = (req, res) => {
  const { dataid } = req.params;

  sqlmap.query(
      `SELECT * FROM repository WHERE domain=? AND datatype=? AND ID=?`,
      [req.cookies["hostname"], 'eventnews', dataid],
      (err, info_e) => {
          if (err) {
              console.log(err.sqlMessage);
              return;
          }
          res.render('public/eventnews_view', { info_e });
      }
  );
};

