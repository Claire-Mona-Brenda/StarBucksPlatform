
function  useCheck(myForm){
	if(myForm.username.value==""){
		alert("请输入正确的用户名");
		return false;
	}
	else if(myForm.password.value==""){
		alert("密码错误，请重新输入");
	}
}


 
 
 /*
window.onload=function(){
	var sm=document.getElementById("sm");
	sm.onclick=function(){
		if(document.myform.username.value==""){
			alert("用户名不能为空！");
			document.myform.name.focus();
			return false;
		}
		else if(document.myform.password.value==""){
			alert("密码不能为空");
			document.myform.password.focus();
			return false;
	}
}
}
*/


