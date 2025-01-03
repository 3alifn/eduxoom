


var regexTelephone= /^[0-9]*$/
var regexNumber= /^[0-9]*$/
var regexString= /^[A-Za-z]*$/
var regexPassword= /^[a-zA-Z0-9!@#$%&*]*$/
var regexEmail= /^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/ 

      let userPassword= regexPassword.test(password) && password.length>5 && password.length<21;
      let userName= regexString.test(name) && name.length>1
      let userEmail= regexEmail.test(email)
      let userTelephone= regexTelephone.test(telephone) && telephone.length==10;

      let userInputData = [userName, userTelephone, userEmail, userPassword]

      let userAuthentication= userInputData.every((input)=>{
         return input==true
      })