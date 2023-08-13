const express= require('express');
const app= express();
const {sqlmap}= require('../server');



exports.admin_class_section_post=(req, res)=>{
    const {elementid, at_status}= req.body;
    sqlmap.query( `UPDATE class_section SET at_status='${at_status}' WHERE ID=${elementid}`, (err, next)=>{
        if(err) console.log(err.sqlMessage);
        else res.send({msg: 'updated...'})
    })

}

exports.admin_class_section_get= (req, res)=>{
    
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

 

}

exports.pu_class_secton_rm=(req, res)=>{

    sqlmap.query(`SELECT * FROM class_section WHERE at_status='off'`, (err, info)=>{
        if(err) console.log(err.sqlMessage);
        else res.send({info})
    })

}

