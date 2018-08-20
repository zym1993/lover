function showCheck(a){
	var c = document.getElementById("myCanvas");
  var ctx = c.getContext("2d");
	ctx.clearRect(0,0,1000,1000);
	ctx.font = "80px 'Microsoft Yahei'";
	ctx.fillText(a,0,100);
	ctx.fillStyle = "white";
}
function accountCheck()
{
	var account = document.getElementById("account4");
	var msg = document.getElementById("accountMsg4");
	if(Empty(account))
	{
		msg.innerHTML="账号不能为空";
		msg.style ="color:red";
		return false;
	}
	if(account.value.length<6 || account.value.length>12)	
	{
		msg.innerHTML ="用户名需是6~12位";
		msg.style ="color:red";
		return false;
	}
	msg.innerHTML ="输入正确";
	msg.style ="color :blue";
	return true;
}

          
function validate() {
    var inputCode = document.getElementById("J_codetext").value.toUpperCase();
    if(inputCode.length <=0) {
      document.getElementById("J_codetext").setAttribute("placeholder","请输入验证码");
      return false;
    }else{
    	return true;
    }

}
function loginCheck() {
    var account = document.getElementById("uname").value;
	var password = document.getElementById("upsw").value;
    if(account.length <=0) {
      document.getElementById("uname").setAttribute("placeholder","请输入账号");
      return false;
    }
	 if(password.length <=0) {
      document.getElementById("upsw").setAttribute("placeholder","请输入密码");
      return false;
    }
	 if(!validate()){
		 
	   return false;
	 }
	
}
function acconutCheck() {
    var account = document.getElementById("uname").value;
    if(account.length <=0) {
      document.getElementById("uname").setAttribute("placeholder","请输入账号");
      return false;
    }

}
function passwordCheck() {
    var account = document.getElementById("upsw").value;
    if(account.length <=0) {
      document.getElementById("upsw").setAttribute("placeholder","请输入密码");
      return false;
    }

}