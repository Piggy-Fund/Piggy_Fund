<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 右侧仓库 -->

<div class="col-md-4 order-md-2 mb-4">
	<h4 class="d-flex justify-content-between align-items-center mb-3">
		<span class="text-muted"><a href="Warehouselist" class="text-muted">我的仓库</a></span> <span
			class="badge badge-secondary badge-pill">${count}</span>
	</h4>
	<ul class="list-group mb-3">
		<li class="list-group-item d-flex justify-content-between lh-condensed">
			<div>
				<h6 class="my-0 text-muted">基金名称</h6>
			</div> 
			<span class="my-0 text-muted">数量</span>
		</li>
		<c:forEach items="${warehouselist}" var="item">
			<li class="list-group-item d-flex justify-content-between lh-condensed">
				<div>
					<h6 class="my-0"><a href="Fundinfo?id=${item.fundid}" class="text-muted">${item.fundname}</a></h6>
				</div> 
				<span class="text-muted">${item.fundnum}</span>
			</li>
			
		</c:forEach>
	</ul>

</div>