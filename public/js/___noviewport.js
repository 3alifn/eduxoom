const noview = {
  port: function({input_class, append_class, file_type, max_kb_size, multiple = true}) {
    if (!input_class || !append_class || !file_type || !max_kb_size) {
      window.alert('Warning! Required object ({ input_class , append_class, file_type, max_kb_size })');
      return;
    }
    
    $('.' + input_class).on('change', (event) => {
      for (let file of event.target.files) {
        const { type: filetype, name: filename, size } = file;
        const filesize = size / 1000;
        const tmppath = URL.createObjectURL(file);

        if (filesize <= max_kb_size) {
          let fileHTML;
          if (file_type === 'image' && filetype.startsWith('image/')) {
            fileHTML = `<img class="rounded" src="${tmppath}" width="100px" height="80px" alt="">`;
          } else if (file_type === 'audio' && filetype.startsWith('audio/')) {
            fileHTML = `<audio controls src="${tmppath}"></audio>`;
          } else if (file_type === 'video' && filetype.startsWith('video/')) {
            fileHTML = `<video width="300px" height="80px" controls src="${tmppath}"></video>`;
          } else if (file_type === 'pdf' && filetype === 'application/pdf') {
            fileHTML = `<p>goto visit for preview => <a target="_blank" href='${tmppath}'>${filename}</a></p>`;
          } else {
            $('.' + append_class).html(`
              <div class="alert alert-primary m-auto" style="width: max-content;" role="alert">
                <code class"fw-semibold fs-6">Warning! file extension allow only ${file_type}</code>
              </div>`);
            return;
          }

          if (multiple) {
            $('.' + append_class).append(fileHTML);
          } else {
            $('.' + append_class).html(fileHTML);
          }
        } else {
          $('.submitbtn').addClass("disabled");
          $('.' + append_class).html(`
            <div class="container">
              <div class="row justify-content-center">
                <div class="col-md-8 col-sm-12">
                  <div class="alert alert-primary m-auto" role="alert">
                    <code class"fw-semibold fs-6">Warning! maximum file size should be ${max_kb_size}kb ${file_type === filetype ? '' : 'and allow only ' + file_type}</code>
                  </div>
                </div>
              </div>
            </div>`);
          return;
        }
      }
    });
  }
};
