const noview= {

  port: function({input_class, append_class, file_type, max_kb_size, multiple}){
  if(input_class==undefined || append_class==undefined || file_type==undefined || max_kb_size==undefined){
    window.alert('Warning! Required object ({ input_class , append_class, file_type, max_kb_size })')
  } 
   
  
  else{
        if(multiple==undefined) var multiple= true;
        else multiple= multiple;
      $('.'+input_class).on('change', (event)=>{
  
      for (let index = 0; index < event.target.files.length; index++) {
      
        const filetype= event.target.files[index].type;
        const filename= event.target.files[index].name;
        const filesize= event.target.files[index].size/1000;
      const tmppath = URL.createObjectURL(event.target.files[index]);
      
  
  if(filesize <= max_kb_size){
    
  
        
  
    if( file_type=='image' && filetype=='image/jpeg' || filetype=='image/jpg' || filetype=='image/png' || filetype=='image/gif'){
      if(multiple==true){
        $('.'+append_class).append(`<img class="rounded" src="${tmppath}" width="100px" height="80x" alt="">`)
      } else{
        $('.'+append_class).html(`<img class="rounded" src="${tmppath}" width="100px" height="80px" alt="">`)
  
      }
    
     } 
  
  
  
    
    else if( file_type=='audio' && filetype=='audio/mpeg'){
  
   if(multiple==true){
    $('.'+append_class).append(`<audio  controls src="${tmppath}"></audio>`)
  
   } else {
    $('.'+append_class).html(`<audio  controls src="${tmppath}"></audio>`)
  
   }
  
  }
  
  
  
   else if( file_type=='video' && filetype=='video/mp4'){
    if(multiple==true){
      $('.'+append_class).append(`<video width="300px" height="80x" controls src="${tmppath}"></video>
  `)
    } else {
      $('.'+append_class).html(`<video width="300px" height="80x" controls src="${tmppath}"></video>
  `)
    }
    
     }
  
  
  
    else if(file_type=='pdf' && filetype=='application/pdf') {
  
   if(multiple==true){
    $('.'+append_class).append(`<p>goto visit for preview => <a target="_blank" href='${tmppath}'>${filename} </a></p>`)
  
   } else {
    $('.'+append_class).html(`<p>goto visit for preview => <a target="_blank" href='${tmppath}'>${filename} </a></p>`)
  
   }
  
  }
  
  
  else {
    $('.'+append_class).html(`
  <div class="alert alert-primary m-auto" style="width: max-content;" role="alert">
  <strong>Warning! file extention allow only ${file_type}</strong>
  </div>`)
  
  }
  
  
      }
  
  else {
    $('.'+append_class).html(`
    <div class="alert alert-primary m-auto" style="width: max-content;" role="alert">
    <strong>Warning! maximum file size should ${max_kb_size}kb ${file_type==filetype?'':'and allow only '+file_type}</strong>
    </div>`)
      }
        
    }
  
    })
  
    }
  
  
  }
  }
  