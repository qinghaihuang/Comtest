<%@ page language="java" import="java.util.*"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
 <head>
    <title>教师出卷</title>
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="apple-mobile-web-app-capable" content="yes" />    
    
    <link href="./css/bootstrap.min.css" rel="stylesheet" />
    <link href="./css/bootstrap-responsive.min.css" rel="stylesheet" />
    
    
    <link href="./css/font-awesome.css" rel="stylesheet" />
    
    <link href="./css/adminia.css" rel="stylesheet" /> 
    <link href="./css/adminia-responsive.css" rel="stylesheet" /> 
    
    <link href="./css/pages/dashboard.css" rel="stylesheet" /> 
    

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
			
			<h1 class="brand">教师拟卷</h1>
			
			<div class="nav-collapse">
			
				<ul class="nav pull-right">
					<li>
						<a href="message.jsp"><span class="badge badge-warning">7</span></a>
					</li>
					
					<li class="divider-vertical"></li>
					
					<li class="dropdown">
						
						<a data-toggle="dropdown" class="dropdown-toggle " href="#">
							${teainfo}<b class="caret"></b>							
						</a>
						
						<ul class="dropdown-menu">
							<li>
								<a href="./account.jsp"><i class="icon-user"></i> 账号设置  </a>
							</li>
							
							<li>
								<a href="./change_password.jsp"><i class="icon-lock"></i> 更改密码</a>
							</li>
							
							<li class="divider"></li>
							
							<li>
								<a href="./login.action?logout=tealogout"><i class="icon-off"></i> 登出</a>
							</li>
						</ul>
					</li>
				</ul>
				
			</div> <!-- /nav-collapse -->
			
		</div> <!-- /container -->
		
	</div> <!-- /navbar-inner -->
	
</div> <!-- /navbar -->


<div class="copyrights">Collect from <a href="http://www.cssmoban.com/" >网页模板</a></div>

<div id="content">
	
	<div class="container">
		
		<div class="row">
			
			<div class="span3">
				
				<div class="account-container">
				
					<div class="account-avatar">
						<img src="./img/headshot.png" alt="" class="thumbnail" />
					</div> <!-- /account-avatar -->
				
					<div class="account-details">
					
						<span class="account-name">${teainfo}</span>
						
						<span class="account-role">教师</span>
						
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
					<li>
						<a href="./test.jsp">
							<i class="icon-th-large"></i>
							拟题
						</a>
					</li>
					<li>
						<a href="./message.jsp">
							<i class="icon-th-large"></i>
							消息提醒
							<span class="label label-warning pull-right">5</span>
						</a>
					</li>
					<li>
						<a href="./teacehr_account.jsp">
							<i class="icon-user"></i>
							教师账户							
						</a>
					</li>
					
					<li>
						<a href="./login_teacher.jsp">
							<i class="icon-lock"></i>
							登录
						</a>
					</li>
					
				</ul>	
				
				<hr />
				<br />
		
			</div> <!-- /span3 -->
			
			
			
			<div class="span9">
				
				<h1 class="page-title">
					<i class="icon-home"></i>
					开始命题出卷				
				</h1>
				
				<div class="stat-container">
										
					<div class="stat-holder">						
						 <form action="test.action" method="post" name="frm2">
						<table class="table table-striped table-bordered">
							<!-- <thead>
								<tr colspan>
								
								</tr>
							</thead> -->
							<tbody>	
   <tr>
   <td>试卷名称:</td>
   <td colspan="3"><input type=text name="name" value="模拟试卷1"/></td>
   </tr>					
   <tr>
   <td>出题教师:</td>
   <td colspan="3"><input type=text name="member" value="${ teainfo }" readonly/></td>
   </tr>
<tr>
<td>考试时间：</td>
<td colspan="3">
<select name="testtime">
<option value="5">5分钟</option>
<option value="10">10分钟</option>
<option value="30">30分钟</option>
</select>
</td>
</tr>
<tr>
<td>单选题数量：</td>
<td><select name="singlequestion">
<option value="2">2</option>
<option value="4">4</option>
<option value="6">6</option>
</select>
</td>
<td>每题分值：</td>
<td><select name="singlefenzhi">
<option value="1">1</option>
<option value="2">2</option>
<option value="3">3</option>
</select>
</td>
</tr> 
<tr>
<td>填空题数量：</td>
<td><select name="tiankong">
<option value="2">2</option>
<option value="4">4</option>
<option value="6">6</option>
</select>
</td>
<td>每题分值：</td>
<td><select name="tianfenzhi">
<option value="1">1</option>
<option value="2">2</option>
<option value="3">3</option>
</select>
</td>
</tr> 
<tr>
<td colspan="4">
<center>
<input type="submit" name="opttype"  class="btn btn-primary" value="拟卷" ">
<input type="submit"  class="btn btn-primary" value="取消" ">
</center>
</td>
</tr>

							</tbody>	
						</table>
						</form>						
					</div> <!-- /stat-holder -->
	
				</div> <!-- /stat-container -->

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
<script src="./js/excanvas.min.js"></script>
<script src="./js/jquery.flot.js"></script>
<script src="./js/jquery.flot.pie.js"></script>
<script src="./js/jquery.flot.orderBars.js"></script>
<script src="./js/jquery.flot.resize.js"></script>
<script src="./js/bootstrap.js"></script>
<script src="./js/charts/bar.js"></script>
<script> 
  var info ='<%=request.getParameter("success")%>';
  if(info=='sus'){
   alert("添加成功!");
  }
</script>
  </body>
</html>
