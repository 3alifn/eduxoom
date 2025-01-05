import $ from "jquery";

async function AjaxCallWIthDefault({method, url, data}){
return new Promise((resolve, reject)=>{
    $.ajax({
        method: method,
        url: url,
        data: data,
        dataType: "JSON",
        beforeSend: function(){
            _spin_pull()
            $('.submitbtn').addClass('disabled')
        },
        success: function(response){
            resolve({status: 200, msg: response})
            _spin_pop()
            $('.submitbtn').removeClass('disabled')
        },
        error: function(error){
        return reject({status: 400, msg: 'Ajax client error! try again'})
        }
        })

        })
}

const xhrWorker = function() {
    var xhr = new window.XMLHttpRequest();
    xhr.upload.addEventListener("progress", function(evt) {
        if (evt.lengthComputable) {
            var percentComplete = (evt.loaded / evt.total) * 100;
            $('.progressbar').addClass('d-block').css({'width': parseInt(percentComplete) + '%'}).text(parseInt(percentComplete) + '%');
        }
    }, false);
    return xhr;
};

async function AjaxCallWithFile({ method, url, data, useXhr }) {
    return new Promise((resolve, reject) => {
        const xhrData = useXhr ? xhrWorker() : null;
        $.ajax({
            xhr: xhrData,
            method: method,
            url: url,
            data: data,
            cache: false,
            processData: false,
            contentType: false,
            mimeType: 'multipart/form-data',
            dataType: "JSON",
            beforeSend: function() {
                _spin_pull();
                $('.submitbtn').addClass('disabled');
            },
            success: function(response) {
                resolve({ status: 200, msg: response });
                _spin_pop();
                $('.submitbtn').removeClass('disabled');
            },
            error: function(error) {
                reject({ status: 400, msg: 'Ajax client error! try again' });
            }
        });
    });
}
