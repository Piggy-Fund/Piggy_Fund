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

<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}
</style>

</head>
<body>
	<!-- 导航栏 -->
	<%@ include file="nav.jsp"%>

	<div
		class="position-relative overflow-hidden p-5 p-md-8 m-md-8 text-center bg-light" style="background:url(images/indexbg.jpg);">
		<div class="col-md-5 p-lg-5 mx-auto my-5">
			<h1 class="text-white font-weight-bold">PIGGY FUND</h1>
			<h1 class="text-white font-weight-bold">小猪基金</h1>
			<p class="text-light">小猪基金,冲冲冲！！
			干就完了，冲它丫的！</p>
			<a class="btn btn-dark" href="login.jsp">登录</a> 
			<a class="btn btn-dark" href="reg.jsp">注册</a>
		</div>
	</div>
	
	

	<!-- WELCOME SECTION -->
	<div class="container">
	<hr >
		<div class="row mb-3" style="margin-top:30px;">
			<div class="col-md-4">
			<div class="shadow p-3 mb-5 bg-white rounded border-top border-right" >
			
				<h2 class="text-secondary font-weight-bold">好买推荐</h2>
				<hr>
				<p class="text-muted">好买基金研究中心</p>
				<p class="text-muted">严格筛选20~25只优质基金</p>
				<p class="text-muted">兼顾大类资产配置，布局全球市场</p>
				<p>
					<a class="btn btn-secondary" href="#" role="button">点击获取详情 &raquo;</a>
				</p>
			</div>
			</div>
			<div class="col-md-4">
			<div class="shadow p-3 mb-5 bg-white rounded border-top border-right" >
				<h2 class="text-secondary font-weight-bold">定投排行</h2>
				<hr>
				<p class="text-muted">定投项目轻松选</p>
				<p class="text-muted">3000余只基金定投轻松选</p>
				<p class="text-muted">支持日、周、月定投</p>
				<p>
					<a class="btn btn-secondary" href="#" role="button">点击获取详情 &raquo;</a>
				</p>
			</div>
			</div>
			<div class="col-md-4">
			<div class="shadow p-3 mb-5 bg-white rounded border-top border-right" >
				<h2 class="text-secondary font-weight-bold">组合专区</h2>
				<hr>
				<p class="text-muted">忠于资产配置理念</p>
				<p class="text-muted">享受资产轮动带来的收益</p>
				<p class="text-muted">支持自建组合，组合分析，跟着牛人买组合</p>
				<p>
					<a class="btn btn-secondary" href="#" role="button">点击获取详情 &raquo;</a>
				</p>
			</div>
			</div>
		</div>
		<hr>
	</div>


</body>
<!-- 页脚 -->
<%@ include file="foot.jsp"%>
</html>