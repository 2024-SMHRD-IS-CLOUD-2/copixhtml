<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		<c:if test="${empty result.mb_Email }"  >
			<li><a href="index_main.jsp" >Home</a></li>
			<li><a href="index_login.jsp" class="btn-3d cyan">Login</a></li>
			<li><a href="index_signup.jsp" class="btn-3d cyan">Sign up</a>
			</c:if>
		<c:if test="${not empty result.mb_Email }">
			<li><a href="logOut" class="btn-3d cyan">logout</a></li>
			<li><a href="index_mypage.jsp" class="btn-3d cyan">Mypage</a></li>
		</c:if>
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
					<h3>거북목 테스트를 시작하시겠습니까?</h3>
					<a href="index_testText.jsp" class="button scrolly">Let's go</a>
				</p>
			</div>
		</section>
		
		<article class="section-banner">
			<!-- Main banner -->
			<div id="carousel">
				<div class="slides">
					<div class="slide">
						<img src="images/배너3.jpg" alt="Slide 1">
					</div>
					<div class="slide">
						<img src="images/배너1.jpg" alt="Slide 2">
					</div>
					<div class="slide">
						<img src="images/배너2.jpg" alt="Slide 3">
					</div>
				</div>
			</div>
		</article>

			<!-- Nav -->
			<nav id="nav">
				<ul>
					<li><a href="#intro" class="active">코픽스그램</a></li>
					<li><a href="#first">운동정보</a></li>
				</ul>
			</nav>

			<!-- Main -->
			<div id="main">

				<!-- Introduction -->
				<section id="intro" class="main">
					<div class="spotlight">
						<div class="content">
							<header class="major">
								<h2>Coach Fix Gram</h2>
							</header>
							<!-- 게시물업로드 -->
							<form action="upLoad" id="post-form">
								<input type="file" name="postFile" id="file-upload" accept="image/*">
								<br><br>
								<input type="text" name="postContent" id="caption" placeholder="게시물 내용을 입력하세요">
								<input type="hidden" name="emailtoken" value="${result.mb_Email }">
								<br>
								<button type="submit">Upload</button>
								<!-- <ul class="actions">
								<li><a class="button">Upload</a></li>
							</ul> -->
							</form>
							<header class="major">
								<h2>List Of Post</h2>
							</header>
							<ul id="post-list">
								<!-- 여기에 업로드된 게시물이 추가됩니다 -->
							</ul>
						</div>
					</div>
				</section>

				<!-- First Section -->
				<section id="first" class="main special">
					<header class="major">
						<h2>운동정보</h2>
					</header>
					<ul class="features">
						<div class="row">
							<li>
								<div class="col-4 col-6-medium col-12-small">
									<a href="#" class="image"><img src="images/pic01.jpg" alt=""></a>
								</div>
							</li>
							<li>
								<div class="col-4 col-6-medium col-12-small">
									<a href="#" class="image"><img src="images/pic01.jpg" alt=""></a>
								</div>
							</li>
							<li>
								<div class="col-4 col-6-medium col-12-small">
									<a href="#" class="image"><img src="images/pic01.jpg" alt=""></a>
								</div>
							</li>
						</div>
						<div class="row">
							<li>
								<div class="col-4 col-6-medium col-12-small">
									<a href="#" class="image"><img src="images/pic01.jpg" alt=""></a>
								</div>
							</li>
							<li>
								<div class="col-4 col-6-medium col-12-small">
									<a href="#" class="image"><img src="images/pic01.jpg" alt=""></a>
								</div>
							</li>
							<li>
								<div class="col-4 col-6-medium col-12-small">
									<a href="#" class="image"><img src="images/pic01.jpg" alt=""></a>
								</div>
							</li>
						</div>
						<div class="row">
							<li>
								<div class="col-4 col-6-medium col-12-small">
									<a href="#" class="image"><img src="images/pic01.jpg" alt=""></a>
								</div>
							</li>
							<li>
								<div class="col-4 col-6-medium col-12-small">
									<a href="#" class="image"><img src="images/pic01.jpg" alt=""></a>
								</div>
							</li>
							<li>
								<div class="col-4 col-6-medium col-12-small">
									<a href="#" class="image"><img src="images/pic01.jpg" alt=""></a>
								</div>
							</li>
						</div>
					</ul>


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
							<li><a href="#" class="icon brands fa-facebook-f alt"><span
										class="label">Facebook</span></a>
							</li>
							<li><a href="#" class="icon brands fa-instagram alt"><span
										class="label">Instagram</span></a>
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