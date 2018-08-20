<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8" />
<title>登录</title>
<meta name="login" content="" />
<link rel="stylesheet" type="text/css" href="<%=path %>/css/style1.css" />
<style>
body {
	height: 100%;
	background: #16a085;
	overflow: hidden;
}

canvas {
	z-index: -1;
	position: absolute;
}
</style>
<script src="<%=path %>/lib/jquery.js"></script>
<script src="<%=path %>/lib/verificationNumbers.js"></script>
<script src="<%=path %>/lib/Particleground.js"></script>

<script>
	$(document).ready(function() {
		//粒子背景特效
		$('body').particleground({
			dotColor : '#5cbdaa',
			lineColor : '#5cbdaa'
		});

	});
</script>
<script type="text/javascript">
	//刷新验证码
	function changeImg() {
		document.getElementById("validateCodeImg").src = "Image?date="
				+ new Date().getTime();
	}
</script>
</head>
<body>
	<form action="dept/userinfo.action" method="post" onsubmit="return loginCheck();">
		<dl class="admin_login">
			<dt>
				<strong>文档分享系统</strong> <em>Management System</em>
			</dt>
			
			<dd class="user_icon">
				<input type="text" placeholder="账号" name="adaccount" id="uname"
					onblur="acconutCheck()" class="login_txtbx" />
			</dd>
			<dd class="pwd_icon">
				<input type="password" placeholder="密码" id="upsw" name="adpassword"
					onblur="passwordCheck()" class="login_txtbx" />
					
			</dd>
			
		  <%--  <dd class="val_icon">
				<div >
				 <c:set var="msg" scope="request" value="${msg==null?'验证码':'验证码错误' }"/>
						<input type="text" id="J_codetext" name="validateCode" 
						src="Image" 	placeholder="${msg}" onblur="validate()" maxlength="4"
							class="login_txtbx1">
					
					
					<input type="button" value="看不清？" class="ver_btn"
						onclick="changeImg()"> <img class="ver_btn1"
						alt="验证码看不清，换一张" src="Image" id="validateCodeImg"
						onclick="changeImg()"></img>
				</div>
			
			</dd> --%>
			
			<span style="color: blue">${message}</span>
			<dd>
				<input type="submit" value="立即登录" class="submit_btn" />
			</dd>
			<dd>

				<p>© 传一科技.卓越教育  版权所有</p>
				<p>XM-JX180108</p>
			</dd>
		</dl>
	</form>
</body>
</html>