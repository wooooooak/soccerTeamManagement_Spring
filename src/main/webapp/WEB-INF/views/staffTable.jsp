<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>

<!------------------- 모달 창 부분 ---------------->
<!-- 					<div class="modal fade" role="dialog"
						aria-labelledby="example-modal--label" aria-hidden="true"
						id="example-modal" tabindex="-1">
						<div class="vertical-alignment-helper">
							<div class="modal-dialog vertical-align-center modal-sm">
								<div class="modal-content">
									<header class="modal-header">
										<button type="button" class="close" data-dismiss="modal">
											<span aria-hidden="true">×</span> <span class="sr-only">Close
												Modal</span>
										</button>
										<h4 class="modal-title" id="mySmallModalLabel">hello</h4>
									</header>
									<div class="modal-body">
									
									</div>
								</div>
							</div>
						</div>
					</div> -->
					<!-- .modal -->


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
				<td class='staffDay'><fmt:formatDate var="endtime"
						value="${StaffVO.contract_end_time}" pattern="yyyy-MM-dd" />${endtime}</td>
			</tr>

		</c:forEach>
		<!-- model에 객체를 여러개 넣어서 해도 정상 작동함 -->
	</tbody>
</table>
	<script src="resources/js/listView.js">	</script>