<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*"
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
  <jsp:include page="top.jsp" />
  <aside class="col-sm-3 col-md-2 col-lg-2 sidebar">
	<ul class="nav nav-sidebar">
		<li class="active"><a href="#">首页</a></li>
	</ul>
	
	
	<ul class="nav nav-sidebar">
		<li><a   href="userinfo1.action?pages=1">用户管理</a></li>
	</ul>
	</aside>
  <div class="row">
    <!-- 左边菜单栏 -->
   <%--  <jsp:include page="left.jsp" /> --%>
    <!-- 右边内容 -->
     <div class="col-sm-9 col-sm-offset-3 col-md-10 col-lg-10 col-md-offset-2 main" id="main">
    <h1 class="page-header">操作</h1>
        <ol class="breadcrumb">
          <li><a data-toggle="modal" data-target="#addUser">增加用户</a></li>
        </ol>
        <h1 class="page-header">管理 </h1>
        <div class="table-responsive">
          <table class="table table-striped table-hover">
            <thead>
              <tr>
                <th><span class="glyphicon glyphicon-th-large"></span> <span class="visible-lg">序列</span></th>
                <th><span class="glyphicon glyphicon-user"></span> <span class="visible-lg">昵称</span></th>
                <th><span class="glyphicon glyphicon-user"></span> <span class="visible-lg">用户名</span></th>
                <th><span class="glyphicon glyphicon-user"></span> <span class="visible-lg">密码</span></th>
                <th><span class="glyphicon glyphicon-time"></span> <span class="visible-lg">注册时间</span></th>
                <th><span class="glyphicon glyphicon-pencil"></span> <span class="visible-lg">操作</span></th>
              </tr>
            </thead>
            <tbody>
            <c:forEach items="${ sessionScope.tbladmins}" var="user" varStatus="s">
              <tr>
                <td>${ s.index+1}</td>
                <td>${ user.adname}</td>
                <td>${ user.adaccount}</td>
                <td>${ user.adpassword}</td>
                <td>${ user.regisertime}</td>
                <td><a name="delete" href="<%=path %>/dept/userinfo2.action?adminid=${user.adminid}&pages=${pages}" >删除</a> 
                 <c:set var="sd" value="${user.paramid==2?'禁用':'启用' }"></c:set>
				<c:set var="ud" value="${user.paramid==2?'3':'2' }"></c:set>	
                <a onclick="return confirm('确定要改变状态么？');"  href="<%=path%>/dept/update?paramid=${ud}&adminid=${user.adminid }&pages=${pages}" >${sd }</a> 
              
                </td>
              </tr>
              <input type="hidden"  value="${user.adminid }" id="ids"/>
              <input type="hidden"  value="${user.paramid }" id="ids1"/>
                <input type="hidden"  value="${message }" id="message"/>
               
           
              </c:forEach>
            </tbody>
          </table>
          <div style="text-align:center">
          <c:if test = "${pages!=1}">
			<a   name="pages"  href="<%=path%>/dept/userinfo1.action?pages=${pages-1}" >
			 上一页</a>
			</c:if>
			<c:if test = "${pages==1}">
			<a   name="pages"  href="javascript:return false;" >
			 上一页</a>
			</c:if>
			&nbsp;&nbsp;&nbsp;&nbsp;
			<c:if test = "${pages!=totalPages}">
			<a   name="pages"   href="<%=path%>/dept/userinfo1.action?pages=${pages+1}" >
		 	下一页  </a>
		 </c:if>
		 <c:if test = "${pages==totalPages}">	
			<a  name="pages"     href="javascript:return false;" >下一页</a>
		 </c:if>
		 </div>
        </div>
    </div>
    
    
    </div>
      
 
      <footer class="footer"  style="position: relative;margin-left:210px;top:100px;">
    	<div class="container-fluid">
    		<nav> <a href="#" target="_blank">关于我们</a> <span class="pipe">|</span> <a href="#" target="_blank">联系我们</a> <span class="pipe">|</span> <a href="#" target="_blank">法律声明</a> </nav>
    		<p>Copyright &copy;版本所有：传一科技.卓越教育 <br>
    			<a href="#" target="_blank" rel="nofollow">XM-JX180108</a><br>
    		</p>
    	</div>
    </footer>
    
</section>
<!--增加用户模态框-->
<div class="modal fade" id="addUser" tabindex="-1" role="dialog" aria-labelledby="addUserModalLabel">
  <div class="modal-dialog" role="document" style="max-width:450px;">
    <form id="form" method="post" >
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          <h4 class="modal-title" >增加用户</h4>
        </div>
        <div class="modal-body">
          <table class="table" style="margin-bottom:0px;">
            <thead>
              <tr> </tr>
            </thead>
            <tbody>
              <tr>
                <td wdith="20%">昵称:</td>
                <td width="80%"><input type="text" value="" class="form-control" name="adname" id= "adname"  maxlength="10" autocomplete="off" /></td>
              </tr>
              <tr>
                <td wdith="20%">用户名:</td>
                <td width="80%"><input type="text" value=""  class="form-control" id="adaccount" name="adaccount"  onblur="check_ename1()"  maxlength="10" autocomplete="off" /></td>
              </tr>
              <tr>
                <td wdith="20%">输入密码:</td>
                <td width="80%"><input type="text" class="form-control" name="apassword"  maxlength="18" autocomplete="off" /></td>
              </tr>
              <tr>
                <td wdith="20%">确认密码:</td>
                <td width="80%"><input type="password" class="form-control" name="adpassword" id= "adpassword" maxlength="18" autocomplete="off" /></td>
              </tr>
              
            </tbody>
            <tfoot>
              <tr></tr>
            </tfoot>
          </table>
        </div>
        
        <div class="modal-footer">
        <span id="uname_msg1" style="color:red;margin-right:100px;"></span>
          <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
          <button type="button" id="sub" onclick="checkpeople()" class="btn btn-primary">提交</button>
        </div>
      </div>
    </form>
  </div>
</div>
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


<script type="text/javascript">
function check_ename1() {
	var uname1 = $("#adaccount").val();
	// 校验uname是否为空
	if (uname1 == "") {
		$("#uname_msg1").text("用户名不能为空").addClass("error_msg");
		return;
	}
	
	// 异步是否重复
	$.post("<%=path%>/emp/mac", {
		"adaccount" : adaccount 
	}, function(data) {
		// 回调函数的参数就是返回的info属性
			var info = data;
		alert(info)
			// 根据返回值设置提示信息
			if (info.success) {
				//  验证通过，设置提示信息并移除错误样式
				spop({
					template : '添加成功！',
					autoclose : 3000
				});
				/* $("#uname_msg1").text(info.message).removeClass("error_msg"); */
			} else {
				// 验证失败，设置提示信息并添加错误样式
				spop({
					template : '添加成功！',
					autoclose : 3000
				});
				/* $("#uname_msg1").text(info.message).addClass("error_msg"); */
			}
	});
}

</script>
<script>
	function checkpeople(){
		var adname =$("#adname").val();
		var adaccount =$("#adaccount").val();
		var adpassword =$("#adpassword").val();
		var da = $("#form").serialize();
		$.post("<%=path%>/emp/maction",{
			"adname":adname, "adaccount":adaccount, "adpassword":adpassword
		},function(data){
			var info =data ;
			
			if(info.success){
				spop({
					template : '添加成功！',
					autoclose : 3000
				});
				setTimeout("location.reload()",2000);
			}else{
				spop({
					template : '添加失败！',
					autoclose : 3000
				});
				setTimeout("location.reload()",2000);
			}
		});
	}   
</script>
<script>
	function delectpeople(){
		var adminid =$("#ids").val();
		$.post("<%=path%>/emp/del?pages=${pages}",{
			"adminid": adminid
		},function(data){
			var info =data ;
			if(info.success){
				spop({
					template : '删除成功！',
					autoclose : 3000
				});
				setTimeout("location.reload()",2000);
			}else{
				spop({
					template : '删除失败！',
					autoclose : 3000
				});
				setTimeout("location.reload()",2000);
			}
		});
	}   
</script>

<script>
/*  $(function(){
	var message= $("message").val();
	alert(message)
	if(message=="ok"){
	spop({
			template : '更改成功！',
			autoclose : 3000
				});
	}
   
	}); */
</script>
</body>
</html>
