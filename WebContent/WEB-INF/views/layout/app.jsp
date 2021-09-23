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
    			<div class="header_menu_0"><h2><a href="<c:url value='/index.html' />">top</a></h2></div>&nbsp;
    			<div class="header_menu_1"><h2><a href="<c:url value='/new/or/login' />">reserve</a></h2></div>&nbsp;
    			<div class="header_menu_2"><h2><a href="<c:url value='/login' />">my reserve</a></h2></div>&nbsp;
    			<div class="header_menu_3"><h2><a href="<c:url value='/faq/index' />">faq.</a></h2></div>&nbsp;
    		</div>
    		<div id="content">
		            ${param.content}
    		</div>
    	</div>
    </body>
</html>