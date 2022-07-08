<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
	$(function(){
		$.ajax({
			type : "GET",
			url : "//categoryList.do",
			dataType: "JSON",
			success : function(res){
				var temp = '';
				
				$.each(res, function(index,data){
					temp += '<li><a href="./category.do?cate_no=' + data.cate_no + '">' + data.category + '</a></li>'
				});
				$('#nav').html(temp);
            },
            error : function(XMLHttpRequest, textStatus, errorThrown){
                alert("통신 실패.")
            }
		})
	});
</script>
<!-- container -->
<div class="container">
	<!-- responsive-nav -->
	<div id="responsive-nav">
		<!-- NAV -->
		<ul class="main-nav nav navbar-nav" id="nav">
		</ul>
		<c:choose>
			<!-- 로그인 했을 경우 u_confirm이 사업자라면 '0' -->
			<c:when test="">
				<ul class="main-nav nav navbar-nav" style="text-align: right;">제품 등록</ul>
			</c:when>		
			<c:otherwise>
			</c:otherwise>
		</c:choose>
		<!-- /NAV -->
	</div>
	<!-- /responsive-nav -->
</div>
<!-- /container -->