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
		<hr>
		<div class="nav-scroller py-1 mb-2 ">
			<nav class="nav d-flex justify-content-between">
				<a class="p-2 text-muted font-weight-bold" href="#">基金导购</a> 
				<a class="p-2 text-muted font-weight-bold" href="#">热销基金</a> 
				<a class="p-2 text-muted font-weight-bold" href="#">优选基金</a> 
				<a class="p-2 text-muted font-weight-bold" href="#">定投排行</a> 
				<a class="p-2 text-muted font-weight-bold" href="#">新发基金</a>
			</nav>
		</div>

		<!-- -->
		<div class="jumbotron p-3 p-md-5 text-white rounded bg-dark">
			<div class="col-md-6 px-0">
				<h1 class="display-4 font-italic">基金超市</h1>
				<p class="lead my-3">小猪基金，天下无敌！</p>

			</div>

		</div>

		<div class="row mb-2">
			<!--基金导购-->
			<div class="col-md-6">
				<div class="card flex-md-row mb-4 shadow-sm h-md-250">
					<div class="card-body d-flex flex-column align-items-start">
						<h3 class="mb-0">
							<a class="text-secondary font-weight-bold" href="#">基金导购</a>
						</h3>
						<div class="mb-1 text-muted">XXXX</div>
						<p class="card-text mb-auto">XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
							XXXXXXXXXXXXXXXXXXx.</p>

						<p>
							<a href="#">点击获取详情>></a>
						</p>
					</div>
				</div>
			</div>
			
			<!--热销基金-->
			<div class="col-md-6">
				<div class="card flex-md-row mb-4 shadow-sm h-md-250">
					<div class="card-body d-flex flex-column align-items-start">
						<h3 class="mb-0">
							<a class="text-secondary font-weight-bold" href="#">热销基金</a>
						</h3>
						<div class="mb-1 text-muted">XXXX</div>
						<p class="card-text mb-auto">XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
							XXXXXXXXXXXXXXXXXXx.</p>

						<p>
							<a href="#">点击获取详情>></a>
						</p>
					</div>
				</div>
			</div>
		</div>

		<div class="row mb-2">
			<!--优选基金-->
			<div class="col-md-6">
				<div class="card flex-md-row mb-4 shadow-sm h-md-250">
					<div class="card-body d-flex flex-column align-items-start">
						<h3 class="mb-0">
							<a class="text-secondary font-weight-bold" href="#">优选基金</a>
						</h3>
						<div class="mb-1 text-muted">XXXX</div>
						<p class="card-text mb-auto">XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
							XXXXXXXXXXXXXXXXXXx.</p>

						<p>
							<a href="#">点击获取详情>></a>
						</p>
					</div>
				</div>
			</div>
			<!--定投排行-->
			<div class="col-md-6">
				<div class="card flex-md-row mb-4 shadow-sm h-md-250">
					<div class="card-body d-flex flex-column align-items-start">
						<h3 class="mb-0">
							<a class="text-secondary font-weight-bold" href="#">定投排行</a>
						</h3>
						<div class="mb-1 text-muted">XXXX</div>
						<p class="card-text mb-auto">XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
							XXXXXXXXXXXXXXXXXXx.</p>

						<p>
							<a href="#">点击获取详情>></a>
						</p>
					</div>
				</div>
			</div>
		</div>

		<div class="row mb-2">
			<!--新发基金-->
			<div class="col-md-6">
				<div class="card flex-md-row mb-4 shadow-sm h-md-250">
					<div class="card-body d-flex flex-column align-items-start">
						<h3 class="mb-0">
							<a class="text-secondary font-weight-bold" href="#">新发基金</a>
						</h3>
						<div class="mb-1 text-muted">XXXX</div>
						<p class="card-text mb-auto">XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
							XXXXXXXXXXXXXXXXXXx.</p>

						<p>
							<a href="#">点击获取详情>></a>
						</p>
					</div>
				</div>
			</div>
		</div>

		<div>
			<div class="" style="margin-top: 50px">
				<div class="row mb-2">
					<div class="col-md-6 text-left">
						<a class=" font-weight-light mx-auto"><font size="6">股票型</font></a>
					</div>
					<div class="col-md-6 text-right mx-auto">
						<a class=" font-weight-light mx-auto" href="#"><font size="3">更多>></font></a>
					</div>
				</div>
				<div class="tableWrap">
					<table class="table table-hover">
						<thead>
							<tr>
								<th>代码</th>
								<th style="">基金名称</th>
								<th>手续费</th>
								<th>购买</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><a href="#">004997</a></td>
								<td class="txt"><a class="fname">广发高端制造股票A</a></td>
								<td><a class="a_fl">0.15%</a></td>
								<td><a class="buy" href="#">购买</a></td>
							</tr>
							<tr>
								<td><a href="#">161725</a></td>
								<td class="txt"><a class="fname">招商中证白酒指数分级</a></td>
								<td><a class="a_fl">0.10%</a></td>
								<td><a class="buy" href="#">购买</a></td>
							</tr>
							<tr>
								<td><a href="#">110022</a></td>
								<td class="txt"><a class="fname">易方达消费行业股票</a></td>
								<td><a class="a_fl">0.15%</a></td>
								<td><a class="buy" href="#">购买</a></td>
							</tr>
							<tr>
								<td><a href="#">001938</a></td>
								<td class="txt"><a class="fname">中欧时代先锋股票A</a></td>
								<td><a class="a_fl">0.15%</a></td>
								<td><a class="buy" href="#">购买</a></td>
							</tr>
							<tr>
								<td><a href="#">110003</a></td>
								<td class="txt"><a class="fname">易方达上证50指数A</a></td>
								<td><a class="a_fl">0.15%</a></td>
								<td><a class="buy" href="#">购买</a></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<hr>
			<div class="" style="margin-top: 50px">
				<div class="row mb-2">
					<div class="col-md-6 text-left">
						<a class=" font-weight-light mx-auto"><font size="6">混合型</font></a>
					</div>
					<div class="col-md-6 text-right mx-auto">
						<a class=" font-weight-light mx-auto" href="#"><font size="3">更多>></font></a>
					</div>
				</div>
				<div class="tableWrap">
					<table class="table table-hover">
						<thead>
							<tr>
								<th>代码</th>
								<th>基金名称</th>
								<th>手续费</th>
								<th>购买</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><a href="#">002190</a></td>
								<td class="txt"><a class="fname">农银新能源主题</a></td>
								<td><a class="a_fl">0.15%</a></td>
								<td><a class="buy" href="#">购买</a></td>
							</tr>
							<tr>
								<td><a href="#">161903</a></td>
								<td class="txt"><a class="fname">万家行业优选混合(LOF)</a></td>
								<td><a class="a_fl">0.15%</a></td>
								<td><a class="buy" href="#">购买</a></td>
							</tr>
							<tr>
								<td><a href=#>163406</a></td>
								<td class="txt"><a class="fname">兴全合润分级混合</a></td>
								<td><a class="a_fl">0.12%</a></td>
								<td><a class="buy" href="#">购买</a></td>
							</tr>
							<tr>
								<td><a href="#">005827</a></td>
								<td class="txt"><a class="fname">易方达蓝筹精选混合</a></td>
								<td><a class="a_fl">0.15%</a></td>
								<td><a class="buy" href="#">购买</a></td>
							</tr>
							<tr>
								<td><a href="#">260108</a></td>
								<td class="txt"><a class="fname">景顺长城新兴成长混合</a></td>
								<td><a class="a_fl">0.15%</a></td>
								<td><a class="buy" href="#">购买</a></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<hr>
			<div class="" style="margin-top: 50px">
				<div class="row mb-2">
					<div class="col-md-6 text-left">
						<a class=" font-weight-light mx-auto"><font size="6">债券型</font></a>
					</div>
					<div class="col-md-6 text-right mx-auto">
						<a class=" font-weight-light mx-auto" href="#"><font size="3">更多>></font></a>
					</div>
				</div>
				<div class="tableWrap last">
					<table class="table table-hover">
						<thead>
							<tr>
								<th>代码</th>
								<th>基金名称</th>
								<th>手续费</th>
								<th>购买</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><a href="#">050011</a></td>
								<td class="txt"><a class="fname">博时信用债券A/B</a></td>
								<td><a class="a_fl">0.08%</a></td>
								<td><a class="buy" href="#">购买</a></td>
							</tr>
							<tr>
								<td><a href="#">110017</a></td>
								<td class="txt"><a class="fname">易方达增强回报债券A</a></td>
								<td><a class="a_fl">0.08%</a></td>
								<td><a class="buy" href="#">购买</a></td>
							</tr>
							<tr>
								<td><a href="#">202101</a></td>
								<td class="txt"><a class="fname">南方宝元债券A</a></td>
								<td><a class="a_fl">0.08%</a></td>
								<td><a class="buy" href="#">购买</a></td>
							</tr>
							<tr>
								<td><a href="#">006585</a></td>
								<td class="txt"><a class="fname">南方宝元债券C</a></td>
								<td><a class="a_fl">0.00%</a></td>
								<td><a class="buy" href="#">购买</a></td>
							</tr>
							<tr>
								<td><a href="#">110027</a></td>
								<td class="txt"><a class="fname">易方达安心回报债券A</a></td>
								<td><a class="a_fl">0.08%</a></td>
								<td><a class="buy" href="#">购买</a></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<hr>
			<div class="" style="margin-top: 50px">
				<div class="row mb-2">
					<div class="col-md-6 text-left">
						<a class=" font-weight-light mx-auto"><font size="6">货币型</font></a>
					</div>
					<div class="col-md-6 text-right mx-auto">
						<a class=" font-weight-light mx-auto" href="#"><font size="3">更多>></font></a>
					</div>
				</div>
				<div class="tableWrap">
					<table class="table table-hover">
						<thead>
							<tr>
								<th>代码</th>
								<th>基金名称</th>
								<th>手续费</th>
								<th>购买</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><a href="#">000678</a></td>
								<td class="txt"><a class="fname">华宝现金宝货币E</a></td>
								<td><a class="a_fl">0.00%</a></td>
								<td><a class="buy" href="#">购买</a></td>
							</tr>
							<tr>
								<td><a href="#">000891</a></td>
								<td class="txt"><a class="fname">博时现金宝货币B</a></td>
								<td><a class="a_fl">0.00%</a></td>
								<td><a class="buy" href="#">购买</a></td>
							</tr>
							<tr>
								<td><a href="#">003871</a></td>
								<td class="txt"><a class="fname">华泰柏瑞天添宝货币B</a></td>
								<td><a class="a_fl">0.00%</a></td>
								<td><a class="buy" href="#">购买</a></td>
							</tr>
							<tr>
								<td><a href="#">002183</a></td>
								<td class="txt"><a class="fname">广发天天红货币B</a></td>
								<td><a class="a_fl">0.00%</a></td>
								<td><a class="buy" href="#">购买</a></td>
							</tr>
							<tr>
								<td><a href="#">003474</a></td>
								<td class="txt"><a class="fname">南方天天利货币B</a></td>
								<td><a class="a_fl">0.00%</a></td>
								<td><a class="buy" href="#">购买</a></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<hr>
			<div class="" style="margin-top: 50px">
				<div class="row mb-2">
					<div class="col-md-6 text-left">
						<a class=" font-weight-light mx-auto"><font size="6">QDII</font></a>
					</div>
					<div class="col-md-6 text-right mx-auto">
						<a class=" font-weight-light mx-auto" href="#"><font size="3">更多>></font></a>
					</div>
				</div>
				<div class="tableWrap">
					<table class="table table-hover">
						<thead>
							<tr>
								<th>代码</th>
								<th>基金名称</th>
								<th>手续费</th>
								<th>购买</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><a href="#">000934</a></td>
								<td class="txt"><a class="fname">国富大中华精选混合</a></td>
								<td><a class="a_fl">0.15%</a></td>
								<td><a class="buy" href="#">购买</a></td>
							</tr>
							<tr>
								<td><a href="#">008763</a></td>
								<td class="txt"><a class="fname">天弘越南市场股票(QDII)A</a></td>
								<td><a class="a_fl">0.10%</a></td>
								<td><a class="buy" href="#">购买</a></td>
							</tr>
							<tr>
								<td><a href="#">001691</a></td>
								<td class="txt"><a class="fname">南方香港成长(QDII)</a></td>
								<td><a class="a_fl">0.16%</a></td>
								<td><a class="buy" href="#">购买</a></td>
							</tr>
							<tr>
								<td><a href="#">486001</a></td>
								<td class="txt"><a class="fname">工银全球股票(QDII)</a></td>
								<td><a class="a_fl">0.16%</a></td>
								<td><a class="buy" href="#">购买</a></td>
							</tr>
							<tr>
								<td><a href="#">501021</a></td>
								<td class="txt"><a class="fname">华宝香港中小(QDII-LOF)A</a></td>
								<td><a class="a_fl">0.10%</a></td>
								<td><a class="buy" href="#">购买</a></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<hr>
			<div class="" style="margin-top: 50px">
				<div class="row mb-2">
					<div class="col-md-6 text-left">
						<a class=" font-weight-light mx-auto"><font size="6">指数型</font></a>
					</div>
					<div class="col-md-6 text-right mx-auto">
						<a class=" font-weight-light mx-auto" href="#"><font size="3">更多>></font></a>
					</div>
				</div>
				<div class="tableWrap last">
					<table class="table table-hover">
						<thead>
							<tr>
								<th>代码</th>
								<th>基金名称</th>
								<th>手续费</th>
								<th>购买</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><a href="#">161028</a></td>
								<td class="txt"><a class="fname">富国中证新能源汽车指数分级</a></td>
								<td><a class="a_fl">0.12%</a></td>
								<td><a class="buy" href="#">购买</a></td>
							</tr>
							<tr>
								<td><a href="#">161725</a></td>
								<td class="txt"><a class="fname" title="招商中证白酒指数分级">招商中证白酒指数分级</a></td>
								<td><a class="">0.10%</a></td>
								<td><a class="" href="#">购买</a></td>
							</tr>
							<tr>
								<td><a href="#">160222</a></td>
								<td class="txt"><a class="fname">国泰国证食品饮料行业指数分级</a></td>
								<td><a class="a_fl">0.00%</a></td>
								<td><a class="" href="#">购买</a></td>
							</tr>
							<tr>
								<td><a href="#">110003</a></td>
								<td class="txt"><a class="fname">易方达上证50指数A</a></td>
								<td><a class="">0.15%</a></td>
								<td><a class="" href="#">购买</a></td>
							</tr>
							<tr>
								<td><a href="#">000311</a></td>
								<td class="txt"><a class="fname">景顺长城沪深300指数增强</a></td>
								<td><a class="">0.12%</a></td>
								<td><a class="" href="#">购买</a></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		<p>
			<a href="#">查看更多类型的热销基金>></a>
		</p>
	</div>


	<!-- 页脚 -->
	<%@ include file="foot.jsp"%>
</body>

</html>