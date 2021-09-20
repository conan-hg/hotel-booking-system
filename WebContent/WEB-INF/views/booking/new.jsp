<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ja">
    <head>
        <meta charset="UTF-8">
        <title>新規予約ページ</title>
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
	    		<div class="new_booking_form">
	    			<div class="booking_content">
	    				<form method="POST" action="<c:url value='/booking/confirm' />">
            				<c:import url="booking_form.jsp" />
        				</form>
	    			</div>
	    		</div>
    		</div>
    	</div>
    </body>
</html>