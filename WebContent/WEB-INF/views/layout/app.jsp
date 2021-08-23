<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ja">
    <head>
        <meta charset="UTF-8">
        <title>予約システム</title>
    </head>
    <body>
    	<div id="wrapper">
    		<div id="header">
    			<div id="deader_menu ">
    				<h2><a href="<c:url value='/reserve/index' />">reserve</a></h2>&nbsp;
    				<h2><a href="<c:url value='/reservation/index' />">my reservation</a></h2>&nbsp;
    				<h2><a href="<c:url value='/faq/index' />">FAQ.</a></h2>&nbsp;
    			</div>
    		</div>
    		<div id="content">
    			<h1>shibuya.hotel</h1>
    		</div>
    	</div>

    </body>
</html>