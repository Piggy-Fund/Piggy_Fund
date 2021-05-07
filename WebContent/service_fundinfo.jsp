<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>小猪基金</title>
<link rel="stylesheet" href="bootstrap-4.4.1-dist/css/bootstrap.min.css">
<link href="pricing.css" rel="stylesheet">
<script src="bootstrap-4.4.1-dist/jquery-3.0.0.slim.min.js"></script>
<script src="bootstrap-4.4.1-dist/popper.min.js"></script>
<script src="bootstrap-4.4.1-dist/js/bootstrap.min.js"></script>
<style type="text/css">
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
      }

      @media (min-width: 768px) {
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
		<c:forEach items="${fundinfo}" var="item">

		<div class="pricing-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
		  <h1 class="display-4"><a class="text-muted font-weight-bold"><font size="6">${item.name}(${item.id})</font></a></h1>
		  <p class="lead">净值估算是按照基金历史定期报告公布的持仓和指数走势预测当天净值，预估数值不代表真实净值，仅供参考，</p>
		  <p class="lead">实际涨跌幅以基金净值为准。</p>
		</div>
		
		<div class="row mb-1 " >
			<div class="col-md-12 shadow p-3 mb-5 bg-white rounded border-top border-right " >
				<div><h4 class="text-secondary font-weight-bold">净值估算</h4><p class="mb-1 text-muted">${time}</p></div>
				<hr>
				<div class="mb-1 text-muted">净值估算每个交易日9：30-15：00盘中实时更新（QDII基金为海外交易时段）</div>
				<div class="row mb-2 ">
					<div class="col-md-6 ">
						<ul class="list-unstyled mt-3 mb-4">
							<li>单位净值：${item.average}</li>
							
						</ul>
					</div>
					
					<div class="col-md-6 ">
						<ul class="list-unstyled mt-3 mb-4">
							<li>累计净值：${item.sum}</li>
						</ul>
					</div>
				</div>
			</div>
			
			<div class="col-md-12 shadow p-3 mb-5 bg-white rounded border-top border-right" >
				<div><h4 class="text-secondary font-weight-bold">增长率</h4><p class="mb-1 text-muted">${time}</p></div>
				<hr>
				<div class="row mb-2 ">
					<div class="col-md-6 ">
						<ul class="list-unstyled mt-3 mb-4">
							<li class = "mb-sm-2">近1月：${item.growthm1}%</li>
							<li class = "mb-sm-2">近3月：${item.growthm3}%</li>
							<li class = "mb-sm-2">近6月：${item.growthm6}%</li>
						</ul>
					</div>
					
					<div class="col-md-6 ">
						<ul class="list-unstyled mt-3 mb-4">
							<li class = "mb-sm-2">近1年：${item.growthy1}%</li>
							<li class = "mb-sm-2">近3年：${item.growthy3}%</li>
							<li class = "mb-sm-2">成立以来：${item.growthsince}%</li>
						</ul>
					</div>
				</div>
			</div>
			
			<div class="col-md-12 shadow p-3 mb-5 bg-white rounded border-top border-right" >
				<div><h4 class="text-secondary font-weight-bold">其它</h4><p class="mb-1 text-muted">${time}</p></div>
				<hr>
				<div class="row mb-2 ">
					<div class="col-md-6 ">
						<ul class="list-unstyled mt-3 mb-4">
							<li class = "mb-sm-2">基金类型：${item.fundtype}</li>
							<li class = "mb-sm-2">风险等级：${item.risklevel}</li>
							<li class = "mb-sm-2">基金规模：${item.fundsize}亿元（2020-09-30）</li>
						</ul>
					</div>
					
					<div class="col-md-6 ">
						<ul class="list-unstyled mt-3 mb-4">
							<li class = "mb-sm-2">基金经理：${item.fundmanager}</li>
							<li class = "mb-sm-2">成 立 日：${item.formdate}</li>
							<li class = "mb-sm-2">管 理 人：${item.administrator}</li>
							<li class = "mb-sm-2">基金评级：${item.fundgrade}</li>
						</ul>
					</div>
				</div>
			</div>
			
			<div class="col-md-12 shadow p-3 mb-5 bg-white rounded border-top border-right" >
				<div><h4 class="text-secondary font-weight-bold">购买</h4><p class="mb-1 text-muted">${time}</p></div>
				<hr>
				<div class="row mb-2 ">
					<div class="col-md-6 ">
						<ul class="list-unstyled mt-3 mb-4">
							<li class = "mb-sm-2">交易状态：${item.dealstate}</li>
							<li class = "mb-sm-2">购买手续费：${item.charge}%</li>
						</ul>
					</div>
					<div class="col-md-6 ">
						<ul class="list-unstyled mt-3 mb-4">
							<li><a class="btn btn-secondary  mr-sm-2 mb-sm-2" href="Buyinfo?id=${item.id}">立即购买</a></li>
							
						</ul>
					</div>
				</div>
			</div>
		</div>
		</c:forEach>
		<table class="table">
				<thead>
					<tr>
						<th scope="col">点击</th>
						<th scope="col">回复</th>
						<th scope="col">标题</th>
						<th scope="col">作者</th>
						<th scope="col">更细时间</th>
					</tr>
				</thead>

				<tbody>
					<c:forEach items="${ties}" var="i">
						<tr>
							<th scope="row">${i.dianji}</th>
							<td>${i.huifu}</td>
							<td>${i.biaoti}</td>
							<td>${i.zuozhe}</td>
							<td>${i.gengxinshijian}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			
	</div>

	<!-- 页脚 -->
	<%@ include file="foot.jsp"%></body>

</html>