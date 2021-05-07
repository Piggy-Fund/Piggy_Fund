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
<style type="text/css">
</style>
</head>
<body>
	<!-- 导航栏 -->
	<%@ include file="nav.jsp"%>
	<!-- 主容器 -->
	<div class="container">
		<!-- 容器头部 -->
		<%@ include file="service_top.jsp"%>

		<!-- 容器导航 -->
		
		<!-- 基金搜索-->
		<div class="container">
			<form method="post" action="FundSearch" style="margin-buttom: 80px;">
			<hr>
				<div class="row mb-2">
					<div class="col-md-6 text-left">
						<a class=" mx-auto font-weight-bold text-muted"><font size="6">自定义搜索</font></a>
					</div>
					<div class="col-md-6 text-right">
						<button type="submit" class="btn btn-secondary my-2 my-sm-0">搜索</button>
					</div>
				</div>
				<div class=" row container">

					<!--选择基金类型 -->
					<div class="col-md-4 shadow p-3 mb-5 bg-white rounded ">
						<h5>基金类型</h5>
						<div class="custom-control custom-radio ">
							<label><input type="radio" name="optradio1" value="股票型"${op1=='股票型'?'checked':'' }>股票型</label>
						</div>
						<div class="custom-control custom-radio">
							<label><input type="radio" name="optradio1" value="混合型"${op1=='混合型'?'checked':'' }>混合型</label>
						</div>
						<div class="custom-control custom-radio">
							<label><input type="radio" name="optradio1" value="债券型"${op1=='债券型'?'checked':'' }>债券型</label>
						</div>
						<div class="custom-control custom-radio">
							<label><input type="radio" name="optradio1" value="指数型" ${op1=='指数型'?'checked':'' }>指数型</label>
						</div>
						<div class="custom-control custom-radio">
							<label><input type="radio" name="optradio1" value="all" ${op1=='all'?'checked':'' }>所有</label>
						</div>
					</div>
					<div
						class="col-md-4 shadow p-3 mb-5 bg-white rounded" >
						<h5>基金业绩</h5>
						<div class="custom-control custom-radio">
							<label><input type="radio" name="optradio2" value="10"${op2=='10'?'checked':'' } >前10</label>
						</div>
						<div class="custom-control custom-radio">
							<label><input type="radio" name="optradio2" value="20"${op2=='20'?'checked':'' }>前20</label>
						</div>
						<div class="custom-control custom-radio">
							<label><input type="radio" name="optradio2" value="50"${op2=='50'?'checked':'' }>前50</label>
						</div>
						<div class="custom-control custom-radio">
							<label><input type="radio" name="optradio2" value="all" ${op2=='all'?'checked':'' }>所有</label>
						</div>
					</div>
					<div class="col-md-4 shadow p-3 mb-5 bg-white rounded">
						<h5>选择风险等级</h5>
						<div class="custom-control custom-radio">
							<label><input type="radio" name="optradio3" value="R1谨慎"${op3=='R1谨慎'?'checked':'' }>R1谨慎型</label>
						</div>
						<div class="custom-control custom-radio">
							<label><input type="radio" name="optradio3" value="R2稳健"${op3=='R2稳健'?'checked':'' }>R2稳健型</label>
						</div>
						<div class="custom-control custom-radio">
							<label><input type="radio" name="optradio3" value="R3平衡"${op3=='R3平衡'?'checked':'' }>R3平衡型</label>
						</div>
						<div class="custom-control custom-radio">
							<label><input type="radio" name="optradio3"value="R4进取"${op3=='R4进取'?'checked':'' }>R4进取型</label>
						</div>
						<div class="custom-control custom-radio">
							<label><input type="radio" name="optradio3" value="R5激进"${op3=='R5激进'?'checked':'' }>R5激进型</label>
						</div>
						<div class="custom-control custom-radio">
							<label><input type="radio" name="optradio3" value="all" ${op3=='all'?'checked':'' }>所有</label>
						</div>
					</div>

				</div>
			</form>


			<table class="table table-dark table-hover">
				<thead>
					<tr>
						<th scope="col">股票代码</th>
						<th scope="col">股票名称</th>
						<th scope="col">股票类型</th>
						<th scope="col">风险等级</th>
						<th scope="col">单位净值<a type="button" href="#" ><img src="images/升序.png" ></a><a type="button" href="#" ><img src="images/降序.png" ></a></th>
						<th scope="col">日增长率<a type="button" href="#" ><img src="images/升序.png" ></a><a type="button" href="#" ><img src="images/降序.png" ></a></th>
						<th scope="col">手续费<a type="button" href="#" ><img src="images/升序.png" ></a><a type="button" href="#" ><img src="images/降序.png" ></a></th>
						<th scope="col">购买</th>
					</tr>
				</thead>

				<tbody>
					<c:forEach items="${fund}" var="item">
						<tr>
							<th scope="row">${item.id}</th>
							<td><a href="Fundinfo?id=${item.id}">${item.name}</a></td>
							<td>${item.fundtype}</td>
							<td>${item.risklevel}</td>
							<td>${item.average}</td>
							<td>${item.dailygrowth}%</td>
							<td>${item.charge}%</td>
							<td>
								<a type="button" href="Buyinfo?id=${item.id}" class="btn btn-secondary my-2 my-sm-0">购买</a>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>

	<!-- 页脚 -->
	<%@ include file="foot.jsp"%>
</body>

</html>