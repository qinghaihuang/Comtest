<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
 <title>管理员登录界面</title>
    
   <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="apple-mobile-web-app-capable" content="yes" />    
    
    <link href="./css/bootstrap.min.css" rel="stylesheet" />
    <link href="./css/bootstrap-responsive.min.css" rel="stylesheet" />
    
    
    <link href="./css/font-awesome.css" rel="stylesheet" />
    
    <link href="./css/adminia.css" rel="stylesheet" /> 
    <link href="./css/adminia-responsive.css" rel="stylesheet" /> 
    
    <link href="./css/pages/login.css" rel="stylesheet" /> 

    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
	
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  </head>

<body>
	
<div class="navbar navbar-fixed-top">
	
	<div class="navbar-inner">
		
		<div class="container">
			
			<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"> 
				<span class="icon-bar"></span> 
				<span class="icon-bar"></span> 
				<span class="icon-bar"></span> 				
			</a>
			
			<a class="brand" href="./login.jsp">返回主学生登录</a>	
		</div> <!-- /container -->
		
	</div> <!-- /navbar-inner -->
	
</div> <!-- /navbar -->


<div id="login-container">
	
	
	<div id="login-header">
		
		<h3>管理员登录</h3>
		
		
	</div> <!-- /login-header -->
	
	<div id="login-content" class="clearfix">
	
	<form action="login.action" method="post">
				<fieldset>
					<div class="control-group">
						<label class="control-label" for="admin">账号</label>
						<div class="controls">
							<input type="text" class="" name="Admin" id="admin" />
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="apwd">密码</label>
						<div class="controls">
							<input type="password" class="" name="Apwd" id="apwd" />
						</div>
					</div>
				</fieldset>
				
				<div id="remember-me" class="pull-left">
					<input type="checkbox" name="rememberme" id="remember" />
					<label id="remember-label" for="rememberme">记住我？</label>
				</div>
				
				
				
				<div class="pull-right">
					<button type="submit" class="btn btn-warning btn-large">
					<input type="hidden" name="who" value="admin">
						登录
					</button>
				</div>
			</form>
			
		</div> <!-- /login-content -->

</div> <!-- /login-wrapper -->

    

<!-- Le javascript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="./js/jquery-1.7.2.min.js"></script>


<script src="./js/bootstrap.js"></script>
<script> 
//取出传回来的参数error并比较
  var errorinfo ='<%=request.getParameter("error")%>';
  if(errorinfo=='failed'){
   alert("用户名或密码错误!");
  }
</script>
  </body>
</html>
