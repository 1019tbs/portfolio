<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>田伏佑多のPortfolio</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/common.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/index.css">
</head>
<body>

	<jsp:include page="common/header.jsp" />

	<main>

		<section class="hero">

			<img src="${pageContext.request.contextPath}/image/header.png"
				alt="mainとなる画像">

		</section>

		<!--  About -->
		<!-- About -->
		<section class="about-preview">

			<div class="section-title">

				<img class="section-title-aboutpng"
					src="${pageContext.request.contextPath}/image/about.png"
					alt="About"> <img class="profile-title"
					src="${pageContext.request.contextPath}/image/Profile.png"
					alt="自己紹介">

			</div>

			<div class="about-preview__content">

				<p>
					はじめまして、田伏佑多です。<br> 前職では、審査業務の管理者として業務改善に携わっていました。<br>
					その中で「もっと便利な仕組みを作りたい」と思ったことをきっかけに、<br> プログラミングを学び始めました。
				</p>

				<p>
					現在はJava・Spring Bootを中心に学習し、<br> Webアプリケーション開発に挑戦しています。
				</p>

			</div>

			<div class="section-link">

				<a href="${pageContext.request.contextPath}/about"> <img
					class="read-more-button"
					src="${pageContext.request.contextPath}/image/ReadMore.png"
					alt="Aboutページを詳しく見る">

				</a>

			</div>

		</section>

	</main>

	<jsp:include page="common/footer.jsp" />

</body>
</html>