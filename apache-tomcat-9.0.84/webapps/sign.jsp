<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
	Astral by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<style>
	#login-form>input {
		width: 100%;
		align-content: center;
		height: 70px;
		padding: 0 25px;
		box-sizing: border-box;
		margin-top: 10px;
	}

	#signup-form>input {
		width: 100%;
		align-content: center;
		height: 70px;
		padding: 0 25px;
		box-sizing: border-box;
		margin-top: 10px;
	}
</style>

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
			<a href="#login" class="icon solid fa-power-off"><span>로그인</span></a>
			<a href="#signup" class="icon solid fa-user-friends"><span>회원가입</span></a>
		</nav>

		<!-- Main -->
		<div id="main">

			<!-- 로그인 -->
			<article id="login" class="panel intro">
				<header>
					<form action="#" method="post" id="login-form">
						<br>
						<h2 style="text-align: center; font-size: 45px; font-weight: 500;">로그인</h2>
						<h6 style="text-align: center; font-size: 20px;">or use your email for registration</h6>
						<input type="text" name="id" placeholder="Email"
							style="text-align: left; font-size: 25px; color:#292828; font-weight:300;" />
						<input type="text" name="pw" placeholder="Password"
							style="text-align: left; font-size: 25px; color:#292828;" />
						<div class="btn-container">
							<a href="#" style="text-align: center; font-size: 23px;">Forgot your password?</a>
							<br>
							<a href="#" class="btn-3d cyan">Login</a>
							<a href="#" class="btn-3d cyan">Sign up</a>
						</div>
					</form>

				</header>


				<a class="jumplink pic">
					<span class="arrow icon solid fa-chevron-right"><span>See my work</span></span>
					<img src="images/login_image.png" alt="" />
				</a>
			</article>

			<!-- 회원가입 -->
			<article id="signup" class="panel">
				<header>
					<h2 style="text-align: center; font-size: 45px; font-weight: 500;">회원가입</h2>
				</header>
				<form action="#" method="post" id="signup-form">
					<div>
						<div class="row">
							<!-- 회원 이메일 -->
							<div class="col-8">
								<span>or use your email for registration</span>
								<input type="text" name="id" placeholder="Email" />
							</div>
							<div></div>
							<!-- 회원 닉네임 -->
							<div class="col-8">
								<input type="text" name="nick" placeholder="Nick_name" />
							</div>
							<div></div>
							<!-- 회원 성별 -->
							<!-- 회원 생년월일 -->
							<div class="col-8" style="display: flex; align-items: center;">
								<select name="gender" style="margin-right: 10px;" id="">
									<option value="gender">Gender</option>
									<option value="gender">Man</option>
									<option value="gender">woman</option>
								</select>
								<input id="birth" type="date" date-placeholder="생년월일" required>
							</div>

							<div></div>
							<!-- 회원 비밀번호 -->
							<div class="col-8">
								<input type="text" name="pw" placeholder="Password" />
							</div>
							<div></div>
							<!-- 회원 비밀번호 확인 -->
							<div class="col-8">
								<input type="text" name="pwcheck" placeholder="Password Check" />
								<!-- 회원가입 버튼 -->
								<a href="#" class="btn-3d cyan">Sign up</a>
							</div>
							<div></div>
						</div>
					</div>
				</form>

			</article>



		</div>
		
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