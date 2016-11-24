<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt"%>
<link href=<c:url value='/resources/financeBox.css'/> rel="stylesheet">
	
<div class="nav">
     <div class="box home">
		<h1>재정</h1>
		<span></span>
		<p>${finance[0].value} 만원</p>
     </div>
     
     <div class="box about">
		<h1>할당된 이적료</h1>
		<span></span>
		<p>${finance[2].value} 만원</p>
      </div>
      
      <div class="box portfolio">
		<h1>할당된 주급</h1>
		<span></span>
		<p>${finance[1].value} 만원</p>
      </div>
      
     <div class="box services">
		<h1>사용중인 이적료</h1>
		<span></span>
		<p>${finance[5].value}만원</p>
     </div>
     
     <div class="box contact">
		<h1>사용중인 주급</h1>
		<span></span>
		<p> ${finance[3].value+finance[4].value} 만원</p>
		<p>선수 주급 : ${finance[3].value} 만원</p>
		<p>스텝 주급 : ${finance[4].value} 만원</p>
     </div>
</div>

<script src="resources/js/finance.js">
	</script>