<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>


<table cellpadding="0" cellspacing="0" border="0">
						<tbody>
							<c:forEach items="${itemList}" var="itemVO"	
								varStatus="status">
								<tr>
									<td>${status.count}</td>
 									<td><a href="#" class="itemClick" data-toggle="modal"
										data-target="#example-modal" id="example-modal--label">${itemVO.name }</a>
										<input type="hidden" name="idno" value="${itemVO.idno}" />
										<input type="hidden" name="count" value="${itemVO.count}" />
										<input type="hidden" name="price" value="${itemVO.price}" />
										<input type="hidden" name="company" value="${itemVO.company}" />
									</td>

									<td>${itemVO.count }</td>
									<td><fmt:formatNumber value="${itemVO.price}" type="currency" /></td>
									<td>${itemVO.company }</td>
								</tr>

							</c:forEach>
						</tbody>
					</table>
	<script src="resources/js/listView.js"></script>