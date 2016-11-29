<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css"
	href='resources/css/bootstrap.min.css' />


<%@include file="import/font.jsp"%>

<link href=<c:url value='/resources/home.css'/> rel="stylesheet">
<link href=<c:url value='/resources/nav.css'/> rel="stylesheet">
<link href=<c:url value='/resources/scrollbar.css'/> rel="stylesheet">

<html>
<head>
<title>F.C.D</title>

<style>

 /* form의 자리 잡아줌 */
 .container2 {
  padding-top: 30px;
  padding-left: 200px;
  margin-left: 50px;
  margin-right: 50px;
  
  border: 1px solid lightgray;
  border-radius: 5px;
  box-shadow: 0px 1px 4px 0px rgba(0,0,0,0.2);
  margin-top: 20px;
  margin-bottom: 20px;
  vertical-align: middle;
}
</style>
</head>
<body>
<div class="container-fluid">

<%@include file="import/navbar.jsp"%>


	<!-- ------------------------------------ -->
	<div class="parallax p1" id="section-1">
		<hgroup>
			<h1>위시리스트 등록</h1>
		</hgroup>
	</div>
	
	<%@include file="Form/wishList.jsp"%> <!-- 위시리스트 등록 form -->
	
	<!-- ------------------------------------ -->
	<div class="parallax p2" id="section-2">

		<hgroup>
			<h1>선수 등록</h1>
		</hgroup>
	</div>

	<%@include file="Form/fplayerForm.jsp"%> <!-- 선수 영입 form -->

	<!-- -------------------------------------------------------- -->
	<div class="parallax p3" id="section-3">
		<hgroup>
			<h1>스텝 등록</h1>
		</hgroup>
	</div>

	<%@include file="Form/staffReg.jsp"%> <!-- 선수 방출 form -->
	<!-- ------------------------------------ -->

	<div class="parallax p4" id="section-4">
		<hgroup>
			<h1>Well</h1>
			<h2>This is some bold info!</h2>
		</hgroup>
	</div>

	<footer>
		<%@include file="Form/Item.jsp"%> <!-- 아이템 등록 form -->
		<%@include file="import/Inside-footer.jsp"%>
	</footer>
</div>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/home.js"></script>
</body>
</html>