<%@ page language="java" import="java.util.*,entity.Single_choice,dao.ExerciseDao" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <title>计算机基础练习</title>
    
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
				<form action="exercise.action" method="post">
				<h1 class="page-title">
					<i class="icon-pushpin"></i>
					计算机基础知识练习				
				</h1>
				
				<div class="widget">
														
					<div class="widget-content">
						
						<!-- <h3>Search...</h3> -->
						<ol class="faq-list">
						 <% ExerciseDao ed=new ExerciseDao();
						  List<Single_choice> slist=ed.querySingle_choices();
						  pageContext.setAttribute("slist",slist);
							%>
						   <c:forEach var="sg" items="${slist }" varStatus="status">
						   <li>
						   <h4>${sg.scontent}</h4>
						   <input type="radio" name="answerResult${status.count}" value="A">${sg.aanswer} 
						   <input type="radio" name="answerResult${status.count}" value="B">${sg.banswer} 
						   <input type="radio" name="answerResult${status.count}" value="C">${sg.canswer}
						   <input type="radio" name="answerResult${status.count}" value="D">${sg.danswer}
   
						</li>
						     </c:forEach>  						
												</ol>
					<div class="form-actions">
											<input type="submit" name="opttype"  class="btn btn-primary" value="提交">
											<button class="btn">取消</button>
					</div> <!-- /form-actions -->				
					</div> <!-- /widget-content -->
					
				</div> <!-- /widget -->
				</form>
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

<script>

$(function () {
	
	$('.faq-list').goFaq ();
	
});

</script>



  </body>
</html>
