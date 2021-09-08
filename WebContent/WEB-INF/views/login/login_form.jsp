<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<div id="login_menu" >
	<div class="login_content">
	<h2>ログイン</h2>
		<c:if test="${hasError}">
			<div id="flush_error">氏名かパスワードが間違っています。</div>
		</c:if>

		<label for="name">氏名</label><br />
		<input type="text"name="name"  />
		<br /> <br />

		<label for="password">パスワード</label><br />
		<input type="password" name="password" />
		<br /> <br />

		<input type="hidden" name="_token" value="${_token}" />
		<button type="submit">ログイン</button>
	</div>
</div>