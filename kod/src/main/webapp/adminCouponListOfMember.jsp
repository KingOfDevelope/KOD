<%@page import="model.dto.WishListDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!-- 원화표시 functions함수집합 가져오기 -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- 원화표시 포맷 -->
<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>KOD 관리자 페이지</title>

<!-- Google Font: Source Sans Pro -->
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<!-- Font Awesome Icons -->
<link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="dist/css/adminlte.min.css">
<!-- DataTables -->
<link rel="stylesheet" href="plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
<link rel="stylesheet" href="plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
<link rel="stylesheet" href="plugins/datatables-buttons/css/buttons.bootstrap4.min.css">
</head>
<body class="hold-transition sidebar-mini">
	<div class="wrapper">

		<!-- Navbar -->
		<jsp:include page="admin-sidebar.jsp"></jsp:include>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<div class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1 class="m-0">쿠폰 관리</h1>
						</div>
						<!-- /.col -->
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a href="#">Home</a></li>
								<li class="breadcrumb-item active">대시보드</li>
							</ol>
						</div>
						<!-- /.col -->
					</div>
					<!-- /.row -->
				</div>
				<!-- /.container-fluid -->
			</div>
			<!-- /.content-header -->

			<!-- Main content -->
			<div class="content">
				<div class="container-fluid">
					<div class="row">
						<!-- 상품 목록 검색 조건 -->
						<div class="col-sm-12">
							<div class="card">
								<div class="card-header" style="display: flex; justify-content: space-between;">
									<h3 class="card-title" style="margin-top: 0.6%;">검색 조건</h3>
									<button type="button" class="btn btn-primary" style="margin-left: auto;;">검색하기</button>
								</div>
								<div class="card-body">
									<table id="example3" class="table table-bordered table-hover">
										<thead>
											<tr>
												<th style="width: 15%;">사용자ID</th>
												<td style="width: 35%;"><input class="form-control form-control-sm" type="text"></td>
												<th style="width: 15%;">사용 여부</th>
												<td style="width: 35%;"><select class="form-control form-control-sm select2">
								                    	<option selected="selected">미사용</option>
								                    	<option>사용</option>
								                    	<option>만료</option>
							                  		</select>
						                  		</td>
											</tr>
										</thead>
									</table>
								</div>
							</div>
						</div>
						<!-- /상품 목록 검색 조건 -->
						
						<!-- 상품 목록 테이블 -->
						<div class="col-sm-12">
							<div class="card">
								<div class="card-header" style="display: flex; justify-content: space-between;">
									<h3 class="card-title" style="margin-top: 0.6%;">쿠폰 목록</h3>
								</div>
								<!-- /.card-header -->
								<div class="card-body">
									<!-- <button type="button" class="btn btn-primary" onclick="location.href='adminProductRegister.jsp'" style="margin-left: auto;">신규 상품 등록</button>
									<button type="button" class="btn btn-danger" style="margin-left: auto;">삭제</button> -->
									<table id="example2" class="table table-bordered table-hover">
					                  <thead>
					                  <tr>
					                    <th>번호</th>
					                    <th>쿠폰명</th>
					                    <th>쿠폰 코드</th>
					                    <th>쿠폰 설명</th>
					                    <th>할인율</th>
					                    <th>쿠폰 기간</th>
					                    <th>쿠폰 타입</th>
					                    <th>사용자</th>
					                  </tr>
					                  </thead>
					                  <tbody>
					                  <c:forEach items="${couponDatas}" var="coupon" varStatus="i" begin="0" step="1">
					                  <tr>
					                  	<td>${i.count}</td>
					                  	<td>${coupon.couponName}</td>
					                  	<td>${coupon.couponCode}</td>
					                  	<td>${coupon.couponContent}</td>
					                  	<td>${coupon.couponDiscountRate}</td>
					                  	<td>${coupon.couponUseDate}</td>
					                  	<td>${coupon.couponType}</td>
					                  	<td>${coupon.memberID}</td>
					                  </tr>
					                  </c:forEach>
					                </table>
								</div>
								<!-- /.card-body -->
							</div>
							<!-- /.card -->
						</div>	
						<!-- /상품 목록 테이블 -->
						
					
					<!-- /.col-md-6 -->

				</div>
				<!-- /.row -->
			</div>
			<!-- /.container-fluid -->
		</div>
		<!-- /.content -->
	</div>
	<!-- /.content-wrapper -->

	<!-- Control Sidebar -->
	<aside class="control-sidebar control-sidebar-dark">
		<!-- Control sidebar content goes here -->
		<div class="p-3">
			<h5>Title</h5>
			<p>Sidebar content</p>
		</div>
	</aside>
	<!-- /.control-sidebar -->

	<!-- Main Footer -->
	<footer class="main-footer">
		<!-- To the right -->
		<div class="float-right d-none d-sm-inline">Anything you want</div>
		<!-- Default to the left -->
		<strong>Copyright &copy; 2023-2024 <a href="https://adminlte.io">KOD</a>.
		</strong> All rights reserved.
	</footer>
	</div>
	<!-- ./wrapper -->

	<!-- REQUIRED SCRIPTS -->
	<script src="plugins/jquery/jquery.min.js"></script>
	<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="dist/js/adminlte.min.js"></script>
	<!-- DataTables  & Plugins -->
	<script src="plugins/datatables/jquery.dataTables.min.js"></script>
	<script src="plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
	<script src="plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
	<script src="plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
	<script src="plugins/datatables-buttons/js/dataTables.buttons.min.js"></script>
	<script src="plugins/datatables-buttons/js/buttons.bootstrap4.min.js"></script>
	<script src="plugins/jszip/jszip.min.js"></script>
	<script src="plugins/pdfmake/pdfmake.min.js"></script>
	<script src="plugins/pdfmake/vfs_fonts.js"></script>
	<script src="plugins/datatables-buttons/js/buttons.html5.min.js"></script>
	<script src="plugins/datatables-buttons/js/buttons.print.min.js"></script>
	<script src="plugins/datatables-buttons/js/buttons.colVis.min.js"></script>
	<!-- Page specific script -->
	<script>
		$(function() {
			$('#example2').DataTable({
				"paging" : true,
				"lengthChange" : false,
				"searching" : false,
				"ordering" : true,
				"info" : true,
				"autoWidth" : false,
				"responsive" : true,
				"columnDefs" : [ {
					"orderable" : false,
					"targets" : [ 0,3,4,6,7,8 ]
				} 
				],
			});
		});
	</script>
	<!-- jQuery -->

</body>
</html>
