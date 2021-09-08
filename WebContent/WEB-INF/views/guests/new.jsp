<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="../layout/app.jsp">
	<c:param name="content">
		<form method="POST" action="<c:url value='/guests/create' />">
       		<c:import url="guest_form.jsp" />
   		</form>
	</c:param>
</c:import>