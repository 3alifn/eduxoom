const { random } = require('sjcl');
const {app, sqlmap, multer, fs, path}= require('../server')
const sharp= require('sharp');


const multer_location = multer.diskStorage({
    destination: (req, file, cb) => {
        cb(null, "./public/image/staff/")
    },

    filename: (req, file, cb) => {

        cb(null, new Date().getTime() + "_" + file.originalname)
    },

})

exports.multer_upload_staff= multer({
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

})


exports.public_staff_page = (req, res) => {
  sqlmap.query(
      `SELECT * FROM staff WHERE domain=? ORDER BY ID DESC`,
      [req.cookies["hostname"]],
      (err, info) => {
          if (err) {
              console.log(sqlmap);
              return;
          }
          res.render('public/staff_page', { info });
      }
  );
};




exports.public_staff_profile_get = (req, res) => {
  const { dataid } = req.body;

  sqlmap.query(
      `SELECT * FROM staff WHERE domain=? AND ID=?`,
      [req.cookies["hostname"], dataid],
      (err, info) => {
          if (err) {
              console.log(err.sqlMessage);
              return;
          }

          if (info.length > 0) {
              let htmldata = `
   <center>
  <div class="bg-card-color-light pt-3  pb-3 rounded-top-5 rounded-start-5">
      <div class="card-image">
          <img class="avatar-circle" src="/image/staff/resized/${info[0].avatar}" alt="">
      </div>
  </div>
</center>

<center>
  
  <div class="ps-2 pt-3 pb-3 rounded-bottom-5 rounded-end-5">
      <div class="card-body text-start p-2">
    
          <div class="d-flex fw-semibold ">
             <div class="p-1 w-25">Name</div>
             <code class="p-1">:</code><div class="p-1 w-75">${info[0].name}</div>
            </div>    
            
            <div class="d-flex fw-semibold ">
             <div class="p-1 w-25">Age</div>
             <code class="p-1">:</code><div class="p-1 w-75">${info[0].age}</div>
            </div>
      
            <div class="d-flex fw-semibold ">
              <div class="p-1 w-25">Position</div>
              <code class="p-1">:</code> <div class="p-1 w-75">${info[0].position}</div>
             </div>
      
            <div class="d-flex fw-semibold ">
              <div class="p-1 w-25">Gender</div>
              <code class="p-1">:</code> <div class="p-1 w-75">${info[0].gender}</div>
             </div>
      
             <div class="d-flex fw-semibold ">
              <div class="p-1 w-25">Index no</div>
              <code class="p-1">:</code> <div class="p-1 w-75">${info[0].index_number}</div>
             </div>
      
             <div class="d-flex fw-semibold ">
              <div class="p-1 w-25">Email</div>
              <code class="p-1">:</code> <div class="p-1 w-75">${info[0].email}</div>
             </div>
      
      
             <div class="d-flex fw-semibold ">
              <div class="p-1 w-25">Phone</div>
              <code class="p-1">:</code><div class="p-1 w-75">${info[0].phone}</div>
             </div>
      
             <div class="d-flex fw-semibold ">
              <div class="p-1 w-25">Joining date</div>
              <code class="p-1">:</code><div class="p-1 w-75">${info[0].joining_date}</div>
             </div>      
            
    
      
      </div>
  </div>
</center>
<button data-dismiss="modal" class="btn float-end fw-semibold btn-link link-primary p-2 ms-auto mt-2 mb-b">Close</button>
 `;
              res.send({ htmldata });
          }
      }
  );
};




exports.admin_staff_get = (req, res) => {
          sqlmap.query(
              `SELECT * FROM staff WHERE domain=? ORDER BY ID DESC`,
              [req.cookies["hostname"]],
              (err, info) => {
                  if (err) {
                      console.log(err.sqlMessage);
                      return;
                  }
      
                  var tabledata = '';
                  for (let index = 0; index < info.length; index++) {
                      tabledata += `
                      <tr>
                          <td class="p-3">
                              <input class="shadowx checkout form-check-input" type="checkbox" value="${info[index].ID}" name="dataid[]" id="">
                          </td>
                          <td class="fw-semibold text-muted">
                              <img class="shadowx avatar-circle bg-card-color-light" style="width: 40px; height: 40px;" src="/image/staff/resized/${info[index].image}" alt="">
                              <span class="badge text-dark bg-light">${info[index].name}</span>
                          </td>
                          <td class="fw-semibold text-muted">
                              <span class="badge text-dark bg-light">${info[index].position}</span>
                          </td>
                          <td class="fw-semibold text-muted">
                              <div class="dropdown">
                                  <button data-bs-toggle="dropdown" class="btn btn-link dropdown-toggle shadowx">
                                      <i class="bi bi-three-dots-vertical"></i>
                                  </button>
                                  <div class="dropdown-menu">
                                      <button type='button' onclick='_penbox_pull(${info[index].ID})' class="btn dropdown-item btn-link p-2">
                                          <i class="bi bi-pen p-1"></i>view and edit
                                      </button>
                                      <button type='button' onclick='_delbox_push(${info[index].ID})' class="btn dropdown-item btn-link p-2">
                                          <i class="bi bi-trash p-1"></i>delete forever
                                      </button>
                                  </div>
                              </div>
                          </td>
                      </tr>`;
                  }
                  res.send({ tabledata });
              }
          );
};
      
      


exports.admin_staff_img_post = async (req, res) => {
  const { dataid } = req.body;

  if (req.file) {
      const { filename: image } = req.file;
      await sharp(req.file.path)
          .jpeg({ quality: 50 })
          .toFile(
              path.resolve(req.file.destination, 'resized', image)
          );
      fs.unlinkSync(req.file.path);
  }

  sqlmap.query(
      `UPDATE staff SET image=? WHERE domain=? AND ID=?`,
      [req.file.filename, req.cookies["hostname"], dataid],
      (err, next) => {
          if (err) {
              console.log(err.sqlMessage);
              return;
          }
          res.send({ msg: 'Update successfully!', alert: 'alert-success' });
      }
  );
};




exports.admin_staff_post = async (req, res) => {
  const { name, position, index_number, gender, age, email, phone, address, joining_date } = req.body;

  const avatar_png = req.file ? req.file.filename : (gender == "Female" ? "female_avatar.png" : "male_avatar.png");
  const staff_id = Math.floor(Math.random() * 900000000);
  if (req.file) {
      const { filename: image } = req.file;
      await sharp(req.file.path)
          .jpeg({ quality: 50 })
          .toFile(
              path.resolve(req.file.destination, 'resized', image)
          );
      fs.unlinkSync(req.file.path);
  }

  sqlmap.query(
      `INSERT INTO staff (domain, name, position, gender, index_number, staff_id, age, email, phone, address, joining_date, image)
      VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)`,
      [req.cookies["hostname"], name, position, gender, index_number, staff_id, age, email, phone, address, joining_date, avatar_png],
      (err, next) => {
          if (err) {
              console.log(err.sqlMessage);
              res.send({ msg: err.sqlMessage, alert: 'alert-danger' });
              return;
          }
          res.send({ msg: 'Added successfully', alert: 'alert-success' });
      }
  );
};


exports.admin_staff_penbox_pull = (req, res) => {
    const { dataid } = req.body;

    sqlmap.query(
        `SELECT * FROM staff WHERE domain=? AND ID=?`,
        [req.cookies["hostname"], dataid],
        (err, info) => {
            if (err) {
                console.log(err.sqlMessage);
                return;
            }

            var penboxdata = `
<div id="penboxform" data-bs-backdrop="static" class="row modal  p-2 mt-5">
    <div class="modal-dialog modal-content shadowx mt-3 bg-gradient bg-light text mb-5 col-12 m-auto">
        <form id="avatarform" action="#" method="post">
            <div class='pt-2 pb-2 bg-card-color-light d-flex justify-content-center'>
                <div>
                    <span class="avatar-append">
                        <img style="width: 100px; height: 100px" class="avatar-circle bg-card-color shadowx" src="/image/staff/resized/${info[0].image}" alt="">
                    </span>
                    <label title="Change profile" class="btn btn-link">
                        <i class="bi bi-pen fs-5"></i>
                        <input required type="file" name='image' class="avatar-file" style="display: none;">
                        <input type="hidden" name='dataid' value="${info[0].ID}">
                    </label>
                </div>
            </div>
            <div class="d-flex align-items-center justify-content-center">
                <button class="btn btn-link me-5">Update photo</button>
            </div>
        </form>
        <form id="penboxdata" class="penboxdata" method="post" action="#" onsubmit="return false">
            <div class="card shadowx">
                <div class="card-body fw-semibold">
                    <div class="d-flex fw-semibold m-2">
                        <input required type="hidden" name="dataid" value='${info[0].ID}'>
                        <div class="p-1 w-25">Position</div>
                        <input class="form-dev w-75 p-1" required type="text" value="${info[0].position}" placeholder="Gateman" name="position" id="">
                    </div>
                    <div class="d-flex fw-semibold m-2">
                        <div class="p-1 w-25">Name</div>
                        <input class="form-dev w-75 p-1" required type="text" value="${info[0].name}" placeholder="enter name" name="name" id="">
                    </div>
                    <div class="d-flex p-2 justify-content-between align-items-center">
                        <p class="w-25 fw-semibold m-auto">Gender</p>
                        <span class="w-75">
                            Male <input value="Male" class="form-check-input shadowx ms-2 me-2" ${info[0].gender == 'Male' ? 'checked' : null} type="radio" name="gender" id="">
                            Female <input value="Female" class="form-check-input shadowx ms-2" ${info[0].gender == 'Female' ? 'checked' : null} type="radio" name="gender" id="">
                        </span>
                    </div>
                    <div class="d-flex fw-semibold m-2">
                        <div class="p-1 w-25">Index No</div>
                        <input class="form-dev w-75 p-1" type="text" value="${info[0].index_number}" placeholder="enter index no" name="index_number" id="">
                    </div>
                    <div class="d-flex fw-semibold m-2">
                        <div class="p-1 w-25">Email</div>
                        <input class="form-dev w-75 p-1" type="email" value="${info[0].email}" placeholder="example@mail.com" name="email" id="">
                    </div>
                    <div class="d-flex fw-semibold m-2">
                        <div class="p-1 w-25">Phone</div>
                        <input required class="form-dev w-75 p-1" type="tel" value="${info[0].phone}" placeholder="enter phone no" name="phone" id="">
                    </div>
                    <div class="d-flex fw-semibold m-2">
                        <div class="p-1 w-25">Age</div>
                        <input class="form-dev w-75 p-1" type="number" value="${info[0].age}" placeholder="enter age" name="age" id="">
                    </div>
                    <div class="d-flex fw-semibold m-2">
                        <div class="p-1 w-25">Address</div>
                        <input class="form-dev w-75 p-1" type="text" value="${info[0].address}" placeholder="enter address" name="address" id="">
                    </div>
                    <div class="d-flex fw-semibold m-2">
                        <div class="p-1 w-25">Joining date</div>
                        <input class="form-dev w-75 p-1" type="date" value="${info[0].joining_date}" name="joining_date" id="">
                    </div>
                    <div class="d-flex justify-content-between text-muted m-2">
                        <button type="button" data-bs-dismiss="modal" class="btn btn-link">Close</button>
                        <input class="btn text-primary submitbtn nav-fill btn-hover shadowx" type="submit" value="Save and changes" id="">
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>
<script>
    noview.port({
        input_class: 'avatar-file',
        append_class: 'avatar-append',
        file_type: 'image',
        max_kb_size: 1024,
        multiple: false,
    })

    $('.avatar-file').on('change', () => {
        $('.avatar-append img').addClass('rounded-circle')
    })

    $('#avatarform').on('submit', (event) => {
        const formdata = new FormData($("#avatarform")[0])
        event.preventDefault();
        $.ajax({
            method: "post",
            url: "/admin/staff/img/post",
            data: formdata,
            dataType: "JSON",
            mimeType: 'multipart/form-data',
            cache: false,
            processData: false,
            contentType: false,
            beforeSend: function() {
                _spin_pull()
            },
            success: function(res) {
                _msg_pull(res.alert, res.msg)
                _spin_pop()
            }
        });
    })
</script>`;

            res.send({ penboxdata });
        }
    );
};



exports.admin_staff_penbox_push = (req, res) => {
  const { dataid, name, position, index_number, gender, age, email, phone, address, joining_date } = req.body;

  sqlmap.query(
      `UPDATE staff SET name=?, position=?, index_number=?, gender=?, age=?, email=?, phone=?, address=?, joining_date=? WHERE domain=? AND ID=?`,
      [name, position, index_number, gender, age, email, phone, address, joining_date, req.cookies["hostname"], dataid],
      (err, update) => {
          if (err) {
              console.log(err.sqlMessage);
              return;
          }
          res.send({ alert: 'alert-success', msg: 'Update successfully!' });
      }
  );
};





exports.admin_staff_rm = (req, res) => {
  const { dataid } = req.body;

  if (dataid == undefined) {
      res.send({ msg: "Data not found!", alert: "alert-info" });
      return;
  }

  sqlmap.query(
      `SELECT * FROM staff WHERE domain=? AND ID IN (?)`,
      [req.cookies["hostname"], dataid],
      (errInfo, findInfo) => {
          if (errInfo) {
              console.log("data not found!");
              return;
          }

          sqlmap.query(
              `DELETE FROM staff WHERE domain=? AND ID IN (?)`,
              [req.cookies["hostname"], dataid],
              (err, next) => {
                  if (err) {
                      console.log(err.sqlMessage);
                      return;
                  }

                  for (const index in findInfo) {
                      if (findInfo[index].image !== 'male_avatar.png' && findInfo[index].image !== 'female_avatar.png') {
                          fs.unlink(`./public/image/staff/resized/${findInfo[index].image}`, function (errDelete) {
                              if (errDelete) {
                                  console.log(errDelete + "_" + "Data Deleted! Not found file!");
                              }
                          });
                      }
                  }

                  res.send({ msg: "Data Deleted! Successfully!", alert: "alert-success" });
              }
          );
      }
  );
};
