<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal" var="principal" />
</sec:authorize>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="/css/reset.css">
    <link rel="stylesheet" href="/css/border_dtl.css">
</head>
<body>

    <jsp:include page="include/main_header.jsp"></jsp:include>

    <main id="main">
        <div id="dtl_container">
            <!-- 헤더부분 -->
            <section id="dtl_head">
                <div class="dtl_title">
                    <h1>${border.main_title }</h1>
                </div>
                <div class="dtl_nav">
                    <div class="dtl_info">
                        <a href="#">${principal.user.username }</a>
                        <span class="dtl_point">·</span>
                        <span class="dtl_date">${border.create_date }</span>
                    </div>
                    <div class="dtl_btn">
                        <button type="button" class="graph_btn">통계</button>
                        <button type="button" class="update_btn">수정</button>
                        <button type="button" class="delete_btn">삭제</button>
                    </div>
                </div>
            </section>
    
            <!-- 메인 컨텐츠 부분 -->
            <section class="dtl_body">
                <div class="dtl_content">sdfsdfsdf</div>
            </section>
    
            <!-- 하단 프로필 부분 -->
            <section id="footer">
                <a href="#"><img src="img/user_icon.png" alt="" width="128" height="128"></a>
                <div class="user_info">
                    <a href="#" class="dtl_writer">${principal.user.username }</a>
                    <span class="dtl_comment">${principal.user.comment }</span>
                </div>
            </section>
        </div>
    </main>
</body>
</html>