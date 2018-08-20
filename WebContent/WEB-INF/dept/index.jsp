<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
  <%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>文档分享</title>
<link rel="stylesheet" type="text/css" href="<%=path %>/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="<%=path %>/css/style.css">
<link rel="stylesheet" type="text/css" href="<%=path %>/css/font-awesome.min.css">
<link rel="apple-touch-icon-precomposed" href="<%=path %>/images/icon/icon.png">
<link rel="shortcut icon" href="<%=path %>/images/icon/favicon.ico">
<link rel="stylesheet" type="text/css" href="<%=path %>/css/spop.min.css">
<script src="<%=path %>/js/jquery-2.1.4.min.js"></script>
<script type="text/javascript" src="<%=path %>/js/spop.min.js"></script>
</head>

<body class="user-select">
<section class="container-fluid">
 <header>
    <nav class="navbar navbar-default navbar-fixed-top">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false"> <span class="sr-only">切换导航</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
          <a class="navbar-brand" href="">DmSharing</a> </div>
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
          <ul class="nav navbar-nav navbar-right">
            
            <li class="dropdown"> <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"> ${ sessionScope.tbladmin.adname} <span class="caret"></span></a>
              <ul class="dropdown-menu dropdown-menu-left">
                <li><a title="查看或修改个人信息" data-toggle="modal" data-target="#seeUserInfo">个人信息</a></li>
                <li><a title="查看您的登录记录" data-toggle="modal" data-target="#passwordInfo">修改密码</a></li>
              </ul>
            </li>
            <li><a href="dept/index" >登录</a></li>
            <li><a data-toggle="modal" data-target="#registerInfo">注册</a></li>
            
            <li><a href="dept/toLogin" onClick="if(!confirm('是否确认退出？'))return false;">退出</a></li>
            
          </ul>
          <form action="" method="post" class="navbar-form navbar-right" role="search">
            <div class="input-group">
              <input type="text" class="form-control" autocomplete="off" placeholder="键入关键字搜索" maxlength="15">
              <span class="input-group-btn">
              <button class="btn btn-default" type="submit">搜索</button>
              </span> </div>
          </form>
         
        </div>
      </div>
    </nav>
  </header>
   <aside class="col-sm-3 col-md-2 col-lg-2 sidebar">
	<ul class="nav nav-sidebar">
		<li class="active"><a href="#">首页</a></li>
	</ul>
	
	<c:forEach items="${adminMlist }" varStatus="status" var="menu">
	<ul class="nav nav-sidebar">
		<li><a class="dropdown-toggle" id="userMenu"  
			data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">${menu.menuName }</a>
			
			<ul class="dropdown-menu" aria-labelledby="userMenu">
			<c:forEach items="${menu.childMenus }" var="secondChild" varStatus="status">
			
				<li ><a  href="<c:url value='${secondChild.menuLink }'/>">${secondChild.menuName }</a></li>
		
			</c:forEach>
			</ul>
		</li>
		
	</ul>
	</c:forEach>
	</aside>
  <div class="row">
    <%-- <jsp:include page="left.jsp" /> --%>
   
    <div class="col-sm-9 col-sm-offset-3 col-md-10 col-lg-10 col-md-offset-2 main" id="main">
      <h1 class="page-header">文档分享</h1>
      <div class="row placeholders">
      </div>
 
      <footer class="footer mt-20" style="position: relative; top:400px;">
    	<div class="container-fluid">
    		<nav> <a href="#" target="_blank">关于我们</a> <span class="pipe">|</span> <a href="#" target="_blank">联系我们</a> <span class="pipe">|</span> <a href="#" target="_blank">法律声明</a> </nav>
    		<p>Copyright &copy;版本所有：传一科技.卓越教育 <br>
    			<a href="#" target="_blank" rel="nofollow">XM-JX180108</a><br>
    		</p>
    	</div>
    </footer>
    </div>
  </div>
</section>

<!--提示模态框-->
<div class="modal fade user-select" id="areDeveloping" tabindex="-1" role="dialog" aria-labelledby="areDevelopingModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="areDevelopingModalLabel" style="cursor:default;">该功能正在日以继夜的开发中…</h4>
      </div>
      <div class="modal-body"> <img src="images/baoman/baoman_01.gif" alt="深思熟虑" />
        <p style="padding:15px 15px 15px 100px; position:absolute; top:15px; cursor:default;">很抱歉，程序猿正在日以继夜的开发此功能，本程序将会在以后的版本中持续完善！</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" data-dismiss="modal">朕已阅</button>
      </div>
    </div>
  </div>
</div>

<script src="<%=path %>/js/bootstrap.min.js"></script> 
<script src="<%=path %>/js/admin-scripts.js"></script>
</body>
</html>
