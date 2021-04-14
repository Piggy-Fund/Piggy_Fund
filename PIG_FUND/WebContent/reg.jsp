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
	max-width: 330px;
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
	<form class="form-signin text-center" style="padding-top: 80px"
		method ="post" action="RegAction">
		<img class="mb-4" src="images/pig.jpg" alt="" width="120" height="120">
		<h1 class="h3 mb-3 font-weight-bold text-muted">注册</h1>
		<div class="form-group row">
			<label for="inputusername3" class="col-sm-3 col-form-label text-muted">用户名</label>
			<div class="col-sm-8">
				<input name="username" class="form-control" id="inputusername3">
			</div>
		</div>
		<div class="form-group row">
			<label for="inputPassword3" class="col-sm-3 col-form-label text-muted">密码</label>
			<div class="col-sm-8">
				<input type="password" name="password" class="form-control"
					id="inputPassword3">
			</div>
		</div>

		<div class="form-group row">
			<label for="inputPassword3" class="col-sm-3 col-form-label text-muted">手机号</label>
			<div class="col-sm-8">
				<input name="phonenum" class="form-control" id="inputPassword3">
			</div>
		</div>

		<div class="form-group row">
			<div class="col-sm">
				<a class="btn btn-primary btn-secondary" href="login.jsp" role="button">登录</a>
				<button type="submit" class="btn btn-secondary  ">注册</button>
			</div>

		</div>
		<!-- 页脚 -->
		<%@ include file="foot.jsp"%>
	</form>
</body>
</html>