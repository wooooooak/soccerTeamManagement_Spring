<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css"
	href='resources/css/bootstrap.min.css' />
<link rel="stylesheet" type="text/css"
	href=<c:url value='/resources/css/kfonts2.css'/>>
<link href=<c:url value='/resources/css/nomalize.css'/> rel="stylesheet">

<link href=<c:url value='/resources/nav.css'/> rel="stylesheet">
<link href=<c:url value='/resources/marketTable.css'/> rel="stylesheet">
<link href='http://fonts.googleapis.com/css?family=Roboto:400,300'
	rel='stylesheet' type='text/css'>



<html>
<head>
<title>자료구조 제목</title>

<style>


/* Blank lines for ease and view */
/* */
</style>
</head>
<body>
<div class="container-fluid">

	<%@include file="import/navbar.jsp"%>
	
	<%@include file="import/modal.jsp"%>
	
	
	
	<!-- ------------------------------------ -->
<table class="container" >
  <thead>
    <tr>
	      <th class="">no</th>
	      <th class="order2">NAME</th>
	      <input type="hidden" name="name" value="name" />
	      <th class="order2">CLUB</th>
	      <input type="hidden" name="curclub" value="curclub" />
	      <th class="order2">POSITION</th>
	      <input type="hidden" name="position" value="position" />
	      <th class="order2">SIDE_FOOTER</th>
	      <input type="hidden" name="side_footer" value="side_footer" />
	      <th class="order2">COUNTRY</th>
	      <input type="hidden" name="country" value="country" />
	      <th class="order2">LANGUAGE</th>
	      <input type="hidden" name="language" value="language" />
	      <th class="order2">BIRTH</th>
	      <input type="hidden" name="birth" value="birth" />
	      <th class="order2">GRADE</th>
	      <input type="hidden" name="grade" value="grade" />
    </tr>
  </thead>
  <tbody id="marketTable">
    <c:forEach items="${marketList }" var="marketVO" varStatus='status'>
	    <tr class="whodisabled">
	    	<td>${status.count}</td>
	    	<td><a href="#" class="fpregist" data-toggle="modal"
					data-target="#example-modal" id="example-modal--label">${marketVO.name }</a>
			<input type="hidden" name="idno" value="${marketVO.idno}" /></td>
	    	<td class="curclub">${marketVO.curclub}</td>
	    	<td>${marketVO.position}</td>
	    	<td>${marketVO.side_footer}</td>
	    	<td>${marketVO.country}</td>
	    	<td>${marketVO.language}</td>
	    	<td>${marketVO.birth}</td>
	    	<td>${marketVO.grade}</td>
	    </tr>
    </c:forEach>
    
  </tbody>
</table>
	<!-- ------------------------------------ -->
	


	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/market.js">
	</script>
</body>
</html>