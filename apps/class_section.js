const {sqlmap, express, app}= require('../configs/server');

exports.admin_class_section_main_post = (req, res) => {
    const { className, at_status } = req.body;
    sqlmap.query(
        `UPDATE class_section SET class_status=? WHERE domain=? AND class=?`,
        [at_status, res.locals.hostname, className],
        (err, next) => {
            if (err) {
                console.log(err.sqlMessage);
                return;
            }
            res.send({ msg: 'updated...' });
        }
    );
};



exports.admin_class_section_post = (req, res) => {
    const { elementid, at_status } = req.body;
    sqlmap.query(
        `UPDATE class_section SET at_status=? WHERE domain=? AND ID=?`,
        [at_status, res.locals.hostname, elementid],
        (err, next) => {
            if (err) {
                console.log(err.sqlMessage);
                return;
            }
            res.send({ msg: 'updated...' });
        }
    );
};



exports.admin_class_section_get = (req, res) => {
    sqlmap.query(
        `SELECT * FROM class_section WHERE domain=? GROUP BY class ORDER BY ID`,
        [res.locals.hostname],
        (err, infomain) => {
            if (err) {
                console.log(err.sqlMessage);
                return;
            }

            sqlmap.query(
                `SELECT * FROM class_section WHERE domain=? ORDER BY ID LIMIT 15`,
                [res.locals.hostname],
                (err, info) => {
                    if (err) {
                        console.log(err.sqlMessage);
                        return;
                    }

                    let elementmain = ` 
                    <div class="col-11 m-auto">
                    <ul class="list-group">`;

                    for (let index = 0; index < infomain.length; index++) {
                        elementmain += `
                        <li class="list-group-item shadow-1 m-1 list-group-item-success fw-bold">${infomain[index].class}
                        <button data-status="${infomain[index].class_status}" data-id="${infomain[index].class}" class="btn fw-bold float-end ${infomain[index].class_status == 'on' ? 'btn-success' : 'btn-danger'} pushedmain">service ${infomain[index].class_status}</button>
                        </li>`;
                    }

                    elementmain += `</ul> </div>`;

                    let elementdata = `
                    <div class="col-11 m-auto">
                    <table class="table table-bordered">
                    <thead>
                    <tr>
                    <th>CLASS</th>
                    <th>SECTION</th>
                    <th>STATUS</th>
                    </tr>
                    </thead>
                    <tbody>`;

                    for (let index = 0; index < info.length; index++) {
                        elementdata += `
                        <tr>
                        <td><li class="list-group-item p-2 list-group-item-success fw-bold">${info[index].class}</li></td>
                        <td><li class="list-group-item p-2 list-group-item-success fw-bold">${info[index].section}</li></td>
                        <td>
                        <li class="list-group-item p-2 list-group-item-success fw-bold">
                        <button data-status="${info[index].at_status}" data-id="${info[index].ID}" class="btn fw-bold ${info[index].at_status == 'on' ? 'btn-success' : 'btn-danger'} pushed">${info[index].at_status}</button>
                        </li>
                        </td>
                        </tr>`;
                    }

                    elementdata += `</tbody></table></div>`;

                    res.send({ elementmain, elementdata });
                }
            );
        }
    );
};





exports.pu_class_secton_rm = (req, res) => {
    sqlmap.query(
        `SELECT * FROM class_section WHERE domain=? AND class_status='off' GROUP BY class ORDER BY ID`,
        [res.locals.hostname],
        (err, cls) => {
            if (err) {
                console.log(err.sqlMessage);
                return;
            }

            sqlmap.query(
                `SELECT * FROM class_section WHERE domain=? AND at_status='off'`,
                [res.locals.hostname],
                (err, clss) => {
                    if (err) {
                        console.log(err.sqlMessage);
                        return;
                    }
                    res.send({ cls, clss });
                }
            );
        }
    );
};


