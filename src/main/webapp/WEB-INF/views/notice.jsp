<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<title></title>

<!-- Google font -->
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700"
	rel="stylesheet">

<!-- Bootstrap -->
<link type="text/css" rel="stylesheet" href="./css/bootstrap.min.css" />

<!-- Slick -->
<link type="text/css" rel="stylesheet" href="./css/slick.css" />
<link type="text/css" rel="stylesheet" href="./css/slick-theme.css" />

<!-- nouislider -->
<link type="text/css" rel="stylesheet" href="./css/nouislider.min.css" />

<!-- Font Awesome Icon -->
<link rel="stylesheet" href="./css/font-awesome.min.css">

<!-- Custom stlylesheet -->
<link type="text/css" rel="stylesheet" href="./css/style.css" />

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->

<!-- jQuery Plugins -->
<script src="./js/jquery.min.js"></script>
<script src="./js/bootstrap.min.js"></script>
<script src="./js/slick.min.js"></script>
<script src="./js/nouislider.min.js"></script>
<script src="./js/jquery.zoom.min.js"></script>
<script src="./js/main.js"></script>


<!-- include summernote css/js -->
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>

<style>
	th, td{
		text-align: center;
	}
	td:nth-child(2){
		text-align: left;
	}
</style>
<script type="text/javascript">
	function linkPage(pageNo) {
		location.href = "./notice.do?pageNo=" + pageNo;
	}
	$(document).ready(function() {
		  $('#summernote').summernote({
			  height: 400
		  });
	});
</script>
</head>
<body>
	<!-- HEADER -->
	<header>
		<c:import url="./header.jsp"></c:import>
	</header>
	<!-- /HEADER -->

	<!-- NAVIGATION -->
	<nav id="navigation">
		<div class="container">
			<!-- responsive-nav -->
			<div id="responsive-nav">
				<!-- NAV -->
				<ul class="main-nav nav navbar-nav" id="nav">
					<li><a href="./notice.do">공지사항</a></li>
					<li><a href="./board.do">자유게시판</a></li>
					<li><a href="#">질문게시판</a></li>
					<li><a href="#">자주묻는질문</a></li>
					<li><a href="#">실시간문의</a></li>
				</ul>
				<!-- /NAV -->
			</div>
			<!-- /responsive-nav -->
		</div>
	</nav>
	<!-- /NAVIGATION -->
	<!-- SECTION -->
	<div class="section">
		<!-- container -->
		<div class="container">
			<table class="table table-bordered">
				<thead>
					<tr>
						<th scope="col">번호</th>
						<th scope="col">제목</th>
						<th scope="col">글쓴이</th>
						<th scope="col">조회수</th>
						<th scope="col">좋아요</th>
						<th scope="col">작성일</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="n" items="${noticeList}">
						<tr onclick="location.href='./noticeDetail.do?n_no=${n.n_no}&pageNo=${pageNo }'">
							<td>${n.n_no }</td>
							<td>${n.n_title }</td>
							<td>${n.u_nickname }</td>
							<td>${n.n_count }</td>
							<td>${n.n_like }</td>
							<td>${n.n_date }</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<div style="text-align: center;">
				<ui:pagination paginationInfo="${paginationInfo}" type="text" jsFunction="linkPage" />
			</div>
			<c:if test="${sessionScope.nickname ne null }">
				<div style="float:right;">
					<button type="button" onclick="showWriteDialog()">글쓰기</button>
				</div>
			</c:if>
		</div>
		<!-- /container -->
	</div>
	<!-- /SECTION -->

	<!-- FOOTER -->
	<footer id="footer">
		<c:import url="./footer.jsp"></c:import>
	</footer>
	<!-- /FOOTER -->

<dialog id="noticeWriteDialog">
	<div>
		<form action="./noticeWrite.do" method="post">
			<div style="padding-bottom: 10px;">
				<h2><label>제목</label></h2>
				<input style="width: 100%;" type="text" name="n_title" required>
			</div>
			<div style="padding-bottom: 10px;">
				<h4><label>내용</label></h4>
				<textarea id="summernote" name="n_content"></textarea>
			</div>
			<input type="hidden" name="pageNo" value="${pageNo }">
			<input type="hidden" name="u_nickname" value="${sessionScope.nickname }">
			<div>
				<button type="submit">글쓰기</button>
				<button type="button" onclick="hideWriteDialog()">닫기</button>
			</div>
		</form>
	</div>
</dialog>
<script>
var noticeWriteDialog = document.getElementById('noticeWriteDialog');

function showWriteDialog(){
	noticeWriteDialog.showModal();
}
function hideWriteDialog(){
	noticeWriteDialog.close();
}
</script>
</body>
</html>
