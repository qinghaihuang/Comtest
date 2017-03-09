<%@ page language="java" import="java.util.*,entity.Question,dao.QuestionDao" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
 <head>
    <title>学生管理</title>
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="apple-mobile-web-app-capable" content="yes" />    
    
    <link href="./css/bootstrap.min.css" rel="stylesheet" />
    <link href="./css/bootstrap-responsive.min.css" rel="stylesheet" />
    
    
    <link href="./css/font-awesome.css" rel="stylesheet" />
    
    <link href="./css/adminia.css" rel="stylesheet" /> 
    <link href="./css/adminia-responsive.css" rel="stylesheet" /> 
    
    <link href="./css/pages/dashboard.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="./css/kkpager_blue.css" />

    

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
								<a href="./change_password.html"><i class="icon-lock"></i> 更改密码</a>
							</li>
							
							<li class="divider"></li>
							
							<li>
								<a href="./login_admin.jsp?opttype=logout"><i class="icon-off"></i> 登出</a>
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
					<li>
						<a href="./teacher_manage.jsp">
							<i class="icon-home"></i>
							教师管理
						</a>
					</li>
					<li>
						<a href="./student_manage.jsp">
							<i class="icon-home"></i>
							学生管理
						</a>
					</li>		
					<li>
						<a href="./class_manage.jsp">
							<i class="icon-home"></i>
							班级管理
						</a>
					</li>
					<li>
						<a href="./account.jsp">
							<i class="icon-user"></i>
							管理员账户							
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
				
				<div class="sidebar-extra">
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.</p>
				</div> <!-- .sidebar-extra -->
				
				<br />
		
			</div> <!-- /span3 -->
			
			
			
			<div class="span9">
				
				<h1 class="page-title">
					<i class="icon-home"></i>
					题库信息					
				</h1>
				
					<div class="widget widget-table">
					<div class="widget-content">
					 <form action="questionBank.jsp" method="post">
						<table class="table table-striped table-bordered">
							<thead>
								<tr>
									<th>#</th>
									<th>题干</th>
									<th>题型</th>
									<th>添加时间</th>
									<th>&nbsp;</th>
								</tr>
							</thead>
							<tbody>
								 <% QuestionDao qt=new QuestionDao();
  List<Question> qlist=qt.queryQuestion();
  pageContext.setAttribute("qlist",qlist);
	%> 
   <tr>
   <c:forEach var="qt" items="${qlist }" varStatus="item">
   <tr>
   <td>${qt.id}</td>
   <td>${qt.qcontent}</td>
   <td>${qt.qtype}</td>
   <td>${qt.createtime}</td>    
 <td>
<a href="question.action?opttype=edit&id=${qt.id}&qcontent=${qt.qcontent}&qtype=${qt.qtype}&aanswer=${qt.aanswer}
&banswer=${qt.banswer}&canswer=${qt.canswer}&danswer=${qt.danswer}&tanswer=${qt.tanswer}" class="btn btn-small btn-warning">
<i class="icon-ok"></i>								
</a>					
<a href="question.action?opttype=delete&id=${qt.id}" class="btn btn-small">
<i class="icon-remove"></i>						
</a>
</td>
     </tr>  
     </c:forEach>  
								</tr>		
							</tbody>	
						</table>
						</form>
					
					</div> <!-- /widget-content -->
					
				</div> <!-- /widget -->	
				
<div id="kkpager"><div>
<span class="pageBtnWrap">
<span class="disabled">首页</span>
<span class="disabled">上一页</span>
<span class="curr">1</span>
<a title="第2页" href="pager_test_orange_color.html?pno=2">2</a>
<a title="第3页" href="pager_test_orange_color.html?pno=3">3</a>
<a title="第4页" href="pager_test_orange_color.html?pno=4">4</a>
<a title="第5页" href="pager_test_orange_color.html?pno=5">5</a>
<a title="第6页" href="pager_test_orange_color.html?pno=6">6</a>
<a title="第7页" href="pager_test_orange_color.html?pno=7">7</a>
<span class="spanDot">...</span>
<a title="下一页" href="pager_test_orange_color.html?pno=2">下一页</a>
<a title="尾页" href="pager_test_orange_color.html?pno=20">尾页</a>
</span>
<span class="infoTextAndGoPageBtnWrap">
<span class="totalText">当前第<span class="currPageNum">1</span>页
<span class="totalInfoSplitStr">/</span>共<span class="totalPageNum">20</span>页
</span>
<span class="goPageBox">&nbsp;转到<span id="kkpager_gopage_wrap">
<input id="kkpager_btn_go" onclick="kkpager.gopage()" type="button" value="确定">
<input id="kkpager_btn_go_input" onkeypress="return kkpager.keypress_gopage(event);" onfocus="kkpager.focus_gopage()" onblur="kkpager.blur_gopage()" type="text" value="2"></span>页
</span>
</span>
</div>
<div style="clear:both;">
</div>
</div>
					
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
<script src="./js/kkpager.min.js"></script>

<script>
//init
$(function(){
	//生成分页
	//有些参数是可选的，比如lang，若不传有默认值
	kkpager.generPageHtml({
		pno : pageNo,
		//总页码
		total : totalPage,
		//总数据条数
		totalRecords : totalRecords,
		//链接前部
		hrefFormer : 'pager_test_orange_color',
		//链接尾部
		hrefLatter : '.html',
		getLink : function(n){
			return this.hrefFormer + this.hrefLatter + "?pno="+n;
		}
		/*
		,lang				: {
			firstPageText			: '首页',
			firstPageTipText		: '首页',
			lastPageText			: '尾页',
			lastPageTipText			: '尾页',
			prePageText				: '上一页',
			prePageTipText			: '上一页',
			nextPageText			: '下一页',
			nextPageTipText			: '下一页',
			totalPageBeforeText		: '共',
			totalPageAfterText		: '页',
			currPageBeforeText		: '当前第',
			currPageAfterText		: '页',
			totalInfoSplitStr		: '/',
			totalRecordsBeforeText	: '共',
			totalRecordsAfterText	: '条数据',
			gopageBeforeText		: ' 转到',
			gopageButtonOkText		: '确定',
			gopageAfterText			: '页',
			buttonTipBeforeText		: '第',
			buttonTipAfterText		: '页'
		}*/
		
		//,
		//mode : 'click',//默认值是link，可选link或者click
		//click : function(n){
		//	this.selectPage(n);
		//  return false;
		//}
	});
});
</script>


  </body>
</html>
