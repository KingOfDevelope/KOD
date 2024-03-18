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
							<h1 class="m-0">회원 관리</h1>
						</div>
						<!-- /.col -->
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a href="adminMain.jsp">Home</a></li>
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

						<!-- 회원 목록 테이블 -->
						<div class="col-sm-12">
							<div class="card">
								<div class="card-header" style="display: flex; justify-content: flex-start;">
									<h3 class="card-title" style="margin-top: 0.6%;">등급별 회원 목록</h3>
									<select class="form-control select2" id="grade-type" style="width: 15%; margin-left: 2%;">
					                    <option selected>Bronze</option>
					                    <option>Silver</option>
					                    <option>Gold</option>
					                    <option>VIP</option>
					                </select>
								</div>
								<!-- /.card-header -->
								<div class="card-body" id="bronze">
									<table id="example1" class="table table-bordered table-hover">
										<thead>
											<tr>
												<th>번호</th>
												<th>회원ID</th>
												<th>이름</th>
												<th>전화번호</th>
												<th>이메일</th>
												<th>상태</th>
												<th>생년월일</th>
												<th>등급</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>1</td>
												<td>user1</td>
												<td>홍길동</td>
												<td>010-1234-1234</td>
												<td>test@naver.com</td>
												<td>USER</td>
												<td>980824</td>
												<td>bronze</td>
											</tr>
										</tbody>
									</table>
								</div>
								<!-- /bronze -->
								
								<div class="card-body" id="silver" style="display: none;">
									<table id="example2" class="table table-bordered table-hover">
										<thead>
											<tr>
												<th>번호</th>
												<th>회원ID</th>
												<th>이름</th>
												<th>전화번호</th>
												<th>이메일</th>
												<th>상태</th>
												<th>생년월일</th>
												<th>등급</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>1</td>
												<td>user2</td>
												<td>홍길동</td>
												<td>010-1234-1234</td>
												<td>test@naver.com</td>
												<td>USER</td>
												<td>980824</td>
												<td>silver</td>
											</tr>
										</tbody>
									</table>
								</div>
								
								<!-- /silver -->
								
								<div class="card-body" id="gold" style="display: none;">
									<table id="example3" class="table table-bordered table-hover">
										<thead>
											<tr>
												<th>번호</th>
												<th>회원ID</th>
												<th>이름</th>
												<th>전화번호</th>
												<th>이메일</th>
												<th>상태</th>
												<th>생년월일</th>
												<th>등급</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>1</td>
												<td>user3</td>
												<td>홍길동</td>
												<td>010-1234-1234</td>
												<td>test@naver.com</td>
												<td>USER</td>
												<td>980824</td>
												<td>Gold</td>
											</tr>
										</tbody>
									</table>
								</div>
								
								<!-- /gold -->
								
								<div class="card-body" id="vip" style="display: none;">
									<table id="example4" class="table table-bordered table-hover">
										<thead>
											<tr>
												<th>번호</th>
												<th>회원ID</th>
												<th>이름</th>
												<th>전화번호</th>
												<th>이메일</th>
												<th>상태</th>
												<th>생년월일</th>
												<th>등급</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>1</td>
												<td>user10</td>
												<td>홍길동</td>
												<td>010-1234-1234</td>
												<td>test@naver.com</td>
												<td>USER</td>
												<td>980824</td>
												<td>VIP</td>
											</tr>
										</tbody>
									</table>
								</div>
								
								<!-- /vip -->
								
							</div>
							<!-- /.card -->
						<!-- /.card -->
					</div>
					<!-- /.col-md-6 -->

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
  $(function () {
    $('#example1').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": false,
      "ordering": true,
      "info": true,
      "autoWidth": false,
      "responsive": true,
      "columnDefs": [
    	  {"orderable": false, "targets":[1,2,3]} // target은 0부터 시작, 1,2,3(아이디, 이름, 전화번호)는 정렬에서 제외
      ],
    });
  });
</script>
	<script>
  $(function () {
    $('#example2').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": false,
      "ordering": true,
      "info": true,
      "autoWidth": false,
      "responsive": true,
      "columnDefs": [
    	  {"orderable": false, "targets":[1,2,3]} // target은 0부터 시작, 1,2,3(아이디, 이름, 전화번호)는 정렬에서 제외
      ],
    });
  });
</script>
<script>
  $(function () {
    $('#example3').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": false,
      "ordering": true,
      "info": true,
      "autoWidth": false,
      "responsive": true,
      "columnDefs": [
    	  {"orderable": false, "targets":[1,2,3]} // target은 0부터 시작, 1,2,3(아이디, 이름, 전화번호)는 정렬에서 제외
      ],
    });
  });
</script>
<script>
  $(function () {
    $('#example4').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": false,
      "ordering": true,
      "info": true,
      "autoWidth": false,
      "responsive": true,
      "columnDefs": [
    	  {"orderable": false, "targets":[1,2,3]} // target은 0부터 시작, 1,2,3(아이디, 이름, 전화번호)는 정렬에서 제외
      ],
    });
  });
</script>
<script>
document.getElementById('grade-type').addEventListener('change', function() {
	  var bronzeSection = document.getElementById('bronze');
	  var silverSection = document.getElementById('silver');
	  var goldSection = document.getElementById('gold');
	  var vipSection = document.getElementById('vip');
	  if (this.value === 'Bronze') {
		  bronzeSection.style.display = 'block';
		  silverSection.style.display = 'none';
		  goldSection.style.display = 'none';
		  vipSection.style.display = 'none';
	  } else if (this.value === 'Silver'){
		  bronzeSection.style.display = 'none';
		  silverSection.style.display = 'block';
		  goldSection.style.display = 'none';
		  vipSection.style.display = 'none';
	  } else if (this.value === 'Gold'){
		  bronzeSection.style.display = 'none';
		  silverSection.style.display = 'none';
		  goldSection.style.display = 'block';
		  vipSection.style.display = 'none';
	  } else if (this.value === 'VIP'){
		  bronzeSection.style.display = 'none';
		  silverSection.style.display = 'none';
		  goldSection.style.display = 'none';
		  vipSection.style.display = 'block';
	  } else {
		  bronzeSection.style.display = 'none';
		  silverSection.style.display = 'none';
		  goldSection.style.display = 'none';
		  vipSection.style.display = 'none';
	  }
	});
</script>
	<!-- jQuery -->

</body>
</html>
