<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>

  
  
    <c:forEach items="${marketList }" var="marketVO" varStatus='status'>
	    <tr class="whodisabled">
	    	<td>${status.count}</td>
	    	<td><a href="#" class="fpregist" data-toggle="modal"
					data-target="#example-modal" id="example-modal--label">${marketVO.name }</a></td>
	    	<td class="curclub">${marketVO.curclub}</td>
	    	<td>${marketVO.position}</td>
	    	<td>${marketVO.side_footer}</td>
	    	<td>${marketVO.country}</td>
	    	<td>${marketVO.language}</td>
	    	<td>${marketVO.birth}</td>
	    	<td>${marketVO.grade}</td>
	    </tr>
    </c:forEach>
    
    
    
 <script src="resources/js/market.js">
	</script>