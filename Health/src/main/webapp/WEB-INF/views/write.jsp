<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Log in</title>
    <link rel="stylesheet"
    href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
<script	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link rel="stylesheet" href="/health/resources/css/board_template.css" />
</head>
<script>
$(document).ready(function(){
	
	var formObj = $("form[role='form']");

	$(".bt_save").on("click", function() {
		formObj.submit();
	});
	
	$(".bt_list").on("click", function(){
		self.location = "list";
	});
	
});
</script>

    <div class="header">
        <div class="navbar1">

            <a href="#">
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
                <li><a href="#">홈</a></li>
                <li><a href="/health/ex_recomm">AI 운동 추천</a></li>
                <li><a href="#">멤버쉽</a></li>
                <li><a href="#">트레이너</a></li>
                <li><a href="list">자유게시판</a></li>
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
		<h1>글 쓰기</h1>
		<!-- action에 경로가 없으면 현재 페이지 주소로 이동한다.-->
		<form role="form" method="post">
			<table id='customers' border="1">
				<tr>
					<th>작성자</th>
				</tr>
				<tr>
					<td><input type="text" name="writer" placeholder="내용 입력"	style="width: 100%; height: 30px;"></td>
				</tr>
				<tr>
					<th>제목</th>
				</tr>
				<tr>
					<td><input type="text" name='title' placeholder="내용 입력" style="width: 100%; height: 30px;"></td>
				</tr>
				<tr>
					<th>내용</th>
				</tr>
				<tr>
					<td><textarea name="content" rows="8" style="width: 100%" placeholder="내용 입력"></textarea></td>
				</tr>
			</table>
		</form>
		<div class="bt_box">
			<button type="button" class="bt_save">저장</button>
			<button type="button" class="bt_list">목록</button>
		</div>
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