<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>小猪基金</title>
<link rel="stylesheet" href="bootstrap-4.4.1-dist/css/bootstrap.min.css">
<script src="bootstrap-4.4.1-dist/jquery-3.0.0.slim.min.js"></script>
<script src="bootstrap-4.4.1-dist/popper.min.js"></script>
<script src="bootstrap-4.4.1-dist/js/bootstrap.min.js"></script>
<style type="text/css">
body {
	height: 100%;
}

body {
	padding-bottom: 40px;
	background-color: #f5f5f5;
}

.form-signin {
	width: 100%;
	max-width: 450px;
	padding: 15px;
	margin: auto;
}

.form-signin .form-control {
	position: relative;
	box-sizing: border-box;
	height: auto;
	padding: 10px;
	font-size: 16px;
}
</style>
</head>
<body>
	<!-- 导航栏 -->
	<%@ include file="nav.jsp"%>
	<div class="container">
		<div>
			<div class="pricing-header px-3 py-3 pt-md-5 pb-md-4 mx-auto ">
				<h1 class="display-4">
					<a class="text-muted font-weight-bold"><font size="6">项目名称：小猪基金</font></a>
				</h1>
				<hr>
				<font class="text-muted font-weight-bold" size="5">项目背景：</font>
				<p class="lead">随着我国经济水平的持续发展，金融产品也在不断地发展，基金投资者数量
					也是日益增长。而创建一个一站式基金交易平台，可以帮助投资者更方便地购买、销售、管理基金。</p>
				<hr>
				<font class="text-muted font-weight-bold" size="5">项目目标：</font>
				<p class="lead">本项目旨在开发一款能够提供多种功能的基金产品交易平台，针对不同的用户，提供不同的个性化的服务，从而达到相关核心目标：
					<p>a.提供清爽的操作界面以及简单的操作方法,以达到用户入手即会操作；</p>
					<p>b.能够清楚地向不同用户提供相对应的基金，及提供个性化推荐选择功能；</p>
					<p>c.增强用户对基金理财的理解，让用户在理财的同时学到更多理财知识；
				<hr>
				<font class="text-muted font-weight-bold" size="5">小组成员：</font>
					<p class="lead">项目经理：徐伟博</p>
					<p class="lead">环境配置、知识整理及文案工作：叶昱颉</p>
					<p class="lead">系统研发及测试：俞凌云、程宇凡</p>
					<p class="lead">技术分析、知识整理、文案工作：杨智涵</p>
			</div>


		</div>
	</div>
	<%@ include file="foot.jsp"%>
</body>
</html>