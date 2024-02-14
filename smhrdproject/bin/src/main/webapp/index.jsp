<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
	Astral by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>


<head>
	<title>Astral by HTML5 UP</title>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	<link rel="stylesheet" href="assets/css/main.css" />
	<noscript>
		<link rel="stylesheet" href="assets/css/noscript.css" />
	</noscript>
	<link rel="stylesheet" href="">
</head>

<body class="is-preload">

	<!-- Wrapper-->
	<div id="wrapper">

		<!-- Nav -->
		<nav id="nav">
			<a href="#test" class="icon solid fa-user-md"><span>질환테스트</span></a>
			<a href="#upload" class="icon solid fa-upload"><span>업로드</span></a>
			<a href="#posting" class="icon solid fa-comment"><span>게시물</span></a>
			<a href="#sick_info" class="icon solid fa-notes-medical"><span>질환정보</span></a>
			<a href="#exercise_info" class="icon solid fa-running"><span>운동정보</span></a>
			<a href="#mypage" class="icon solid fa-house-user"><span>마이페이지</span></a>
		</nav>

		<!-- Main -->
		<div id="main">

			

			<!-- 설문조사 -->
			<article id="test" class="panel">
			
				<a href="#test-excute" class="jumplink pic">
					<span class="arrow icon solid fa-chevron-right">설문조사</span>
					<img src="" alt="" />
				</a>
			</article>
			
			<!-- 검사진행 -->
			<article id="test-excute" class="panel">
				<a href="#test-result" class="jumplink pic">
					<span class="arrow icon solid fa-chevron-right">검사진행</span>
					<img src="" alt="" />
				</a>
			</article>
			
			<!-- 검사결과 -->
			<article id="test-result" class="panel">
			<!-- 버튼 태그 생성 -->
				<button id="testResultBtn">Test 결과 보기</button>

				<!-- 결과 출력을 위한 영역 -->	
				<div id="resultArea"></div>

				<!-- 새로운 버튼 생성 -->
				<div id="newTestButtons" style="display: none;">
    			<button id="newTestBtn">NewTest</button>
			    <button id="goToTestResultBtn">Test 결과 보러가기</button>
					</div>

				
			</article>


			<!-- 업로드 -->
			<article id="upload" class="panel">
				<h2>CopixGram</h2>
				
				<form id="post-form">
					<input type="file" id="file-upload" accept="image/*"><br>
					<input type="text" id="caption" placeholder="게시물 내용을 입력하세요"><br>
					<button type="submit">업로드</button>
				</form>
				
				<h2>게시물 목록</h2>
				<ul id="post-list">
					<!-- 여기에 업로드된 게시물이 추가됩니다. -->
				</ul>
				
				
			</article>
			<!-- 게시물 -->
			<article id="posting" class="panel">
		</article>

			<!-- 질환정보 -->
			<article id="sick_info" class="panel">
				<header>
					<h2>질환정보</h2>
				</header>
				<p>
					다양한 상체 질환에 대한 정보를 제공하는 페이지 입니다.
				</p>
				<section>
					<div class="row">
						<div class="col-4 col-6-medium col-12-small">
							<a href="#" class="image fit"><img src="images/pic01.jpg" alt=""></a>
						</div>
						<div class="col-4 col-6-medium col-12-small">
							<a href="#" class="image fit"><img src="images/pic02.jpg" alt=""></a>
						</div>
						<div class="col-4 col-6-medium col-12-small">
							<a href="#" class="image fit"><img src="images/pic03.jpg" alt=""></a>
						</div>
						<div class="col-4 col-6-medium col-12-small">
							<a href="#" class="image fit"><img src="images/pic04.jpg" alt=""></a>
						</div>
						<div class="col-4 col-6-medium col-12-small">
							<a href="#" class="image fit"><img src="images/pic05.jpg" alt=""></a>
						</div>
						<div class="col-4 col-6-medium col-12-small">
							<a href="#" class="image fit"><img src="images/pic06.jpg" alt=""></a>
						</div>
						<div class="col-4 col-6-medium col-12-small">
							<a href="#" class="image fit"><img src="images/pic07.jpg" alt=""></a>
						</div>
						<div class="col-4 col-6-medium col-12-small">
							<a href="#" class="image fit"><img src="images/pic08.jpg" alt=""></a>
						</div>
						<div class="col-4 col-6-medium col-12-small">
							<a href="#" class="image fit"><img src="images/pic09.jpg" alt=""></a>
						</div>
						<div class="col-4 col-6-medium col-12-small">
							<a href="#" class="image fit"><img src="images/pic10.jpg" alt=""></a>
						</div>
						<div class="col-4 col-6-medium col-12-small">
							<a href="#" class="image fit"><img src="images/pic11.jpg" alt=""></a>
						</div>
						<div class="col-4 col-6-medium col-12-small">
							<a href="#" class="image fit"><img src="images/pic12.jpg" alt=""></a>
						</div>
					</div>
				</section>
			</article>

			<!-- 운동정보 -->
			<article id="exercise_info" class="panel">
				<header>
					<h2>운동정보</h2>
				</header>
				<p>
					다양한 상체 질환들의 정보를 제공하는 페이지입니다.
				</p>
				<section>
					<div class="row">
						<div class="col-4 col-6-medium col-12-small">
							<a href="https://www.amc.seoul.kr/asan/healthinfo/disease/diseaseDetail.do?contentId=31703"
								class="image fit"><img src="images/pic01.jpg" alt=""></a>
						</div>
						<div class="col-4 col-6-medium col-12-small">
							<a href="#" class="image fit"><img src="images/pic02.jpg" alt=""></a>
						</div>
						<div class="col-4 col-6-medium col-12-small">
							<a href="#" class="image fit"><img src="images/pic03.jpg" alt=""></a>
						</div>
						<div class="col-4 col-6-medium col-12-small">
							<a href="#" class="image fit"><img src="images/pic04.jpg" alt=""></a>
						</div>
						<div class="col-4 col-6-medium col-12-small">
							<a href="#" class="image fit"><img src="images/pic05.jpg" alt=""></a>
						</div>
						<div class="col-4 col-6-medium col-12-small">
							<a href="#" class="image fit"><img src="images/pic06.jpg" alt=""></a>
						</div>
						<div class="col-4 col-6-medium col-12-small">
							<a href="#" class="image fit"><img src="images/pic07.jpg" alt=""></a>
						</div>
						<div class="col-4 col-6-medium col-12-small">
							<a href="#" class="image fit"><img src="images/pic08.jpg" alt=""></a>
						</div>
						<div class="col-4 col-6-medium col-12-small">
							<a href="#" class="image fit"><img src="images/pic09.jpg" alt=""></a>
						</div>
						<div class="col-4 col-6-medium col-12-small">
							<a href="#" class="image fit"><img src="images/pic10.jpg" alt=""></a>
						</div>
						<div class="col-4 col-6-medium col-12-small">
							<a href="#" class="image fit"><img src="images/pic11.jpg" alt=""></a>
						</div>
						<div class="col-4 col-6-medium col-12-small">
							<a href="#" class="image fit"><img src="images/pic12.jpg" alt=""></a>
						</div>
					</div>
				</section>
			</article>

			<!-- 마이페이지 -->
			<article id="mypage" class="panel">
			<header style="text-align: center;">
					<h2 style="font-weight: 300;">프로필 사진</h2>
        <br>
        <img id="profilePicture" src="/images/프로필사진.jpg" alt="프로필 사진" width="200" height="200">
        <div class="mypage">
			<form id="profileForm">
            <input type="file" id="imageInput" accept="image/*" style="display: none;">
            <label for="imageInput">
                <button style="width: 200px; font-size: 18px;">프로필 사진 변경</button>
            </label>
		</form>
        </div>
		<br>
		<form action="update" method="post" id="signup-form">
			<div>
				<div class="row">
					<div class="col-6" style="margin: auto; padding-left: 6.5%;">
						<input type="text" name="email" placeholder="이메일" />
					</div>
					<div></div>
					<div class="col-6" style="margin: auto; padding-left: 6.5%;">
						<input type="password" name="pw" placeholder="현재비밀번호" />
					</div>
					<div></div>
					<div class="col-6" style="margin: auto; padding-left: 6.5%;">
						<input type="password" name="pwcheck" placeholder="변경할비밀번호" />
					</div>
					<div></div>
					<div class="col-8">
						<input type="submit" class="btn-3d cyan" value="변경하기">
					</div>
				</div>
			</div>
		</form>
		</header>

		</article>


	</div>

	<!-- Footer -->
	<div id="footer">
		<ul class="copyright">
			<li>&copy; Untitled.</li>
			<li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
		</ul>
	</div>

	</div>

	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>

</body>

</html>