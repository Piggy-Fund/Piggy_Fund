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
		
		<div class="container bg-light">
			<div class="py-5 text-center">
				<img class="d-block mx-auto mb-4" src="images/pig.jpg" alt="" width="82" height="82">
				<h2>购买账单</h2>
				<p class="lead">投资者投资前需仔细阅读《基金合同》、《招募说明书》等法律文件，了解产品收益与风险特征。</p>
				<p class="lead">过往业绩不预示其未来表现，市场有风险，投资需谨慎。</p>
			</div>

			<div class="row">
				<!-- 右侧仓库 -->
				<%@ include file="service_rightwarehouse.jsp"%>
				
				<div class="col-md-8 order-md-1">
				<c:forEach items="${fundinfo}" var="item">
					<h4 class="mb-3 text-muted">账单信息</h4>
					<div class="row">
						<div class="col-md-6 mb-3">
							<label >用户：${username}</label> 
						</div>
						<div class="col-md-6 mb-3">
							<label >下单时间：${time}</label> 
						</div>
					</div> 
					<h4 class="mb-3 text-muted">商品信息</h4>
					
					
					<form method ="get" action="BuyAction">
						
						<div class="row">
							<div class="col-md-6 mb-3">
								<label >基金名称：${item.name}</label> 
								<label ><input type="radio" name="name" value="${item.name}" checked style="display:none"/></label> 
							</div>
							<div class="col-md-6 mb-3">
								<label >基金代码：${item.id}</label> 
								<label ><input type="radio" name="id" value="${item.id}" checked style="display:none"/></label> 
							</div>
						</div> 
						<div class="row">
							<div class="col-md-6 mb-3">
								<label >基金类型：${item.fundtype}</label> 
							</div>
							<div class="col-md-6 mb-3">
								<label >风险等级：${item.risklevel}</label> 
							</div>
						</div>
							
						<div class="row">
							<div class="col-md-6 mb-3">
								<label >交易状态：${item.dealstate}</label> 
							</div>
							<div class="col-md-6 mb-3">
								<label>购买手续费：${item.charge}%</label> 
							</div>
						</div>
						
						<div class="row">
							<div class="col-md-6 mb-3">
								<label >购买数量：</label> 
								<div class=" custom-radio ">
									<label><input type="radio" name="optradio1" value="change">自定义数量<input name = "change" class="form-control"></label>
								</div>
							</div>
							<div class="col-md-6 mb-3">
								<div class="col-md-6 mb-1">
									<label ><input type="radio" name="optradio1" value="10" checked>10份</label> 
								</div>
								<div class="col-md-6 mb-1">
									<label ><input type="radio" name="optradio1" value="50">50份</label> 
								</div>
								<div class="col-md-6 mb-1">
									<label ><input type="radio" name="optradio1" value="100">100份</label> 
								</div>
							</div>
						</div>

						<hr class="mb-4">

						<h4 class="mb-3 text-muted">支付方式</h4>

						<div class="d-block my-3">
							<div class="custom-control custom-radio">
								<label ><input type="radio" name="optradio2" value="zfb" checked>支付宝</label>
							</div>
							<div class="custom-control custom-radio">
								<label ><input type="radio" name="optradio2" value="wechat">微信</label>
							</div>
						</div>
						<hr class="mb-4">
						<button type="submit" class="btn btn-secondary btn-lg btn-block">支付</button>
					</form>
				</c:forEach>
				</div>
			</div>
		</div>
	</div>
	<!-- 页脚 -->
	<%@ include file="foot.jsp"%>

</body>

</html>