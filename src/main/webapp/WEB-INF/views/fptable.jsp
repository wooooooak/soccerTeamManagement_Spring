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
					</div>
					.modal -->


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
          
          <script src="resources/js/listView.js">
	</script>