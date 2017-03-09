<%@ page language="java" import="java.util.*"  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <title>User Account - Bootstrap Admin</title>
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="apple-mobile-web-app-capable" content="yes" />    
    
    <link href="./css/bootstrap.min.css" rel="stylesheet" />
    <link href="./css/bootstrap-responsive.min.css" rel="stylesheet" />
    
    
    <link href="./css/font-awesome.css" rel="stylesheet" />
    
    <link href="./css/adminia.css" rel="stylesheet" /> 
    <link href="./css/adminia-responsive.css" rel="stylesheet" /> 
    
    
    <link href="./css/pages/plans.css" rel="stylesheet" /> 

    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
	
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>

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
					<li>
						<a href="#"><span class="badge badge-warning">7</span></a>
					</li>
					
					<li class="divider-vertical"></li>
					
					<li class="dropdown">
						
						<a data-toggle="dropdown" class="dropdown-toggle " href="#">
							${admininfo }<b class="caret"></b>							
						</a>
						
						<ul class="dropdown-menu">
							<li>
								<a href="./account.jsp"><i class="icon-user"></i> 账号设置  </a>
							</li>
							
							<li>
								<a href="./change_password.html"><i class="icon-lock"></i> 更改密码</a>
							</li>
							
							<li class="divider"></li>
							
							<li>
								<a href="./"><i class="icon-off"></i> 登出</a>
							</li>
						</ul>
					</li>
				</ul>
				
			</div> <!-- /nav-collapse -->
			
		</div> <!-- /container -->
		
	</div> <!-- /navbar-inner -->
	
</div> <!-- /navbar -->




<div id="content">
	
	<div class="container">
		
		<div class="row">
			
			<div class="span3">
				
				<div class="account-container">
				
					<div class="account-avatar">
						<img src="./img/admin.png" alt="" class="thumbnail" />
					</div> <!-- /account-avatar -->
				
					<div class="account-details">
					
						<span class="account-name">${admininfo }</span>
						
						<span class="account-role">管理员</span>
						
						<span class="account-actions">
							<a href="javascript:;">简介</a> |
							
							<a href="javascript:;">编辑</a>
						</span>
					
					</div> <!-- /account-details -->
				
				</div> <!-- /account-container -->
				
				<hr />
				
					
						<ul id="main-nav" class="nav nav-tabs nav-stacked">
					
			<li class="dropdown">
						
						<a data-toggle="dropdown" class="dropdown-toggle " href="#">
							<i class="icon-home"></i>
							题库管理 <b class="caret"></b>							
						</a>
						
						<ul class="dropdown-menu">
							<li>
								<a href="./questionBank.jsp">
								<i class="icon-home"></i>
								 题库查询
								 </a>
							</li>
							
							<li>
								<a href="./addQuestion.jsp">
								<i class="icon-th-list"></i>
								添加题目 
							 </a>
							</li>
							
							<li>
								<a href="./"><i class="icon-lock"></i> 其他</a>
							</li>
							
						
						</ul>
					</li>
					<li class="dropdown">
						
						<a data-toggle="dropdown" class="dropdown-toggle " href="#">
							<i class="icon-home"></i>
							教师管理 <b class="caret"></b>							
						</a>
						
						<ul class="dropdown-menu">
							<li>
								<a href="./teacherBank.jsp">
								<i class="icon-home"></i>
								 教师查询
								 </a>
							</li>
							
							<li>
								<a href="./addTeacher.jsp">
								<i class="icon-th-list"></i>
								添加教师 
							 </a>
							</li>
							
							<li>
								<a href="./"><i class="icon-lock"></i> 其他</a>
							</li>
						</ul>
					</li>
					<li class="dropdown">
						
						<a data-toggle="dropdown" class="dropdown-toggle " href="#">
							<i class="icon-home"></i>
							学生管理 <b class="caret"></b>							
						</a>
						
						<ul class="dropdown-menu">
							<li>
								<a href="./studentBank.jsp">
								<i class="icon-home"></i>
								 学生查询
								 </a>
							</li>
							
							<li>
								<a href="./"><i class="icon-lock"></i> 其他</a>
							</li>
							
						
						</ul>
					</li>	
					<li>
						<a href="./class_manage.jsp">
							<i class="icon-home"></i>
							班级管理
						</a>
					</li>
					<li>
						<a href="./admin_account.jsp">
							<i class="icon-user"></i>
							管理员账户							
						</a>
					</li>
					
					<li>
						<a href="./login_admin.jsp">
							<i class="icon-lock"></i>
							登录
						</a>
					</li>
					
				</ul>	
				
				
				
				<hr />
				
				<div class="sidebar-extra">
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.</p>
				</div> <!-- .sidebar-extra -->
				
				<br />
		
			</div> <!-- /span3 -->
			
			
			
			<div class="span9">
				
				<h1 class="page-title">
					<i class="icon-th-large"></i>
					题库操作					
				</h1>
				
				
				<div class="row">
					
					<div class="span9">
				
						<div class="widget">
							
							<div class="widget-header">
								<h3>题库管理</h3>
							</div> <!-- /widget-header -->
									
							<div class="widget-content">
								
								
								
								<div class="tabbable">
						<ul class="nav nav-tabs">
						  <li class="active">
						    <a href="#1" data-toggle="tab">添加题目到题库</a>
						  </li>
						</ul>
						
						<br />
						
							<div class="tab-content">
								<div class="tab-pane active" id="1">
								<form action="question.action"  method="post" id="edit-profile" class="form-horizontal">
									<fieldset>
										
										<div class="control-group">											
											<label class="control-label" for="username">题干</label>
											<div class="controls">
												<input type="text" class="input-xlarge " name="Qcontent" id="username" value="请输入题目内容" />
											</div> <!-- /controls -->				
										</div> <!-- /control-group -->
										
										
										<div class="control-group">											
											<label class="control-label" for="firstname">题型</label>
											<div class="controls">
												<!-- <input type="text" class="input-mini" name="Qtype" id="firstname" value="单选题" /> -->
												<select name="Qtype">
													<option value="单选题">单选题</option>
  													<option value="填空题">填空题</option>
  													<option value="判断题">判断题</option>
												</select>
											</div> <!-- /controls -->				
										</div> <!-- /control-group -->
										
										
										<div class="control-group">											
											<label class="control-label" for="lastname">A选项</label>
											<div class="controls">
												<input type="text" class="input-medium" name="Aanswer" id="lastname" value="XX" />
											</div> <!-- /controls -->				
										</div> <!-- /control-group -->
										
										
										<div class="control-group">											
											<label class="control-label" for="lastname">B选项</label>
											<div class="controls">
												<input type="text" class="input-medium" name="Banswer" id="lastname" value="XX" />
											</div> <!-- /controls -->				
										</div> <!-- /control-group -->
										
										<div class="control-group">											
											<label class="control-label" for="lastname">C选项</label>
											<div class="controls">
												<input type="text" class="input-medium" name="Canswer" id="lastname" value="XX" />
											</div> <!-- /controls -->	
														
										</div> <!-- /control-group -->
										
										<div class="control-group">											
											<label class="control-label" for="lastname">D选项</label>
											<div class="controls">
												<input type="text" class="input-medium" name="Danswer" id="lastname" value="XX" />
											</div> <!-- /controls -->				
										</div> <!-- /control-group -->
										
										<div class="control-group">											
											<label class="control-label" for="lastname">参考答案</label>
											<div class="controls">
												<!-- <input type="text" class="input-medium" name="Tanswer" id="lastname" value="XX" /> -->
												<select name="Tanswer">
												<option value="A">A</option>
												<option value="B">B</option>
												<option value="C">C</option>
												<option value="D">D</option>
												</select>
											</div> <!-- /controls -->				
										</div> <!-- /control-group -->
										<br /><br />
										
									
										<div class="form-actions">
											<input type="submit" name="opttype"  class="btn btn-primary" value="保存">
											<button class="btn">取消</button>
										</div> <!-- /form-actions -->
									</fieldset>
								</form>
								</div>
								
								
							</div>
						  
						  
						</div>
								
								
								
								
								
								
								
								
							</div> <!-- /widget-content -->
							
						</div> <!-- /widget -->
						
					</div> <!-- /span9 -->
					
				</div> <!-- /row -->
				
				
				
				
				
				
				
				
				
			</div> <!-- /span9 -->
			
			
		</div> <!-- /row -->
		
	</div> <!-- /container -->
	
</div> <!-- /content -->
					
	
<div id="footer">
	
	<div class="container">				
		<hr />
		<p>&copy; 2012 Go Ideate.More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>
	</div> <!-- /container -->
	
</div> <!-- /footer -->


    

<!-- Le javascript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="./js/jquery-1.7.2.min.js"></script>


<script src="./js/bootstrap.js"></script>

  </body>
</html>
