const express= require('express');
const app= express();
const {sqlmap}= require('../server');

exports.admin_class_section_main_post=(req, res)=>{
  const {className, at_status}= req.body;
  sqlmap.query( `UPDATE class_section SET class_status='${at_status}' WHERE domain='${req.hostname}' AND  class='${className}'`, (err, next)=>{
      if(err) console.log(err.sqlMessage);
      else res.send({msg: 'updated...'})
  })

}

exports.admin_class_section_post=(req, res)=>{
    const {elementid, at_status}= req.body;
    sqlmap.query( `UPDATE class_section SET at_status='${at_status}' WHERE domain='${req.hostname}' AND  ID=${elementid}`, (err, next)=>{
        if(err) console.log(err.sqlMessage);
        else res.send({msg: 'updated...'})
    })

}

exports.admin_class_section_get= (req, res)=>{
    
    sqlmap.query(`SELECT * FROM class_section WHERE domain='${req.hostname}' GROUP BY class ORDER BY ID`, (err, infomain)=>{
    sqlmap.query(`SELECT * FROM class_section WHERE domain='${req.hostname}' ORDER BY ID LIMIT 15`, (err, info)=>{
        if(err) console.log(err.sqlMessage);

        
      var elementmain= ` <div class="col-11 m-auto">
      <ul class="list-group">`


     for (let index = 0; index < infomain.length; index++) {
      elementmain+=`
      <li class="list-group-item shadow-1 m-1 list-group-item-success fw-bold">${infomain[index].class}
      <button data-status="${infomain[index].class_status}" data-id="${infomain[index].class}" class="btn fw-bold float-end ${infomain[index].class_status=='on'?'btn-success':'btn-danger'} pushedmain">service ${infomain[index].class_status}</button>

    </li>
      `
      
  }

  elementmain+='</ul> </div>'
        
        var elementdata= 
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
            elementdata+=`
            
            <tr>
            <td><li class="list-group-item p-2 list-group-item-success fw-bold">${info[index].class}</li></td>
            <td><li class="list-group-item p-2 list-group-item-success fw-bold">${info[index].section}</li></td>
            <td>
            <li class="list-group-item p-2  list-group-item-success fw-bold">
              <button data-status="${info[index].at_status}" data-id="${info[index].ID}" class="btn fw-bold ${info[index].at_status=='on'?'btn-success':'btn-danger'} pushed">${info[index].at_status}</button>
            </li>
            </td>
          </tr> 

            `
            
        }

        elementdata+=`
        </tbody>
        </table>
      </div>`

      
        res.send({elementmain,elementdata})
    })
    })

 

}

exports.pu_class_secton_rm=(req, res)=>{

    sqlmap.query(`SELECT * FROM class_section WHERE domain='${req.hostname}' AND  class_status='off' GROUP BY class ORDER BY ID`, (err, cls)=>{
    sqlmap.query(`SELECT * FROM class_section WHERE domain='${req.hostname}' AND  at_status='off'`, (err, clss)=>{
        if(err) console.log(err.sqlMessage);
        else res.send({cls, clss})
        
    })
    })

}

