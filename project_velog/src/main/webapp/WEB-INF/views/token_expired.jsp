<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal" var="principal"/>
</sec:authorize>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>velog-relogin</title>
    <link rel="stylesheet" href="/css/reset.css">
    <link rel="stylesheet" href="/css/header.css">
    <link rel="stylesheet" href="/css/token_expired.css">
</head>
<body>
   	<jsp:include page="include/main_header.jsp"></jsp:include>

    <main id="main">
        <section>
            <img src="/img/undraw_login_v483.23825b9b.svg" alt="로그인 이미지">
            <h4 class="token_txt">토큰이 만료되었습니다.</h4>
            <h4 class="relogin_txt">다시 로그인 후 이용해주세요.</h4>
            <button type="button" class="login_btn">로그인</button>
        </section>
    </main>
    
    <script src="https://kit.fontawesome.com/7e652321d1.js" crossorigin="anonymous"></script>
    <script src="/js/login.js"></script>
</body>
</html>