<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="ja">
	<head>
		<meta charset="UTF-8">
		<title>新規・ログインページ</title>
	</head>
	<body>
		<div id="wrapper">
			<div id="header">
				<h1>shibuya.hotel</h1>
			</div>
			<div id="content">
				<div id="login_menu">
					<h2>ログイン</h2>
					<form method="POST" action="<c:url value='/login' />">

						<label for="name">社員番号</label><br />
						<input type="text"name="name"  />
						<br /> <br />

						<label for="password">パスワード</label><br />
						<input type="password" name="password" />
						<br /> <br />

						<input type="hidden" name="_token" value="${_token}" />
						<button type="submit">ログイン</button>

					</form>
				</div>
				<div id="new_guest">
					<h2><a href="<c:url value='/guests/new' />">新規登録</a></h2>
				</div>
			</div>
		</div>

	</body>
</html>





