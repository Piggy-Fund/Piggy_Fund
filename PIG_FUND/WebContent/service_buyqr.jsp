<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>小猪基金</title>
<link rel="stylesheet" href="bootstrap-4.4.1-dist/css/bootstrap.min.css">
<link href="form-validation.css" rel="stylesheet">
<script src="bootstrap-4.4.1-dist/jquery-3.0.0.slim.min.js"></script>
<script src="bootstrap-4.4.1-dist/popper.min.js"></script>
<script src="bootstrap-4.4.1-dist/js/bootstrap.min.js"></script>
<style type="text/css">
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
	<!-- 主容器 -->
	<div class="container">
		<!-- 容器头部 -->
		<%@ include file="service_top.jsp"%>

		<div class="container bg-light text-center">
			<div class="py-5 text-center">
				<img class="d-block mx-auto mb-4" src="images/pig.jpg" alt=""
					width="82" height="82">
				<h2>购买账单</h2>
				<p class="lead">投资者投资前需仔细阅读《基金合同》、《招募说明书》等法律文件，了解产品收益与风险特征。</p>
				<p class="lead">过往业绩不预示其未来表现，市场有风险，投资需谨慎。</p>
			</div>

			<div>
				<img src="qrimg/${qrcode}">
			</div>
			<div style="margin-top:30px;">
				<a class="btn btn-secondary  mr-sm-2" href="Warehouselist">支付完成</a>
			</div>
		</div>
	</div>
	<!-- 页脚 -->
	<%@ include file="foot.jsp"%>

</body>

</html>