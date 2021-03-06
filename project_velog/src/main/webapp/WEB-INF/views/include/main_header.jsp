<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal" var="principal" />
</sec:authorize>

<head>
<link rel="stylesheet" href="/css/header.css">
<link rel="stylesheet" href="/css/sign_in.css">

</head>
<header>
	<div class="fixed_header">
		<div class="hd_wrap">
			<!-- 로고 -->
			<div class="hd_logo border_hd_logo">
			<c:choose>
				<c:when test="${not empty principal.writer}">
					<a href="/" class="border_logo_img"><img class="border_hd_icon" src="/img/black_favicon.png" alt=""></a>
                    <a class="hd_logo_a"><span class="border_logo_txt">${principal.writer}.log</span></a>
				</c:when>
				<c:otherwise>
					<a href="/index"><span class="hd_logo_txt">velog</span></a>
				</c:otherwise>
			</c:choose>
			</div>
			<!-- 왼쪽상단 -->
			<div class="hd_btns">
				<!-- 검색 버튼 -->
				<a href="/search" class="search_btn"><i class="fas fa-search search_icon"></i></a>
				<c:choose>
					<c:when test="${empty principal.user }">
						<button class="login_btn header_btn" type="button" onclick="login()">로그인</button>
					</c:when>
					<c:otherwise>
						<button class="go_posting_btn header_btn" type="button" >새 글 작성</button>
						<div class="user_nav_wrap">
							<button type="button" class="user_btn">
								<img class="img" src="/image/profile/${(empty principal.user.profile_img_url)? ('user_icon.png'):(principal.user.id += '/' += principal.user.profile_img_url)}">
								<i class="fas fa-caret-down down"></i>
							</button>
							<div class="user_nav">
								<ul>
									<li class="mypage"><a href="/border/myborder/${principal.user.username}">내 벨로그</a></li>
									<li class="setting"><a href="/mypage/${principal.user.id}">설정</a></li>
									<li class="logout"><a href="/logout">로그아웃</a></li>
								</ul>
							</div>
						</div>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
	</div>
	<jsp:include page="sign_in.jsp"></jsp:include>
	<script defer="defer" src="/js/header.js"></script>
	<script defer="defer"  src="/js/sign_in.js"></script>
</header>
	
