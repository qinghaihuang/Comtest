<%@ page language="java" import="java.util.*,entity.Student,dao.StudentDao" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
 <head>
    <title>学生信息</title>
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="apple-mobile-web-app-capable" content="yes" />    
    
    <link href="./css/bootstrap.min.css" rel="stylesheet" />
    <link href="./css/bootstrap-responsive.min.css" rel="stylesheet" />
    
    
    <link href="./css/font-awesome.css" rel="stylesheet" />
    
    <link href="./css/adminia.css" rel="stylesheet" /> 
    <link href="./css/adminia-responsive.css" rel="stylesheet" /> 
    
    <link href="./css/pages/dashboard.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="./css/kkpager_blue.css" />
    <link rel="stylesheet" type="text/css" href="./css/Css.css" />


    

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
			
			<a class="brand" href="./login_admin.jsp">管理员登录</a>
			
			<div class="nav-collapse">
			
				<ul class="nav pull-right">
					<li>
						<a href="#"><span class="badge badge-warning">7</span></a>
					</li>
					
					<li class="divider-vertical"></li>
					
					<li class="dropdown">
						
						<a data-toggle="dropdown" class="dropdown-toggle " href="#">
							${admininfo } <b class="caret"></b>							
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
								<a href="./admin.jsp?opttype=logout"><i class="icon-off"></i> 登出</a>
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
								<a href="./addStudent.jsp">
								<i class="icon-th-list"></i>
								添加学生 
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
					<i class="icon-home"></i>
					学生信息					
				</h1>
				
					<div class="widget widget-table">
					<div class="widget-content">
					 <form action="questionBank.jsp" method="post">
						<table class="table table-striped table-bordered">
							<thead>
								<tr>
									<th>学号</th>
									<th>姓名</th>
									<th>性别</th>
									<th>班级</th>
									<th>院系</th>
									<th>成绩</th>
									<th>修改\删除</th>
								</tr>
							</thead>
							<tbody>
								 <% StudentDao sd=new StudentDao();
  session.setAttribute("slist", sd.queryAllStudents());
	%> 
   <c:forEach var="sd" items="${slist }" varStatus="item">
   <tr>
   <td>${sd.sno}</td>
   <td>${sd.sname}</td>
   <td>${sd.ssex}</td>
   <td>${sd.sclass}</td>
   <td>${sd.sdept}</td>
   <td>${sd.sscore}</td>        
 <td>
<a href="editStudent.jsp?opttype=edit&sno=${sd.sno}&sname=${sd.sname}&ssex=${sd.ssex}&sclass=${sd.sclass}
&sdept=${sd.sdept}&sscore=${sd.sscore}" class="btn btn-small btn-warning">
<i class="icon-ok"></i>								
</a>					
<a href="student.action?opttype=delete&sno=${sd.sno}" class="btn btn-small">
<i class="icon-remove"></i>						
</a>
</td>
     </tr>  
     </c:forEach>  		
							</tbody>	
						</table>
						</form>
					
					</div> <!-- /widget-content -->
					
				</div> <!-- /widget -->	
				
				
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
<script src="./js/jquery-1.10.2.min.js"></script>
<script src="./js/jquery.kkPages.js"></script>

<!-- <script type="text/javascript">
$('.widget-content').kkPages({ 
   PagesClass:'tr', //需要分页的元素
   PagesMth:8, //每页显示个数 
   PagesNavMth:5 //显示导航个数
});
</script> -->

  </body>
</html>
