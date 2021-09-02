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
		                <h2>日報　編集ページ</h2>

		                <form method="POST" action="<c:url value='/booking/update' />">
		                    <c:import url="_form.jsp" />
		                </form>
		            </c:when>
		            <c:otherwise>
		                <h2>お探しのデータは見つかりませんでした。</h2>
		            </c:otherwise>
		        </c:choose>
		    </div>
    	</div>
    </body>
</html>