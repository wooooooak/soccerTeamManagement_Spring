<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css"
	href='resources/css/bootstrap.min.css' />
<link href=<c:url value='/resources/home.css'/> rel="stylesheet">
<link href=<c:url value='/resources/nav.css'/> rel="stylesheet">
<link href='http://fonts.googleapis.com/css?family=Roboto:400,300'
	rel='stylesheet' type='text/css'>



<html>
<head>
<title>F.C.D</title>

<style>


hgroup{
  display: inline-block;
  text-align: center;
  position: relative;
  top: 45%;
  left: 50%;
  transform: translateX(-50%) translateY(-50%);
  color: #fff;
  border: 5px solid #fff;
  padding: .5em 3em;
  background-color: rgba(0,0,0,.2);
  z-index: 2;
}


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


/* Blank lines for ease and view */
/* */
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
	
	<%@include file="Form/wishList.jsp"%>
	
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
		<div class="row container" id="section-4">
			<div class="col-md-4">
			<h1>First Section Col3</h1>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
					Vestibulum interdum tortor ac dui malesuada, id molestie elit
					aliquam. Fusce laoreet nisl id tellus molestie mattis. Fusce vitae
					ante quis augue imperdiet rutrum a vitae purus. Etiam tincidunt
					enim id turpis varius, in condimentum elit.</p>
			</div>
			<div class="col-md-4">
			<h1>First Section Col3</h1>
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi
				ac nibh dolor. Cras rutrum molestie ligula posuere hendrerit. Donec
				luctus vitae elit in gravida. Duis in viverra nunc. Nunc et metus
				blandit, blandit quam in, laoreet mi. In vitae mauris sit amet
				tellus dictum rhoncus malesuada non arcu. Ut lacus lacus, dignissim
				at commodo id, dapibus sed felis. Cras in nunc id est lobortis
				euismod. Sed egestas nulla et augue sagittis lacinia. Quisque
				finibus bibendum risus, vitae accumsan ante mollis ac. Aliquam
				fermentum, mauris eu gravida dictum, tortor risus finibus nibh, in
				tincidunt velit tortor vehicula mi.</p>
		</div>
		</div>

		<div class="footer-copyright">
			<div class="text-center"><span>문성우 문태경 이용준 정창현 이영선</span>
				</div>
		</div>
	</footer>
</div>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/home.js">
	</script>
</body>
</html>