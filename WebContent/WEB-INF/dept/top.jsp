<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<header>
    <nav class="navbar navbar-default navbar-fixed-top">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false"> <span class="sr-only">切换导航</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
          <a class="navbar-brand" href="">DmSharing</a> </div>
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
          <ul class="nav navbar-nav navbar-right">
            
            <li class="dropdown"> <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"> ${ sessionScope.tbladmin.adaccount} <span class="caret"></span></a>
              <ul class="dropdown-menu dropdown-menu-left">
                <li><a title="查看或修改个人信息" data-toggle="modal" data-target="#seeUserInfo">个人信息</a></li>
                <li><a title="查看您的登录记录" data-toggle="modal" data-target="#passwordInfo">修改密码</a></li>
              </ul>
            </li>
            <li>
            <div>
            <form action="fileact.action" method="post" enctype="multipart/form-data">
     	请选择文件:<input type="file" name="fileact">
     	<input type="submit" value="提交">
     </form>
             </div>    
                 </li>
            <li><a href="main/download" >下载</a></li>
            <li><a href="main/toLogin" >登录</a></li>
            <li><a href="main/toLogin" onClick="if(!confirm('是否确认退出？'))return false;">退出</a></li>
            
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
  
  <!--注册模态框-->
<div class="modal fade" id="registerInfo" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <form  id="form"  method="post">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          <h4 class="modal-title" >注册</h4>
        </div>
        <div class="modal-body">
          <table class="table" style="margin-bottom:0px;">
            <thead>
              <tr> </tr>
            </thead>
            <tbody>
              <tr>
                <td wdith="20%">用户名:</td>
                <td width="80%"><input type="text" value="" class="form-control"  id="uname" name="uname" onblur="check_ename()" maxlength="10" autocomplete="off" /></td>
              	
              </tr>
              <tr>
                <td wdith="20%">输入密码:</td>
                <td width="80%"><input type="text" class="form-control" name="npassword" maxlength="18" autocomplete="off" /></td>
              </tr>
              <tr>
                <td wdith="20%">确认密码:</td>
                <td width="80%"><input type="password" class="form-control" id="upsw" name="upsw" maxlength="18" autocomplete="off" /></td>
              </tr>
              <tr>
                <td wdith="20%">性别:</td>
                <td width="80%">
                   <input type="radio" class="form-control" name="usex" id="usex" maxlength="18"  value="男" autocomplete="off" >男
                <input type="radio" class="form-control" name="usex"  id="usex" maxlength="18" value="女" autocomplete="off" />女
                </td>
              </tr>
              <tr>
                <td wdith="20%">学历:</td>
                <td width="80%">
                   <select  class="form-control" name="ueducation"  id="ueducation" maxlength="18" autocomplete="off" >
                   	<option>本科</option>
                   	<option>研究生</option>
                   	<option>博士</option>
                   </select>
               
                </td>
              </tr>
               <tr>
                <td wdith="20%">职业:</td>
                <td width="80%">
                   <select  class="form-control" name="ujob"  id="ujob" maxlength="18" autocomplete="off" >
                   	<option>人民教师</option>
                   	<option>健身教练</option>
                   	<option>程序员</option>
                   </select>
               
                </td>
              </tr>
                 <tr>
                <td wdith="20%">电话号码:</td>
                <td width="80%"><input type="text" value="" class="form-control" name="uphone"  id="uphone"maxlength="13" autocomplete="off" /></td>
              </tr>

                  <tr>
                <td wdith="20%">电子邮箱:</td>
                <td width="80%"><input type="text" value="" class="form-control" name="umail"  id="umail" maxlength="13" autocomplete="off" /></td>
              </tr>
            </tbody>
            <tfoot>
              <tr></tr>
            </tfoot>
          </table>
        </div>
        <div class="modal-footer">
        <span id="uname_msg" style="color:red;margin-right:100px;"></span>
          <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
          <button type="button" id="sub" onclick="checkregister()"  class="btn btn-primary">提交</button>
        </div>
      </div>
    </form>
  </div>
</div>
<!--个人信息模态框-->
<div class="modal fade" id="seeUserInfo" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <form action="" method="post">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          <h4 class="modal-title" >个人信息</h4>
        </div>
        <div class="modal-body">
          <table class="table" style="margin-bottom:0px;">
            <thead>
              <tr> </tr>
            </thead>
            <tbody>
              <tr>
                <td wdith="20%">用户名:</td>
                <td width="80%"><input type="text" value="" class="form-control" name="username" maxlength="10" autocomplete="off" /></td>
              </tr>
              <tr>
                <td wdith="20%">性别:</td>
                <td width="80%"><input type="password" class="form-control" name="old_password" maxlength="18" autocomplete="off" /></td>
              </tr>
              <tr>
                <td wdith="20%">学历:</td>
                <td width="80%"><input type="password" class="form-control" name="new_password" maxlength="18" autocomplete="off" /></td>
              </tr>
                 <tr>
                <td wdith="20%">职业:</td>
                <td width="80%"><input type="text" value="" class="form-control" name="usertel" maxlength="13" autocomplete="off" /></td>
              </tr>
                 <tr>
                <td wdith="20%">手机号:</td>
                <td width="80%"><input type="text" value="" class="form-control" name="usertel" maxlength="13" autocomplete="off" /></td>
              </tr>
                  <tr>
                <td wdith="20%">电子邮箱:</td>
                <td width="80%"><input type="text" value="" class="form-control" name="usertel" maxlength="13" autocomplete="off" /></td>
              </tr>
            </tbody>
            <tfoot>
              <tr></tr>
            </tfoot>
          </table>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
          <button type="submit" id="sub"  onclick="" class="btn btn-primary">提交</button>
        </div>
      </div>
    </form>
  </div>
</div>
<!--修改密码模态框-->
<div class="modal fade" id="passwordInfo" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <form action="" method="post">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          <h4 class="modal-title" >修改密码</h4>
        </div>
        <div class="modal-body">
          <table class="table" style="margin-bottom:0px;">
            <thead>
              <tr> </tr>
            </thead>
            <tbody>
              <tr>
                <td wdith="20%">用户名:</td>
                <td width="80%"><input type="text" value="" class="form-control" name="username" maxlength="10" autocomplete="off" /></td>
              </tr>
              <tr>
                <td wdith="20%">旧密码:</td>
                <td width="80%"><input type="text" class="form-control" name="old_password" maxlength="10" autocomplete="off" /></td>
              </tr>
              <tr>
                <td wdith="20%">新密码:</td>
                <td width="80%"><input type="text" class="form-control" name="new_password" maxlength="10" autocomplete="off" /></td>
              </tr>
                 <tr>
                <td wdith="20%">确认密码:</td>
                <td width="80%"><input type="password" value="" class="form-control" name="usertel" maxlength="10" autocomplete="off" /></td>
              </tr>
                
            </tbody>
            <tfoot>
              <tr></tr>
            </tfoot>
          </table>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
          <button type="submit" class="btn btn-primary">提交</button>
        </div>
      </div>
    </form>
  </div>
</div>



<script type="text/javascript">
function check_ename() {
	var uname = $("#uname").val();
	// 校验uname是否为空
	if (uname == "") {
		$("#uname_msg").text("用户名不能为空").addClass("error_msg");
		return;
	}
	// 异步是否重复
	$.post("<%=path%>/emp/register", {
		"uname" : uname 
	}, function(data) {
		// 回调函数的参数就是返回的info属性
			var info = data;
			// 根据返回值设置提示信息
			if (info.success) {
				//  验证通过，设置提示信息并移除错误样式
				$("#uname_msg").text(info.message).removeClass("error_msg");
			} else {
				// 验证失败，设置提示信息并添加错误样式
				$("#uname_msg").text(info.message).addClass("error_msg");
			}
	});
}
</script>
<script type="text/javascript">
function checkregister() {
	var uname = $("#uname").val();
	var upsw = $("#upsw").val();
	var uphone = $("#uphone").val();
	var umail = $("#umail").val();
	var ueducation = $("#ueducation").val();
	var ujob = $("#ujob").val();
	var usex = $("#usex").val();
	if (uname == "") {
		$("#uname_msg").text("用户名不能为空").addClass("error_msg");
		return;
	}
	else if(upsw == ""){
		$("#uname_msg").text("密码不能为空").addClass("error_msg");
		return;
	}
	
	var da = $("#form").serialize();
	// 异步是否重复
	$.post("<%=path%>/emp/register1", {
		"uname" : uname ,"upsw": upsw ,"usex":usex,"uphone":uphone,"umail":umail,"ueducation":ueducation
		,"ujob":ujob
		
	}, function(data) {
		// 回调函数的参数就是返回的info属性
			var info = data;
			// 根据返回值设置提示信息
			if (info.success) {
				//  验证通过，设置提示信息并移除错误样式
				$("#uname_msg").text(info.message).removeClass("error_msg");
				spop({
					template : '注册成功！',
					autoclose : 3000
				});
				
			} else {
				// 验证失败，设置提示信息并添加错误样式
				$("#uname_msg").text(info.message).addClass("error_msg");
			}
	});
}


</script>



</body>


</html>