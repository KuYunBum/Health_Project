<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
    <link rel="stylesheet" href="/health/resources/css/main_template.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <title> 메인화면 </title>
</head>

<body>
    <div class="header">
        <div class="navbar1">

            <a href="/health">
                <img src="/health/resources/image/logo.png" style="width:200px;height:150px;"> <!-- 로고 -->
            </a>

            <ul>
                <!-- 상단 메뉴 -->
                <li><a href="login">로그인</a></li>
                <li><a href="join">회원가입</a></li>
                <li><a href="#">고객센터</a></li>
            </ul>
        </div>

        <div class="navbar2">
            <ul>
                <!-- 메인 메뉴 -->
                <li><a href="/health">홈</a></li>
                <li><a href="/health/ex_recomm">AI 운동 추천</a></li>
                <li><a href="#">멤버쉽</a></li>
                <li><a href="#">트레이너</a></li>
                <li><a href="/health/board/list">자유게시판</a></li>
                <li><a href="#">내 주변 헬스장 찾기</a></li>
                <li>
                    <div class="searchBox">
                        <!-- 수정해야함 -->
                        <div class="search">
                            <label>
                                <input type="text" name="searchBar " placeholder="검색어 입력">
                                <span class="material-symbols-outlined">search</span>
                            </label>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
    </div>



	<div class="main">
	</div>




	<!-- 하단 고정부분?? -->

    <div class="footer">
		<hr><br>
        <p>Contact us<br><br>
        Phone : 010-8282-1234<br><br>
        Where : In your heart</p>


    </div>
    <!-- 맨 위로 버튼 -->
    <div class="topBtn">
        <a href="#">
            <button class="btn">TOP</button>
        </a>
    </div>

</body>

</html>