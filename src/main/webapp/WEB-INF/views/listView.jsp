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

<link href=<c:url value='/resources/ListView.css'/> rel="stylesheet">
<link href=<c:url value='/resources/table.css'/> rel="stylesheet">
<link href=<c:url value='/resources/scrollbar.css'/> rel="stylesheet">
<link href=<c:url value='/resources/nav.css'/> rel="stylesheet">
<link href=<c:url value='/resources/financeBox.css'/> rel="stylesheet">


<html>
<head>
<title>F.C.D</title>

<style>
</style>
</head>
<body>
	<div class="container-fluid">

		<%@include file="import/navbar.jsp"%>
		<%@include file="import/modal.jsp"%>

	
	<div class="parallax p1" id="section-1">
			<hgroup>
				<h1>구단 재정</h1>
			</hgroup>
		</div>
		
		<div id='financeView'>
			<%@include file="finance.jsp"%>
		</div>
		<!-- 선수 방출 form -->
	
	
		<!-- ------------------------------------ -->
		<div class="parallax p2" id="section-2">
			<hgroup>
				<h1>선수 리스트.</h1>
				<p>선수 이름을 클릭하세요</p>
			</hgroup>
		</div>
		<section>
			<div class="table-size">
				<h1>Player</h1>
				<div class="tbl-header">
					<!-- 	<h4 class="text-primary ">기본 table 코드  </h4> -->
					<table cellpadding="0" cellspacing="0" border="0">
						<thead>
							<tr>
								<th></th>
								<th class="order">이름</th>
								<input type="hidden" name="name" value="name" />
								<th class="order">등번호</th>
								<input type="hidden" name="backno" value="backno" />
								<th class="order">출생일</th>
								<input type="hidden" name="birth" value="birth" />
								<th class="order">국적</th>
								<input type="hidden" name=country value="country" />
								<th class="order">언어</th>
								<input type="hidden" name="language" value="language" />
								<th class="order">포지션</th>
								<input type="hidden" name="position" value="position" />
								<th class="order">이적료</th>
								<input type="hidden" name="transfer_fee" value="transfer_fee" />
								<th class="order">주급</th>
								<input type="hidden" name="salary" value="salary" />
								<th class="order">주로 쓰는 발</th>
								<input type="hidden" name="side_footer" value="side_footer" />
								<th class="order">계약 만료일</th>
								<input type="hidden" name="contract_end_time" value="contract_end_time" />
							</tr>
						</thead>
					</table>
	
				

				</div>
				<div class="tbl-content" id="fptable">
					<%@include file="fptable.jsp"%>
				</div>
			</div>
			</br> </br> </br> </br> </br>
		</section>
		<!-- --------------선수 리스트 끝---------------------- -->
		
		<!-- --------------스텝 리스트 시작---------------------- -->
		<div class="parallax p3" id="section-3">

			<hgroup>
				<h1>스텝 리스트</h1>
			</hgroup>
		</div>
		

		<section>
			<div class="table-size">
				<h1>STAFF</h1>
				<div class="tbl-header">
					<!-- 	<h4 class="text-primary ">기본 table 코드  </h4> -->
					<table cellpadding="0" cellspacing="0" border="0">
						<thead>
							<tr>
								<th></th>
								<th class="order2">이름</th>
								<input type="hidden" name="name" value="name" />
								<th class="order2">포지션</th>
								<input type="hidden" name="position" value="position" />
								<th class="order2">출생일</th>
								<input type="hidden" name="birth" value="birth" />
								<th class="order2">전화번호</th>
								<input type="hidden" name="tel" value="tel" />
								<th class="order2">월급</th>
								<input type="hidden" name="salary" value="salary" />
								<th class="order2">국적</th>
								<input type="hidden" name=country value="country" />
								<th class="order2">언어</th>
								<input type="hidden" name="language" value="language" />
								<th class="order2">성별</th>
								<input type="hidden" name="gender" value="gender" />
								<th class="order2">커리어</th>
								<input type="hidden" name="career" value="career" />
								<th class="order2">계약기간</th>
								<input type="hidden" name="contract_end_time" value="contract_end_time" />
							</tr>
						</thead>
					</table>

				</div>
				<div class="tbl-content" id="stafftable">
					<%@include file="staffTable.jsp"%>
				</div>
			</div>
			</br> </br> </br> </br> </br>
		</section>

		<!-- -------------------------------------------------------- -->

		<!-- ------------------------------------ -->

		<div class="parallax p4" id="section-4">
			<hgroup>
				<h1>아이템</h1>
			</hgroup>
		</div>

	<section>
			<div class="table-size">
				<h1>ITEM</h1>
				<div class="tbl-header">
					<!-- 	<h4 class="text-primary ">기본 table 코드  </h4> -->
					<table cellpadding="0" cellspacing="0" border="0">
						<thead>
							<tr>
								<th></th>
								<th class="order3">이름</th>
								<input type="hidden" name="name" value="name" />
								<th class="order3">수량</th>
								<input type="hidden" name="count" value="count" />
								<th class="order3">가격</th>
								<input type="hidden" name="price" value="price" />
								<th class="order3">제공 업체</th>
								<input type="hidden" name=company value="company" />
							</tr>
						</thead>
					</table>
	
				

				</div>
				<div class="tbl-content">
					<table cellpadding="0" cellspacing="0" border="0">
						<tbody>
							<c:forEach items="${itemList}" var="itemVO"	
								varStatus="status">
								<tr>
									<td>${status.count}</td>
									<td>${itemVO.name }
<%-- 									<td><a href="#" class="" data-toggle="modal"
										data-target="#example-modal" id="example-modal--label">${itemVO.name }</a> --%>
										<input type="hidden" name="count" value="${itemVO.count}" />
										<input type="hidden" name="price" value="${itemVO.price}" />
										<input type="hidden" name="company" value="${itemVO.company}" />
									</td>

									<td>${itemVO.count }</td>
									<td>${itemVO.price }</td>
									<td>${itemVO.company }</td>
								</tr>

							</c:forEach>
							<!-- model에 객체를 여러개 넣어서 해도 정상 작동함 -->
						</tbody>
					</table>
				</div>
			</div>
			</br> </br> </br> </br> </br>
		</section>

		<footer>
					<%@include file="import/Inside-footer.jsp"%>
		</footer>
	</div>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/listView.js"></script>
</body>
</html>