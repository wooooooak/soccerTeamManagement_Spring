<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>


<table cellpadding="0" cellspacing="0" border="0">
            <tbody>
              <c:forEach items="${fplayerList}" var="fplayerVO"
                varStatus="status">
                <tr>
                  <td>${status.count}</td>
                  <td><a href="#" class="fprelease" data-toggle="modal"
                    data-target="#example-modal" id="example-modal--label">${fplayerVO.name }</a>
                    <input type="hidden" name="idno" value="${fplayerVO.idno}" />
           			<input type="hidden" name="salary" value="${fplayerVO.salary}" />
					<input type="hidden" name="goal" value="${fplayerVO.goal}" />
					<input type="hidden" name="assist" value="${fplayerVO.assist}" />
					<input type="hidden" name="position" value="${fplayerVO.position}" />
					<input type="hidden" name="grade" value="${fplayerVO.grade}" />
					<input type="hidden" name="backno" value="${fplayerVO.backno}" />
					<input type="hidden" name="contract_end_time" value="${fplayerVO.contract_end_time}" />
                  </td>

                  <td>${fplayerVO.backno }</td>
                  <td>${fplayerVO.birth }</td>
                  <td>${fplayerVO.country }</td>
                  <td>${fplayerVO.language }</td>
                  <td>${fplayerVO.position}</td>
                  <td>${fplayerVO.transfer_fee }만원</td>
                  <td>${fplayerVO.salary }만원</td>
                  <td>${fplayerVO.side_footer }</td>
                  <td class="pDay"><fmt:formatDate var="endtime"
                      value="${fplayerVO.contract_end_time}" pattern="yyyy-MM-dd" />${endtime}</td>
                </tr>

              </c:forEach>
              <!-- model에 객체를 여러개 넣어서 해도 정상 작동함 -->
            </tbody>
          </table>
          
          <script src="resources/js/listView.js">
	</script>