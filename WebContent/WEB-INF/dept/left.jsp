<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>
	<aside class="col-sm-3 col-md-2 col-lg-2 sidebar">
	<ul class="nav nav-sidebar">
		<li class="active"><a href="index.html">首页</a></li>
	</ul>
	
	<c:forEach items="${adminMlist }" varStatus="status" var="menu">
	<ul class="nav nav-sidebar">
		<li><a class="dropdown-toggle" id="userMenu"
			data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">${menu.menuName }</a>
			
			<c:forEach items="${menu.childMenus }" var="secondChild" varStatus="status">
			<ul class="dropdown-menu" aria-labelledby="userMenu">
			
				<li><a  href="<c:url value='${secondChild.murl }'/>">${secondChild.menuName }</a></li>
		
			</ul>
			</c:forEach>
		</li>
		
	</ul>
	</c:forEach>
	<!-- <ul class="nav nav-sidebar">
		<li><a href="category.html">栏目</a></li>
		<li><a class="dropdown-toggle" id="otherMenu"
			data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">其他</a>
			<ul class="dropdown-menu" aria-labelledby="otherMenu">
				<li><a href="flink.html">友情链接</a></li>
				<li><a data-toggle="modal" data-target="#areDeveloping">访问记录</a></li>
			</ul></li>
	</ul>
	<ul class="nav nav-sidebar">
		<li><a class="dropdown-toggle" id="userMenu"
			data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">用户</a>
			<ul class="dropdown-menu" aria-labelledby="userMenu">
				<li><a data-toggle="modal" data-target="#areDeveloping">管理用户组</a></li>
				<li><a href="main/toManageuser">管理用户</a></li>
				<li role="separator" class="divider"></li>
				<li><a href="loginlog.html">管理登录日志</a></li>
			</ul></li>
		<li><a class="dropdown-toggle" id="settingMenu"
			data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">设置</a>
			<ul class="dropdown-menu" aria-labelledby="settingMenu">
				<li><a href="setting.html">基本设置</a></li>
				<li><a href="readset.html">阅读设置</a></li>
				<li role="separator" class="divider"></li>
				<li><a data-toggle="modal" data-target="#areDeveloping">安全配置</a></li>
				<li role="separator" class="divider"></li>
				<li class="disabled"><a>扩展菜单</a></li>
			</ul></li>
	</ul> -->
	</aside>
</body>
</html>