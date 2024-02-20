<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
	Stellar by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>

<header id="header1">
	<nav id="nav1">
		<ul>
			<li><a href="index.html">Home</a></li>
			<li><a href="#" class="btn-3d cyan">Logout</a></li>
			<!-- <li><a href="#" class="btn-3d cyan">Sign up</a> -->
		</ul>
	</nav>
</header>

<head>
	<title>Stellar by HTML5 UP</title>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	<link rel="stylesheet" href="assets/css/main.css" />
	<noscript>
		<link rel="stylesheet" href="assets/css/noscript.css" />
	</noscript>
</head>

<body class="is-preload">

	<!-- Wrapper -->
	<div id="wrapper">
		<!-- Main test start -->
		<section id="banner">
			<div class="content">
				<h2>Welcome to Coach Fix</h2>
				<p>
					안녕하세요. 거북목 진단을 통해 개인에게 필요한 자세 및 운동정보를 제공해주는 서비스입니다.
					<br>
				<h3>테스트 종류를 선택해주세요</h3>
				</p>

			</div>
		</section>


		<!--테스트 버튼 생성  -->
		<section id="intro1">
			<div class="inner">
				<ul class="actions">
					<li><a href="#one" class="button scrolly">설문지 테스트</a></li>
					<li><a href="#two" class="button scrolly">이미지 테스트</a></li>
				</ul>
			</div>
		</section>



		<!-- Nav -->
		<nav id="nav2">
			<ul>
				<li><a href="" class="icon solid fa-user-md fa-2x"></a></li>
			</ul>
		</nav>

		<!-- Main -->
		<div id="main">

			<!-- 이미지 테스트 페이지 -->

			<!-- 이미지 테스트 시작페이지 -->
			<section id="two" class="main special">
				<main class="spotlight2">
					<header class="major">
						<h2 class="turtle test">Let's Start</h2>
					</header>
					<form id="uploadForm">
						<input type="file" name="file" />
						<button type="button" id="uploadBtn"></button>
					</form>
					<li><a href="#survey" class="button scrolly">테스트 시작</a></li>
				</main>
			</section>


			<!-- 이미지 테스트 진행 페이지 -->
			<section id="survey" class="main special">
				<main class="spotlight2">
					<header class="major">
						<h2>Test Result</h2>
					</header>
					<section class="result-container">
						<main class="result-text2">
							<li>
								<a class="jumplink pic">
									<span class="arrow icon solid fa-chevron-right"><span> img</span></span>
									<img src="#" alt="" />
								</a>
							</li>
						</main>
						<main class="result-text2">
							<li>
								<a>당신의 거북목 상태는 </a>
								<h2>80%</h2>
								<a>진단이 되었습니다.</a>
							</li>
						</main>
					</section>
					<br><br>
					<li><a href="#myresult" class="button scrolly">테스트 결과</a></li>
			</section>

			<!-- 이미지 테스트 결과페이지 -->
			<section id="myresult" class="main special">
				<main class="spotlight2">
					<header class="major">
						<h2>Test Result</h2>
					</header>
					<!-- 결과 차트 -->
					<section class="result-container">
						<main class="chart-container">
							<header class="pie-chart pie-chart1"><span class="center">80%</span></header>
							<!-- 추가적인 그래프 관련 코드 추가 가능 -->
						</main>
						<main class="result-text">
							<li>
								<a>당신의 거북목 상태는 </a>
								<h2>80%</h2>
								<a>진단이 되었습니다.</a>
							</li>
						</main>
					</section>
					<!-- <li><a type="turtle-title">거북목</a></li> -->
					<br><br>
					<li><a href="index(로그인).html" class="button scrolly">저장</a><a href="index(테스트)_설문지.html"
							class="button scrolly">다시하기</a></li>
					<img src="" alt="">

				</main>
			</section>
		</div>


		<section id="excute" class="main special">
			<article id="test-excute" class="panel">
			</article>
		</section>


		<!-- Footer -->
		<footer id="footer">
			<section>
				<h2>Aliquam sed mauris</h2>
				<p>Sed lorem ipsum dolor sit amet et nullam consequat feugiat consequat magna adipiscing tempus
					etiam dolore veroeros. eget dapibus mauris. Cras aliquet, nisl ut viverra sollicitudin,
					ligula
					erat egestas velit, vitae tincidunt odio.</p>
				<!-- <ul class="actions">
						<li><a href="generic.html" class="button">Learn More</a></li>
					</ul> -->
			</section>
			<section>
				<h2>Etiam feugiat</h2>
				<dl class="alt">
					<dt>Address</dt>
					<dd>1234 Somewhere Road &bull; Nashville, TN 61740 &bull; KOR</dd>
					<dt>Phone</dt>
					<dd>(000) 000-0000 x 0000</dd>
					<dt>Email</dt>
					<dd><a href="#">information@untitled.tld</a></dd>
				</dl>
				<ul class="icons">
					<li><a href="#" class="icon brands fa-twitter alt"><span class="label">Twitter</span></a>
					</li>
					<li><a href="#" class="icon brands fa-facebook-f alt"><span class="label">Facebook</span></a>
					</li>
					<li><a href="#" class="icon brands fa-instagram alt"><span class="label">Instagram</span></a>
					</li>
					<li><a href="#" class="icon brands fa-github alt"><span class="label">GitHub</span></a></li>
					<li><a href="#" class="icon brands fa-dribbble alt"><span class="label">Dribbble</span></a>
					</li>
				</ul>
			</section>
		</footer>

	</div>

	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>

</body>

</html>