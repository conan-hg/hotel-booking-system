<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
		                <p><a href="<c:url value="/booking/index" />">予約一覧に戻る</a></p>

		                <form method="POST" action="<c:url value='/booking/update' />">
		                    <c:import url="_form.jsp" />
		                </form>

		                <p><a href="#" onclick="confirmDestroy()">この予約を削除する</a></p>
		                <form method="POST" action="<c:url value='/booking/destroy' />">
		                	<input type="hidden" name="_token" value="${_token}" />
		                </form>
		                <script>
		                	function confirmDestroy() {
		                		if(confirm("本当に削除してもよろしいですか？")) {
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
    </body>
</html>