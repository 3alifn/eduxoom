const { json } = require("body-parser");
const {app, express, mysql, sqlmap, createHmac, randomBytes, fs, path} = require("../server")


const get_time= new Date().getTime();
const five_min= 300000;
const session= new Date().getUTCFullYear();


exports.pu_attn_checkout_logs = (req, res) => {
  const { domain, user } = req.body;

  sqlmap.query(
    `SELECT COUNT(id) AS lastSync, user FROM attn_record 
    WHERE domain=? AND user=? AND menual=0 AND checkout=1`, 
    [domain, user],
    (err, checkout) => {
      if (err) {
        console.log(err.sqlMessage);
        return;
      }
      res.send({ lastSyncData: checkout[0].lastSync });
    }
  );
};





exports.pu_attn_checkout_webapi_present = (req, res) => {
  const { domain, user_id, user, name, today, record_date, record_time } = req.body;

  const todaym = new Date(today);
  const currentDate = new Date().getDate();
  const currentMonth = todaym.getMonth();
  const currentYear = todaym.getFullYear();
  const get_cal = currentMonth + '-' + currentYear;
  const myMonth = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];
  const find_date = `${myMonth[currentMonth]}-${currentDate}-${currentMonth + 1}-${currentYear}`;
  const attn_date = new Date().toDateString();
  const duplicate_data = user_id + '_' + record_date;
  const tbname = user == 'Teacher' ? 'teachers' : user == 'Student' ? 'students' : 'staff';
  const colname = user == 'Teacher' ? 'teacher_id' : user == 'Student' ? 'student_id' : 'staff_id';
  const user_uid = user == 'Teacher' ? 'teacher_id' : user == 'Student' ? 'student_id' : 'staff_id';

  sqlmap.query(
      `SELECT user_id FROM attn_record WHERE domain=? AND user=? AND user_id=? AND record_date=? ORDER BY at_date DESC`,
      [domain, user, user_id, record_date],
      (errf, infof) => {
          if (errf) {
              res.json({ status: errf.sqlMessage });
              return;
          }

          if (infof.length === 0) {
              sqlmap.query(
                  `SELECT name, avatar, class, section, roll, ?? FROM ?? WHERE domain=? AND ??=?`,
                  [user_uid, tbname, domain, colname, user_id],
                  (erru, infou) => {
                      if (erru) {
                          res.json({ status: erru.sqlMessage });
                          return;
                      }

                      if (infou.length > 0) {
                          let sqli;
                          if (tbname == 'students') {
                              sqli = `
                                  INSERT INTO attn_record (domain, session, duplicate_data, class, section, user, user_id, roll, name, avatar, punch, checkout, at_status, take_time, get_cal, find_date, attn_date, record_date, record_time, year, month, day)
                                  VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, 'check-in', 1, 'present', ?, ?, ?, ?, ?, ?, ?, ?, ?)`;
                              sqlmap.query(
                                  sqli,
                                  [domain, session, duplicate_data, infou[0].class, infou[0].section, user, infou[0].student_id, infou[0].roll, infou[0].name, infou[0].avatar, get_time, get_cal, find_date, attn_date, record_date, record_time, currentYear, currentMonth, currentDate],
                                  (erri, insert) => {
                                      if (erri) {
                                          res.json({ status: erri.sqlMessage });
                                          return;
                                      }
                                      res.json({ msg: `"present now! ${infou[0].name} ${user_id} ${record_time}"` });
                                  }
                              );
                          } else if (tbname == 'teachers') {
                              sqli = `
                                  INSERT INTO attn_record (domain, session, duplicate_data, user, user_id, name, avatar, punch, checkout, at_status, take_time, get_cal, find_date, attn_date, record_date, record_time, year, month, day)
                                  VALUES (?, ?, ?, ?, ?, ?, 'check-in', 1, 'present', ?, ?, ?, ?, ?, ?, ?, ?, ?)`;
                              sqlmap.query(
                                  sqli,
                                  [domain, session, duplicate_data, user, infou[0].teacher_id, infou[0].name, infou[0].avatar, get_time, get_cal, find_date, attn_date, record_date, record_time, currentYear, currentMonth, currentDate],
                                  (erri, insert) => {
                                      if (erri) {
                                          res.json({ status: erri.sqlMessage });
                                          return;
                                      }
                                      res.json({ msg: `"present now! ${infou[0].name} ${user_id} ${record_time}"` });
                                  }
                              );
                          } else {
                              sqli = `
                                  INSERT INTO attn_record (domain, session, duplicate_data, user, user_id, name, avatar, punch, checkout, at_status, take_time, get_cal, find_date, attn_date, record_date, record_time, year, month, day)
                                  VALUES (?, ?, ?, ?, ?, ?, 'check-in', 1, 'present', ?, ?, ?, ?, ?, ?, ?, ?, ?)`;
                              sqlmap.query(
                                  sqli,
                                  [domain, session, duplicate_data, user, infou[0].staff_id, infou[0].name, infou[0].avatar, get_time, get_cal, find_date, attn_date, record_date, record_time, currentYear, currentMonth, currentDate],
                                  (erri, insert) => {
                                      if (erri) {
                                          res.json({ status: erri.sqlMessage });
                                          return;
                                      }
                                      res.json({ msg: `"present now! ${infou[0].name} ${user_id} ${record_time}"` });
                                  }
                              );
                          }
                      } else {
                          res.json({ msg: user_id + ' user id not found in database!' });
                      }
                  }
              );
          } else {
              res.json({ msg: user_id + ' user id already checked out!' });
          }
      }
  );
};




exports.pu_attn_checkout_webapi_absent_teacher = (req, res) => {
  const { domain, user, name } = req.body;
  const today = new Date();
  const currentDate = new Date().getDate();
  const currentMonth = today.getMonth();
  const currentYear = today.getFullYear();
  const get_cal = currentMonth + '-' + currentYear;
  const myMonth = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];
  const find_date = `${myMonth[currentMonth]}-${currentDate}-${currentMonth + 1}-${currentYear}`;
  const attn_date = new Date().toDateString();
  const record_date = new Date().toDateString();
  const record_time = new Date();

  sqlmap.query(
    `SELECT name, avatar, index_number, teacher_id FROM teachers 
     WHERE domain=? AND teacher_id NOT IN (
       SELECT user_id FROM attn_record WHERE domain=? AND record_date=?
     )`,
    [domain, domain, record_date],
    (errf, infof) => {
      if (errf) {
        console.log(errf.sqlMessage);
        return;
      }

      if (infof.length > 0) {
        for (let index = 0; index < infof.length; index++) {
          const sqli = `
            INSERT INTO attn_record (domain, session, duplicate_data, user, user_id, name, avatar, punch, checkout, at_status, take_time, get_cal, find_date, attn_date, record_date, record_time, year, month, day)
            VALUES (?, ?, ?, ?, ?, ?, ?, null, 0, 'absent', ?, ?, ?, ?, ?, ?, ?, ?)`;

          sqlmap.query(
            sqli,
            [domain, session, `${infof[index].teacher_id}_${record_date}`, user, infof[index].teacher_id, infof[index].name, infof[index].avatar, get_time, get_cal, find_date, attn_date, record_date, record_time, currentYear, currentMonth, currentDate],
            (erri, todo) => {
              if (erri) {
                console.log(erri.sqlMessage);
                return;
              }
              console.log(`Absent today! ${infof[index].name} ${infof[index].student_id} ${today}`);
            }
          );
        }
      }
    }
  );
};


exports.pu_attn_checkout_webapi_absent_staff = (req, res) => {
  const { domain, user, name } = req.body;
  const today = new Date();
  const currentDate = new Date().getDate();
  const currentMonth = today.getMonth();
  const currentYear = today.getFullYear();
  const get_cal = currentMonth + '-' + currentYear;
  const myMonth = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];
  const find_date = `${myMonth[currentMonth]}-${currentDate}-${currentMonth + 1}-${currentYear}`;
  const attn_date = new Date().toDateString();
  const record_date = new Date().toDateString();
  const record_time = new Date();

  sqlmap.query(
      `SELECT name, avatar, staff_id FROM staff 
       WHERE domain=? AND staff_id NOT IN (
         SELECT user_id FROM attn_record WHERE domain=? AND record_date=?
       )`,
      [domain, domain, record_date],
      (errf, infof) => {
          if (errf) {
              console.log(errf.sqlMessage);
              return;
          }

          if (infof.length > 0) {
              for (let index = 0; index < infof.length; index++) {
                  const sqli = `
                    INSERT INTO attn_record (domain, session, duplicate_data, user, user_id, name, avatar, punch, checkout, at_status, take_time, get_cal, find_date, attn_date, record_date, record_time, year, month, day)
                    VALUES (?, ?, ?, ?, ?, ?, ?, null, 0, 'absent', ?, ?, ?, ?, ?, ?, ?, ?)`;

                  sqlmap.query(
                      sqli,
                      [domain, session, `${infof[index].staff_id}_${record_date}`, user, infof[index].staff_id, infof[index].name, infof[index].avatar, get_time, get_cal, find_date, attn_date, record_date, record_time, currentYear, currentMonth, currentDate],
                      (erri, todo) => {
                          if (erri) {
                              console.log(erri.sqlMessage);
                              return;
                          }
                          console.log(`Absent today! ${infof[index].name} ${infof[index].staff_id} ${today}`);
                      }
                  );
              }
          }
      }
  );
};



exports.pu_attn_checkout_webapi_absent_student = (req, res) => {
  const { domain, user, name } = req.body;
  const today = new Date();
  const currentDate = new Date().getDate();
  const currentMonth = today.getMonth();
  const currentYear = today.getFullYear();
  const get_cal = currentMonth + '-' + currentYear;
  const myMonth = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];
  const find_date = `${myMonth[currentMonth]}-${currentDate}-${currentMonth + 1}-${currentYear}`;
  const attn_date = new Date().toDateString();
  const record_date = new Date().toDateString();
  const record_time = new Date();

  sqlmap.query(
      `SELECT name, avatar, class, section, roll, student_id FROM students 
       WHERE domain=? AND student_id NOT IN (
         SELECT user_id FROM attn_record WHERE domain=? AND record_date=?
       )`,
      [domain, domain, record_date],
      (errf, infof) => {
          if (errf) {
              console.log(errf.sqlMessage);
              return;
          }

          if (infof.length > 0) {
              for (let index = 0; index < infof.length; index++) {
                  const sqli = `
                    INSERT INTO attn_record (domain, session, duplicate_data, class, section, roll, user, user_id, name, avatar, punch, checkout, at_status, take_time, get_cal, find_date, attn_date, record_date, record_time, year, month, day)
                    VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, null, 0, 'absent', ?, ?, ?, ?, ?, ?, ?, ?, ?)`;

                  sqlmap.query(
                      sqli,
                      [domain, session, `${infof[index].student_id}_${record_date}`, infof[index].class, infof[index].section, infof[index].roll, user, infof[index].student_id, infof[index].name, infof[index].avatar, get_time, get_cal, find_date, attn_date, record_date, record_time, currentYear, currentMonth, currentDate],
                      (erri, todo) => {
                          if (erri) {
                              console.log(erri.sqlMessage);
                              return;
                          }
                          console.log(`Absent today! ${infof[index].name} ${infof[index].student_id} ${today}`);
                      }
                  );
              }
          }
      }
  );
};

