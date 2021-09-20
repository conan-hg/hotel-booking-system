<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ja">
    <head>
        <meta charset="UTF-8">
        <title>予約システム</title>
        <link rel="stylesheet" href="<c:url value='/css/reset.css' />">
        <link rel="stylesheet" href="<c:url value='/css/style.css' />">
    </head>
    <body>
    	<div id="wrapper">
    		<div id="header">
    			<c:if test="${sessionScope.login_guest != null}">
					<div class="header_menu_4"><c:out value="${sessionScope.login_guest.name}" />　様</div>
					<div class="header_menu_6"><a href="<c:url value='/logout' />">logout</a></div>
				</c:if>
			</div>
	        <div id="content">
	        <div class="show_booking">
	        <div class="booking_content_title">
    			<h1>予約確認</h1>
    		</div>
	            <div class="viewer_container">
	            <table>
		            <tbody>
		            <c:if test="${boss == 1}">
		            	<tr class="viewer_content_0">
		                    <th>予約者</th>
		                    <td><c:out value="${guest.name}" /></td>
		                </tr>
    				</c:if>
		                <tr class="viewer_content_1">
		                    <th>お部屋のタイプ</th>
		                    <td>
		                    	<c:if test="${room_type == 1}">Aタイプ</c:if>
		                    	<c:if test="${room_type == 2}">Bタイプ</c:if>
		                    	<c:if test="${room_type == 3}">Cタイプ</c:if>
		                    </td>
		                </tr>
		                <tr class="viewer_content_2">
		                    <th>チェックイン</th>
		                    <td><fmt:formatDate value="${check_in_date}" pattern="yyyy-MM-dd" /></td>
		                </tr>
		                <tr class="viewer_content_3">
		                    <th>チェックアウト</th>
		                    <td><fmt:formatDate value="${check_out_date}" pattern="yyyy-MM-dd" /></td>
		                </tr>
		                <tr class="viewer_content_4">
		                    <th>大人</th>
		                    <td><c:out value="${adult_people}" /></td>
		                </tr>
		                <tr class="viewer_content_5">
		                    <th>小人</th>
		                    <td><c:out value="${child_people}" /></td>
		                </tr>
		            </tbody>
		        </table>
		        </div>

		        <div class="booking_price">
					<c:out value="${booking_price}"></c:out>
		        </div>
	        </div>
		    </div>
		</div>
    </body>
</html>