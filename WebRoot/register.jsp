<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
 <title>在线题库注册界面</title>
    
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
			
			<a class="brand" href="./">管理员登录</a>
			
			<div class="nav-collapse">
			
				<ul class="nav pull-right">
					
					<li class="">
						
						<a href="index.jsp"><i class="icon-chevron-left"></i> 返回主页</a>
					</li>
				</ul>
				
			</div> <!-- /nav-collapse -->
			
		</div> <!-- /container -->
		
	</div> <!-- /navbar-inner -->
	
</div> <!-- /navbar -->


<div id="login-container">
	
	
	<div id="login-header">
		
		<h3>开始注册</h3>
		
	</div> <!-- /login-header -->
	
	<div id="login-content" class="clearfix">
	
	<form action="register.action" method="post">
				<fieldset>
					<div class="control-group">										
						<label class="control-label" for="sno">学号<i><font color="red">*</i></font></label>
						<div class="controls">
						<input type="text" class="input-large" name="sno"  />
							</div> <!-- /controls -->								
					  </div>
					<div class="control-group">
						<label class="control-label" for="password">密码<i><font color="red">*</i></font></label>
						<div class="controls">
							<input type="password" class="" name="spwd" id="password" />
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="password">确认密码<i><font color="red">*</i></font></label>
						<div class="controls">
							<input type="password" class="" name="comfirmpwd" id="comfirmpwd" />
						</div>
					</div>
				</fieldset>
				
				<div class="pull-left">
					<a href="login.jsp" class="btn btn-warning btn-large">
						返回
					</a>
				</div>
				<div class="pull-right">
					<button type="submit" class="btn btn-warning btn-large">
						注册
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

  </body>
</html>
