<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
	<header class="blog-header py-3">
			<div
				class="row flex-nowrap justify-content-between align-items-center">
				<div class="col-4 pt-1 font-italic font-weight-bold ">
					<a class="text-muted"><font size="8">小猪基金</font></a>
					<a class="text-muted"><font size="4">欢迎您！用户${username}</font></a>
				</div>
				<div class="col-4 d-flex justify-content-end align-items-center">
					<form class="form-inline my-2 my-lg-0" method="post"
						action="UserQuery">
						<a class="btn btn-secondary  mr-sm-2"  href="service.jsp">基金超市</a>
						<a class="btn btn-secondary  mr-sm-2"  href="FundList">基金查询</a>
						<a class="btn btn-secondary  mr-sm-2"  href="Warehouselist">基金仓库</a>
					</form>
				</div>
			</div>
		</header>