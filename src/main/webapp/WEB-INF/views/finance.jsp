<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt"%>
<link href=<c:url value='/resources/financeBox.css'/> rel="stylesheet">
	
<div class="nav">
     <div class="box finance">
		<h1>재정</h1>
		<p><fmt:formatNumber value="${finance[0].value}" type="currency" currencySymbol=""/> 만원</p>
     </div>
     
     <div class="box tranfer_fee">
		<h1>할당된 이적료</h1>
		<span></span>
		<p><fmt:formatNumber value="${finance[2].value}" type="currency" currencySymbol=""/> 만원</p>
      </div>
      
      <div class="box salary">
		<h1>할당된 주급</h1>
		<span></span>
		<p><fmt:formatNumber value="${finance[1].value}" type="currency" currencySymbol=""/> 만원</p>
      </div>
      
     <div class="box using-fee">
		<h1>사용중인 이적료</h1>
		<span></span>
		<p>사용한 이적료 : <fmt:formatNumber value="${finance[5].value}" type="currency" currencySymbol=""/> 만원</p>
		<p>사용 가능한 이적료 : <fmt:formatNumber value="${finance[2].value-finance[5].value}" type="currency" currencySymbol=""/> 만원</p>
     </div>
     
     <div class="box using-sal">
		<h1>사용중인 주급</h1>
		<p><fmt:formatNumber value="${finance[3].value+finance[4].value}" type="currency" currencySymbol=""/> 만원</p>
		<p>선수 주급 : <fmt:formatNumber value="${finance[3].value}" type="currency" currencySymbol=""/> 만원</p>
		<p>스텝 주급 : <fmt:formatNumber value="${finance[4].value}" type="currency" currencySymbol=""/> 만원</p>
		<p>사용 가능한 주급 : <fmt:formatNumber value="${finance[1].value-finance[3].value+finance[4].value}" type="currency" currencySymbol=""/> 만원</p>
     </div>
</div>

	</script>