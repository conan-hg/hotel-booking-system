<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="ja">
    <head>
        <meta charset="UTF-8">
        <title>新規予約ページ</title>
    </head>
    <body>
    	<div id="wrapper">
    		<div id="header">
    			<c:if test="${sessionScope.login_guest != null}">
		        	<div id="guest_name">
		        		<c:out value="${sessionScope.login_guest.name}" />&nbsp;様&nbsp;&nbsp;&nbsp;
		        		<a href="<c:url value='/logout' />">ログアウト</a>
		        	</div>
		        </c:if>
    		</div>
    		<div id="content">
    			<form method="POST" action="<c:url value='/booking/create' />">
            		<c:import url="_form.jsp" />
        		</form>
    		</div>
    	</div>

    </body>
</html>