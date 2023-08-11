
var noviewportdata= [];
const noview= {
    
    port: function({file_id, append_id, file_type, max_kb_size}){
    if(file_id==undefined || append_id==undefined || file_type==undefined || max_kb_size==undefined){
      window.alert('Warning! Required object ({ file_id , append_id, file_type, max_kb_size })')
    } 
    
    
    else{
    
        $('#'+file_id).on('change', (event)=>{
          console.log(noviewportdata);
        for (let index = 0; index < event.target.files.length; index++) {
          const filetype= event.target.files[index].type;
          const filename= event.target.files[index].name;
          const filesize= event.target.files[index].size/1000;
        const tmppath = URL.createObjectURL(event.target.files[index]);
        
    
    if(filesize <= max_kb_size){
      
    
          
    
      if( file_type=='image' && filetype=='image/jpeg' || filetype=='image/jpg' || filetype=='image/png' || filetype=='image/gif'){
        $('#'+append_id).append(`
       <span class='_parent_rmElement_${event.target.files[index].lastModified}'>
        <img class="rounded" src="${tmppath}" width="200px" height="150px" alt="">
        </span>`)
         
        noviewportdata.push(event.target.files[index].name)

       } 
    
    
    
      
      else if( file_type=='audio' && filetype=='audio/mpeg'){
    
    $('#'+append_id).append(`<audio  controls src="${tmppath}"></audio>`)
    noviewportdata.push(event.target.files[index].name)

    
    }
    
    
    
     else if( file_type=='video' && filetype=='video/mp4'){
        $('#'+append_id).append(`<video width="300px" height="auto" controls src="${tmppath}"></video>
    `)
    noviewportdata.push(event.target.files[index].name)

      
       }
    
    
    
      else if(file_type=='pdf' && filetype=='application/pdf') {
    
    $('#'+append_id).append(`<p>goto visit for preview => <a target="_blank" href='${tmppath}'>${filename} </a></p>`)
    
    noviewportdata.push(event.target.files[index].name)

    }
    
    
    else {
      $('#'+append_id).append(`
    <div class="alert alert-primary" style="width: max-content;" role="alert">
    <strong>Warning! file extention allow only ${file_type}</strong>
    </div>`)
    
    }
    
    
        }
    
    else {
      $('#'+append_id).append(`
      <div class="alert alert-primary " style="width: max-content;" role="alert">
      <strong>Warning! maximum file size should ${max_kb_size}kb ${file_type==filetype?'':'and allow only '+file_type}</strong>
      </div>`)
        }
          
      }
      

    
      })
    
      }
    
    
    }
    }

    $(document).on('click', '.noview-close' , (e)=>{
      const rmdata= e.currentTarget.attributes[0].value;
      const rmdataPOP= e.currentTarget.attributes[1].value;
        $('._parent'+rmdata).remove()
       const ___rmdataPOP= noviewportdata.indexOf(rmdataPOP)
      noviewportdata.splice(___rmdataPOP, 0)
     console.log(noviewportdata);
    
    })
    