<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ja">
    <head>
        <meta charset="UTF-8">
        <title>予約変更ページ</title>
        <link rel="stylesheet" href="<c:url value='/css/reset.css' />">
        <link rel="stylesheet" href="<c:url value='/css/style.css' />">
    </head>
    <body>
    	<div id="wrapper">
    		<div id="header">
    			<c:if test="${sessionScope.login_guest != null}">
					<div class="header_menu_4"><c:out value="${sessionScope.login_guest.name}" />　様</div>
					<div class="header_menu_5"><p><a href="<c:url value="/booking/index" />">reserve一覧</a></p></div>
					<div class="header_menu_6"><a href="<c:url value='/logout' />">logout</a></div>
				</c:if>
			</div>
			<div id="content">
				<div class="booking_form">
					<c:choose>
						<c:when test="${booking != null}">
							<c:if test="${boss == 1}">
								<p>予約者：<c:out value="${booking.guest.name}" />様</p>
							</c:if>

							<form method="POST" action="<c:url value='/booking/update' />">
								<c:import url="booking_form.jsp" />
							</form>
							<br />

							<p><a href="#" onclick="confirmDestroy()">この予約を削除する→</a></p>

							<form method="POST" action="<c:url value='/booking/destroy' />">
								<input type="hidden" name="_token" value="${_token}" />
							</form>
							<script>
								function confirmDestroy() {
									if (confirm("本当に削除してもよろしいですか？")) {
										document.forms[1].submit();
									}
								}
							</script>
						</c:when>
						<c:otherwise>
							<h2>お探しのデータは見つかりませんでした。</h2>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
    	</div>
    </body>
</html>
















