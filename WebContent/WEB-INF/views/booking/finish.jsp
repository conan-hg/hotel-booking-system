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
    		<div id="header"></div>
    		<div id="content">
	    		<p>この度はご予約頂き、誠にありがとうございます。</p>
			    <p>従業員一同、お客様がご来館される日を心からお待ちしております。</p>
				<a href="<c:url value='/logout' />">ホームへ戻る</a>
    		</div>
    	</div>
    </body>
</html>