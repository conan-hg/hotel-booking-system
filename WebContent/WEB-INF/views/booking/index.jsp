<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html lang="ja">
    <head>
        <meta charset="UTF-8">
        <title>予約リスト</title>
    </head>
    <body>
    	<div id="wrapper">
    		<div id="header">
    			<c:if test="${flush != null}">
		            <div id="flush_success">
		                <c:out value="${flush}"></c:out>
		            </div>
		        </c:if>
		        <h2>予約　一覧</h2>
    		</div>
    		<div id="content">
    			<table id="booking_list">
		            <tbody>
		                <tr>
		                	<th class="booking_room_type">部屋のタイプ</th>
		                    <th class="booking_check_in_date">チェックイン日</th>
		                    <th class="booking_check_out_date">チェックアウト日</th>
		                    <th class="booking_adult_people">大人</th>
		                    <th class="booking_child_people">小人</th>
		                    <th class="booking_action">詳細</th>
		                </tr>
		                <c:forEach var="booking" items="${booking}" varStatus="status">
		                    <tr class="row${status.count % 2}">
		                        <td class="booking_room_type">
		                        	<c:if test="${booking.room_type == 1}">Aタイプ</c:if>
	                            	<c:if test="${booking.room_type == 2}">Bタイプ</c:if>
	                            	<c:if test="${booking.room_type == 3}">Cタイプ</c:if>
		                        </td>
		                        <td class="booking_check_in_date"><fmt:formatDate value='${booking.check_in_date}' pattern='yyyy-MM-dd' /></td>
		                        <td class="booking_check_out_date"><fmt:formatDate value='${booking.check_out_date}' pattern='yyyy-MM-dd' /></td>
		                        <td class="booking_adult_people"><c:out value="${booking.adult_people}" /></td>
		                        <td class="booking_child_people"><c:out value="${booking.child_people}" /></td>
		                        <td class="booking_action"><a href="<c:url value='/booking/show?id=${booking.id}' />">詳細を見る</a></td>
		                    </tr>
		                </c:forEach>
		            </tbody>
		        </table>
    		</div>
    	</div>
    </body>
</html>