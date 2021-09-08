<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="../layout/app.jsp">
	<c:param name="content">
		<div class="new_or_login_content">
			<div id="login_menu">
				<form method="POST" action="<c:url value='/login' />">
	          			<c:import url="login_form.jsp" />
	          	</form>
			</div>
			<div id="new_guest">
				<div class="new_guest_content">
					<h2><a href="<c:url value='/guests/new' />">新規登録</a></h2>
					<br />
					<p>アカウントを<br />お持ちでない方は<br />こちらから</p>
				</div>
			</div>
		</div>
	</c:param>
</c:import>