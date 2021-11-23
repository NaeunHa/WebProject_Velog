<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>privacy</title>
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/sign_in.css">
    <link rel="stylesheet" href="css/privacy.css">
</head>
<body>
    <jsp:include page="/include/main_header.jsp"></jsp:include>    
    <!-- 기본 틀 -->
    <main id="content">

        <!-- terms & privacy -->
        <section class="choose">
            <div class="ch_menu">
                <a href="#" class="terms">이용약관</a>
                <a href="#" class="privacy">개인정보취급방침</a>
            </div>
        </section>
        <!-- main txt -->
        <div>
            <h1>개인정보 취급 방침</h1>
            <h2>1. 개인정보의 수집 및 이용 목적</h2>
            <p>벨로그(이하 "회사")는 수집한 개인정보를 다음의 목적을 위해 활용합니다.</p>
            <ul>
                <li>회원 관리</li>
                <li>서비스 제공</li>
            </ul>
            <h2>2. 개인정보의 보유 및 이용기간</h2>
            <h3>소비자의 불만 또는 분쟁처리에 관한 기록</h3>
            <p>
                보존 이유: 전자상거래 등에서의 소비자보호에 관한 법룔 제6조 및 시행령 제6조<br>
                보존 기간: 3년
            </p>
            <h3>본인확인에 관한 기록</h3>
            <p>
                보존 이유: 정보통신망 이용촉진 및 정보보호에 관한 법률 제 44조의5 및 시행령 제 29조<br>
               보존 기간: 6개월
            </p>
            <h3>접속에 관한 기록</h3>
            <p>보존 이유: 통신비밀보호법 제15조의2 및 시행령 제41조- 보존 기간: 3개월</p>

            <h2>3. 수집하는 개인정보의 항목</h2>
            <p>
                회사는 회원가입, 서비스 이용 등을 위해 아래와 같은 개인정보를 수집하고 있습니다.<br>
                1. 수집항목<br>
                필수 입력 : 이메일 혹은 소셜 계정 정보<br>
                자동 수집항목 : IP 정보, MAC정보, 이용 기록, 접속 로그, 쿠키, 접속 기록 등<br>
                2. 개인정보 수집방법: 홈페이지(회원 가입)
            </p>
            <h2>4. 개인정보의 파기절차 및 방법</h2>
            <p>
                회사는 원칙적으로 개인정보 수집 및 이용목적이 달성된 후에는 해당 정보를 지체 없이 파기합니다.<br>
                파기절차 및 방법은 다음과 같습니다.<br>
                회사는 원칙적으로 개인정보의 수집 및 이용목적이 달성된 경우에는 지체없이 해당 개인정보를 
                파기합니다. 파기의 절차 및 방법은 다음과 같습니다.
            </p>
            <h3>파기절차</h3>
            <p>
                이용자가 회원가입 등을 위해 입력한 정보는 목적 달성 후 별도의 DB에 옮겨져(종이의 경우 
                별도의 서류) 내부 방침 및 기타 관련 법령에 의한 정보보호 사유에 따라 일정기간(개인정보 
                보유 및 이용기간 참조) 저장된 후 파기됩니다. 동 개인정보는 법률에 의한 경우가 아니고서는 
                보유되는 이외의 다른 목적으로 이용되지 않습니다.
            </p>
            <h3>파기방법</h3>
            <p>
                전자적 파일 형태의 개인정보는 기록을 재생할 수 없는 기술적 방법을 사용하여 삭제합니다.
                종이에 출력된 개인정보는 분쇄기로 분쇄하거나 소각을 통하여 파기합니다.
            </p>
            <h2>5. 개인정보 제공</h2>
            <p>회사는 이용자의 개인정보를 원칙적으로 외부에 제공하지 않습니다. 다만, 아래의 경우에는 예외로 합니다.</p>
            <ul>
                <li>이용자들이 사전에 동의한 경우</li>
                <li>법령의 규정에 의거하거나, 수사 목적으로 사회사의 요구가 있는 경우</li>
            </ul>
            <h2>6. 개인정보의 안정성 확보조치에 관한 사항</h2>
            <ul>
                <li>개인정보 암호화</li>
                <li>해킹 등에 대비한 대책</li>
                <li>취급 직원의 최소화 및 교육</li>
            </ul>
            <h2>7. 개인정보 관리 책임자 및 담당자</h2>
            <p>성명 : Leo Seo<br>이메일 : coqja@gmail.com</p>
            <p>기타 개인정보침해에 대한 신고나 상담이 필요한 경우에는 아래 인원에 문의하시기 바랍니다.</p>
        </div>
    </main>

    <script src="https://kit.fontawesome.com/0b11c2b6d9.js" crossorigin="anonymous"></script>
    <script src="js/policy.js"></script>
</body>
</html>