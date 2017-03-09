<%@ page language="java" import="java.util.*,entity.Single_choice,dao.ExerciseDao" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <title>单选题答案</title>
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="apple-mobile-web-app-capable" content="yes" />    
    
    <link href="./css/bootstrap.min.css" rel="stylesheet" />
    <link href="./css/bootstrap-responsive.min.css" rel="stylesheet" />
    
    
    <link href="./css/font-awesome.css" rel="stylesheet" />
    
    <link href="./css/adminia.css" rel="stylesheet" /> 
    <link href="./css/adminia-responsive.css" rel="stylesheet" /> 
    
    
    <link href="./css/pages/faq.css" rel="stylesheet" /> 

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
			
			<a class="brand" href="./login.jsp">学生登录</a>
			
			<div class="nav-collapse">
			
				<ul class="nav pull-right">
					<li>
						<a href="#"><span class="badge badge-warning">7</span></a>
					</li>
					
					<li class="divider-vertical"></li>
					
					<li class="dropdown">
						
						<a data-toggle="dropdown" class="dropdown-toggle " href="#">
							${stuinfo } <b class="caret"></b>							
						</a>
						
						<ul class="dropdown-menu">
							<li>
								<a href="./student_account.jsp"><i class="icon-user"></i> 账号设置  </a>
							</li>
							
							<li>
								<a href="./change_password.jsp"><i class="icon-lock"></i> 更改密码</a>
							</li>
							
							<li class="divider"></li>
							
							<li>
								<a href="./login.jsp"><i class="icon-off"></i> 登出</a>
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
						<img src="./img/student.png" alt="" class="thumbnail" />
					</div> <!-- /account-avatar -->
				
					<div class="account-details">
					
						<span class="account-name">${stuinfo }</span>
						
						<span class="account-role">学生</span>
						
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
							练习 <b class="caret"></b>							
						</a>
						
						<ul class="dropdown-menu">
							<li>
								<a href="./single_choice_exercise.jsp">
								 单选题
								 </a>
							</li>
							
							<li>
								<a href="./mul_choice_exercise.jsp">
								多选题
							 </a>
							</li>
							<li>
								<a href="./mul_choice_exercise.jsp">
								填空题
							 </a>
							</li>			
						</ul>
					</li>
					
					<li>
						<a href="./test.jsp">
							<i class="icon-th-list"></i>
							考试		
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
						<a href="./calculation_of_results.jsp">
							<i class="icon-signal"></i>
							成绩统计
						</a>
					</li>
					
					<li>
						<a href="student.action?opttype=stuAccount">
							<i class="icon-user"></i>
							用户账户							
						</a>
					</li>
					
					<li>
						<a href="./login.jsp">
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
					单选题结果					
				</h1>

					<div class="widget widget-table">
					<div class="widget-content">
					 <form action="questionBank.jsp" method="post" name="frm2">
						<table class="table table-striped table-bordered">
							<thead>
								<tr>
									<th>#</th>
									<th>题干</th>
									<th>A</th>
									<th>B</th>
									<th>C</th>
									<th>D</th>
									<th>正确答案</th>
									<th>结果</th>
								</tr>
							</thead>
							<tbody>
							 <% ExerciseDao ed=new ExerciseDao();
						  List<Single_choice> slist=ed.querySingle_choices();
						  pageContext.setAttribute("slist",slist);
							%>
   <c:forEach var="s" items="${slist }" varStatus="item">
   <tr>
   <td>${s.id}</td>
   <td>${s.scontent}</td>
   <td>${s.aanswer}</td>
   <td>${s.banswer}</td>
   <td>${s.canswer}</td>   
   <td>${s.danswer}</td> 
   <td>${s.tanswer}</td>            
 <td>
<i class="icon-ok"></i>													
</td>
     </tr>  
     </c:forEach>  		
							</tbody>
							
						</table>
						</form>
						
					</div> <!-- /widget-content -->
					
					<center><input type="submit" name="opttype"  class="btn btn-primary" value="错题查询" ">
<input type="submit"  class="btn btn-primary" value="取消" ">
</center>
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


<script src="./js/bootstrap.js"></script>
<script src="./js/faq.js"></script>

<!-- <script>

$(function () {
	
	$('.faq-list').goFaq ();
	
});

</script> -->



  </body>
</html>
