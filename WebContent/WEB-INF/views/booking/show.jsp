<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html lang="ja">
    <head>
        <meta charset="UTF-8">
        <title>予約システム</title>
    </head>
    <body>
    	<div id="wrapper">
    		<div id="header">
    			<c:choose>
	            <c:when test="${booking != null}">
	                <h2>日報　詳細ページ</h2>
	                <p><a href="<c:url value="/booking/index" />">予約一覧に戻る</a></p>
	                <div id="content">

	                <table>
	                    <tbody>
	                        <tr>
	                            <th>お部屋のタイプ</th>
	                            <td>
	                            	<c:if test="${booking.room_type == 1}">Aタイプ</c:if>
	                            	<c:if test="${booking.room_type == 2}">Bタイプ</c:if>
	                            	<c:if test="${booking.room_type == 3}">Cタイプ</c:if>
	                            </td>
	                        </tr>
	                        <tr>
	                            <th>チェックイン</th>
	                            <td><fmt:formatDate value="${booking.check_in_date}" pattern="yyyy-MM-dd" /></td>
	                        </tr>
	                        <tr>
	                            <th>チェックアウト</th>
	                            <td><fmt:formatDate value="${booking.check_out_date}" pattern="yyyy-MM-dd" /></td>
	                        </tr>
	                        <tr>
	                            <th>大人</th>
	                            <td><c:out value="${booking.adult_people}" /></td>
	                        </tr>
	                        <tr>
	                            <th>小人</th>
	                            <td><c:out value="${booking.child_people}" /></td>
	                        </tr>
	                    </tbody>
	                </table>

	                <c:if test="${sessionScope.login_guest.id == booking.guest.id || sessionScope.login_guest.getAdmin_flag() == 0}">
	                    <p><a href="<c:url value="/booking/edit?id=${booking.id}" />">この日報を編集する</a></p>
	                </c:if>
	                </div>
	            </c:when>
	            <c:otherwise>
	                <h2>お探しのデータは見つかりませんでした。</h2>
	            </c:otherwise>
        		</c:choose>

		    </div>

    	</div>
    </body>
</html>