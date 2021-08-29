<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${errors != null}">
    <div id="flush_error">
        入力内容にエラーがあります。<br />
        <c:forEach var="error" items="${errors}">
            ・<c:out value="${error}" /><br />
        </c:forEach>

    </div>
</c:if>
<label for="room_type">部屋のタイプ</label><br />
<input type="text" name="room_type" value="${booking.room_type}" />
<br /><br />

<label for="number_people">人数</label><br />
<input type="text" name="number_people" value="${booking.number_people}" />
<br /><br />

<label for="booking_date">宿泊日程</label><br />
<input type="text" name="booking_date" value="${booking.booking_date}" />
<br /><br />

<label for="content">ご宿泊に当たっての質問</label><br />
<input type="text" name="content" value="${booking.content}" />
<br /><br />


<input type="hidden" name="_token" value="${_token}" />
<button type="submit">登録</button>