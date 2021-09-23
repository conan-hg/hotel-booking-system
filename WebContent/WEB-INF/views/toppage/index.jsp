<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="../layout/app.jsp">
	<c:param name="content">
		<c:if test="${flush != null}">
	        <div id="flush_success">
	            <c:out value="${flush}"></c:out>
	        </div>
	    </c:if>
	    <div class="heading">
	    	<h2 class="title">shibuya, hotel</h2>
	    </div>
		<div class="room_content">
			<div class="title-cotent">
				<h1 class="title">ROOMS</h1>
				<div class="secondary_title">
					<p>shibuya, hotelではお客様の旅のスタイルに合わせ、</p>
					<p>3タイプの客室をご用意しております。</p>
					<p></p>
				</div>
			</div>
			<div class="room_a">
				<img class="img_a" alt="" src="https://cdn.pixabay.com/photo/2018/02/27/13/13/bedroom-3185433_1280.jpg">
				<div class="menu_a">
					<div class="text-title">
						<h1>タイプA</h1>
					</div>
					<div class="text-item">
						<div class="text-desc">
							<p>タイプAのお部屋は、当ホテルの魅力を最も気軽に楽しめる客室。<br />
								コンパクトでありながら、落ち着きと機能性を兼ね備えています。</p>
						</div>
						<div class="text-spec">
							<p>room size:19㎡</p>
							<p>capacity: 2</p>
							<p>bed: single</p>
						</div>
					</div>
				</div>
			</div>
			<div class="room_b">
				<img class="img_b" alt="" src="https://cdn.pixabay.com/photo/2017/02/04/11/28/hotel-2037166_1280.jpg">
				<div class="menu_b">
					<div class="text-title">
						<h1>タイプB</h1>
					</div>
					<div class="text-item">
						<div class="text-desc">
							<p>タイプBのお部屋は、シングルベットを2つご用意したツインルーム。<br />
							ご友人・ご家族との滞在も窮屈に感じない、ゆとりのある客室となっています。</p>
						</div>
						<div class="text-spec">
							<p>room size:19㎡</p>
							<p>capacity: 2</p>
							<p>bed: single</p>
						</div>
					</div>
				</div>
			</div>
			<div class="room_c">
				<img class="img_c" alt="" src="https://cdn.pixabay.com/photo/2016/06/10/01/05/hotel-room-1447201_960_720.jpg">
				<div class="menu_c">
					<div class="text-title">
						<h1>タイプC</h1>
					</div>
					<div class="text-item">
						<div class="text-desc">
							<p>タイプCのお部屋は、クイーンサイズのベットが入った開放感のある客室。<br />
								オリジナルの家具が設えられた客室は、<br />
								インスピレーションと安らぎを同時に提供してくれる特別な空間です。</p>
						</div>
						<div class="text-spec">
							<p>room size:19㎡</p>
							<p>capacity: 2</p>
							<p>bed: single</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</c:param>
</c:import>
