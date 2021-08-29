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
<select name="room_type">
	<option value="0"<c:if test="${employee.room_type == 0}"> selected</c:if>>-------</option>
    <option value="1"<c:if test="${employee.room_type == 1}"> selected</c:if>>Aタイプ</option>
    <option value="2"<c:if test="${employee.room_type == 2}"> selected</c:if>>Bタイプ</option>
    <option value="3"<c:if test="${employee.room_type == 3}"> selected</c:if>>cタイプ</option>
</select>
<br /><br /><br />

<label for="number_of_people">人数</label><br />
<label>＜大人＞</label><br />
<input type="text" name="adult_people" value="${booking.adult_people}" /><br />
<label>＜小人＞</label><br />
<input type="text" name="child_people" value="${booking.child_people}" /><br />
<br /><br />

<label for="booking_date">日程</label><br />
<label>＜チェックイン＞</label><br />
<input type="date" name="check_in_date" value="<fmt:formatDate value='${booking.check_in_date}' pattern='yyyy-MM-dd' />" /><br />
<label>＜チェックアウト＞</label><br />
<input type="date" name="check_out_date" value="<fmt:formatDate value='${booking.check_out_date}' pattern='yyyy-MM-dd' />" />
<br /><br /><br />

<label for="content">ご宿泊に当たって何かご質問がありましたら、ご記入ください。</label><br />
<input type="text" name="content" value="${booking.content}" />
<br /><br />


<input type="hidden" name="_token" value="${_token}" />
<button type="submit">登録</button>