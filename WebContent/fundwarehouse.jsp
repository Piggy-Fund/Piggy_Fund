<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
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
	<!-- 主容器 -->
	<div class="container">
		<!-- 容器头部 -->
		<%@ include file="service_top.jsp"%>
		<hr>
		<div class="d-flex justify-content-between align-items-center mb-3">
			<a class="text-muted"><font size="6">基金仓库<img class="mr-3" src="images/pig.jpg" width="48" height="48"></font></a>
			<a class="badge badge-secondary badge-pill"><font size="4">${count}</font></a>
		</div>

		<table class="table table-hover">
			<thead>
				<tr>
					<th>基金代码</th>
					<th>基金名称</th>
					<th>数量</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${warehouselist}" var="item">
						<tr>
							<th scope="row">${item.fundid}</th>
							<td><a href="Fundinfo?id=${item.fundid}" class="text-muted">${item.fundname}</a></td>
							<td>${item.fundnum}</td>
							<td>
								<a type="button" href="Buyinfo?id=${item.fundid}" class="btn btn-secondary  my-sm-0">购买</a>
								<a type="button" href="SaleServlet?id=${item.fundid}" class="btn btn-secondary  my-sm-0">出售</a>
							</td>
						</tr>
					</c:forEach>
			</tbody>
		</table>

		
	</div>
</body>
<!-- 页脚 -->
<%@ include file="foot.jsp"%>
</html>