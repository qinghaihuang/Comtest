<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>在线题库及考试系统</title>
<style type="text/css">
* {
	margin: 0;
	padding: 0;
	list-style-type: none;
}
a, img {
	border: 0;
	text-decoration: none;
}
body {
	font-family: "微软雅黑", "宋体", "黑体", Arial;
}
/* focus */
.xmSlide {
	background-color: #022c5e;
}
.xmSlide_01 {
	height: 639px;
	background: url(./img/focus01.jpg) no-repeat center center;
}
.xmSlide_02 {
	height: 639px;
	background: url(./img/focus02.jpg) no-repeat center center;
}
.xmSlide_03 {
	height: 639px;
	background: url(./img/focus03.jpg) no-repeat center center;
}
.xmSlide-pagination {
	background-color: #fff;
	padding-top: 10px;
	text-align: center;
	height: 20px;
}
.xmSlide-pagination li {
	display: inline-block;
	width: 12px;
	height: 12px;
	margin: 0 5px;
}
.xmSlide-pagination li a {
	display: inline-block;
	width: 12px;
	height: 12px;
	text-indent: -9999px;
	background-color: #ccd1d9;
	border-radius: 8px;
	-moz-border-radius: 8px;
	-webkit-border-radius: 8px;
	overflow: hidden;
}
.xmSlide-pagination li a.active {
	background-color: #656d78;
}
.xmSlide-control {
	overflow: hidden;
}
.btn {
	width: 950px;
	position: absolute;
	left: 50%;
	margin-left: -475px;
	top: 0;
	z-index: 9999;
}
.btn span {
	display: block;
	text-align: right;
	padding-right: 158px;
}
.btn p {
	padding: 410px 78px 0 0;
	text-align: right;
}
.btn p a {
	width: 133px;
	height: 36px;
	display: inline-block;
	margin-right: 10px;
	line-height: 36px;
	font-size: 14px;
	color: #fff;
	text-align: center;
	-webkit-border-radius: 4px;
	-moz-border-radius: 4px;
	border-radius: 4px;
}
.btn p a.item1 {
	background-color: #666666;
	-webkit-box-shadow: 0 2px rgba(13,47,88,.19);
	-moz-box-shadow: 0 2px rgba(13,47,88,.19);
	box-shadow: 0 2px rgba(13,47,88,.19);
}
.btn p a.item2 {
	background-color: #5e95e1;
	-webkit-box-shadow: 0 2px rgba(13,47,88,.19);
	-moz-box-shadow: 0 2px rgba(13,47,88,.19);
	box-shadow: 0 2px rgba(13,47,88,.19);
}
</style>
<script type="text/javascript" src="./js/jquery18.js"></script>
<script type="text/javascript" src="./js/slides.js"></script>
<script type="text/javascript">
$(function(){
	$("#xmSlide").xmSlide({
		width: 950,
		height: 639,
		responsiveWidth:710,
		pagination: {
			effect: "fade"  //可换成"slide"
		},
		effect: {
			fade: {
				speed: 400
			}
		},
		play: {
			effect: "fade", //可换成"slide"
			interval: 4000,
			auto: true,
			pauseOnHover: true,
			restartDelay: 2500
		}
	});
});
</script>
</head>
<body>
<div class="focus">
  <div id="xmSlide" class="xmSlide">
    <div class="xmSlide_01"></div>
    <div class="xmSlide_02"></div>
    <div class="xmSlide_03"></div>
  </div>
  <div class="btn">
    <p> <a href="login.jsp" class="item1" target="_blank">在线考试系统</a><br>
      </p>
  </div>
</div>
<script src="http://www.jq22.com/js/jq.js"></script>

</body>
</html>
