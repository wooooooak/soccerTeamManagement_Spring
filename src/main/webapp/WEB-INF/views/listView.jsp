<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css"
	href='resources/css/bootstrap.min.css' />

<link href=<c:url value='/resources/ListView.css'/> rel="stylesheet">
<link href=<c:url value='/resources/table.css'/> rel="stylesheet">
<link href=<c:url value='/resources/nav.css'/> rel="stylesheet">
<link href=<c:url value='/resources/financeBox.css'/> rel="stylesheet">
<link href='http://fonts.googleapis.com/css?family=Roboto:400,300'
	rel='stylesheet' type='text/css'>


<html>
<head>
<title>F.C.D</title>

<style>
.vertical-alignment-helper {
	display: table;
	height: 100%;
	width: 100%;
}

.vertical-align-center {
	/* To center vertically */
	display: table-cell;
	vertical-align: middle;
}

.modal-content {
	/* Bootstrap sets the size of the modal in the modal-dialog class, we need to inherit it */
	width: inherit;
	height: inherit;
	/* To center horizontally */
	margin: 0 auto;
}

hgroup {
	display: inline-block;
	text-align: center;
	position: relative;
	top: 50%;
	left: 50%;
	transform: translateX(-50%) translateY(-50%);
	color: #fff;
	border: 5px solid #fff;
	padding: .5em 3em;
	background-color: rgba(0, 0, 0, .2);
	z-index: 2;
}



/*   form의 자리 잡아줌 
 .container2 {
 width: 90%;
  padding-top: 30px;
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
		<%@include file="import/modal.jsp"%>


	

	
	<div class="parallax p1" id="section-1">
			<hgroup>
				<h1>구단 재정</h1>
			</hgroup>
		</div>

		<%@include file="finance.jsp"%>
		<!-- 선수 방출 form -->
	
	
		<!-- ------------------------------------ -->
		<div class="parallax p2" id="section-2">
			<hgroup>
				<h1>우리 선수 리스트.</h1>
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
					<table cellpadding="0" cellspacing="0" border="0">
						<tbody>
							<c:forEach items="${fplayerList}" var="fplayerVO"
								varStatus="status">
								<tr>
									<td>${status.count}</td>
									<td><a href="#" class="fprelease" data-toggle="modal"
										data-target="#example-modal" id="example-modal--label">${fplayerVO.name }</a>
										<input type="hidden" name="idno" value="${fplayerVO.idno}" />
									</td>

									<td>${fplayerVO.backno }</td>
									<td>${fplayerVO.birth }</td>
									<td>${fplayerVO.country }</td>
									<td>${fplayerVO.language }</td>
									<td>${fplayerVO.position}</td>
									<td>${fplayerVO.transfer_fee }만원</td>
									<td>${fplayerVO.salary }만원</td>
									<td>${fplayerVO.side_footer }</td>
									<td><fmt:formatDate var="endtime"
											value="${fplayerVO.contract_end_time}" pattern="yyyy-MM-dd" />${endtime}</td>
								</tr>

							</c:forEach>
							<!-- model에 객체를 여러개 넣어서 해도 정상 작동함 -->
						</tbody>
					</table>
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
					<table cellpadding="0" cellspacing="0" border="0">
						<tbody>
							<c:forEach items="${staffList}" var="StaffVO"
								varStatus="status">
								<tr>
									<td>${status.count}</td>
									<td><a href="#" class="staffrelease" data-toggle="modal"
										data-target="#example-modal" id="example-modal--label">${StaffVO.name}</a>
										<input type="hidden" name="idno" value="${StaffVO.pno}" />
									</td>

									<td>${StaffVO.position }</td>
									<td>${StaffVO.birth }</td>
									<td>${StaffVO.tel}</td>
									<td>${StaffVO.salary }만원</td>
									<td>${StaffVO.country }</td>
									<td>${StaffVO.language }</td>
									<td>${StaffVO.gender }</td>
									<td>${StaffVO.career }</td>
									<td><fmt:formatDate var="endtime"
											value="${StaffVO.contract_end_time}" pattern="yyyy-MM-dd" />${endtime}</td>
								</tr>

							</c:forEach>
							<!-- model에 객체를 여러개 넣어서 해도 정상 작동함 -->
						</tbody>
					</table>
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
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
						Morbi ac nibh dolor. Cras rutrum molestie ligula posuere
						hendrerit. Donec luctus vitae elit in gravida. Duis in viverra
						nunc. Nunc et metus blandit, blandit quam in, laoreet mi. In vitae
						mauris sit amet tellus dictum rhoncus malesuada non arcu. Ut lacus
						lacus, dignissim at commodo id, dapibus sed felis. Cras in nunc id
						est lobortis euismod. Sed egestas nulla et augue sagittis lacinia.
						Quisque finibus bibendum risus, vitae accumsan ante mollis ac.
						Aliquam fermentum, mauris eu gravida dictum, tortor risus finibus
						nibh, in tincidunt velit tortor vehicula mi.</p>
				</div>
			</div>

			<div class="footer-copyright">
				<div class="text-center">
					<span> 너무 어렵다ㅠㅠ</span>
				</div>
			</div>
		</footer>
	</div>




	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/listView.js"></script>
	<script src="resources/js/finance.js"></script>
</body>
</html>