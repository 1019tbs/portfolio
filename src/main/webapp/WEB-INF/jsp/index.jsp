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

		<section class="work-preview">
			<div class="work-preview__title">
				<img class="work-preview__image"
					src="${pageContext.request.contextPath}/image/Work.png" alt="Work">
				<p class="work-preview__text">
					これまでに制作した<br> アプリケーションやWebサイトを<br> 紹介します。
				</p>
				<a href="${pageContext.request.contextPath}/work"> <img
					class="work-preview__button"
					src="${pageContext.request.contextPath}/image/view-all.png"
					alt="Workページを詳しく見る">
				</a>
			</div>
			<div class="work-preview__list">
				<!--			一旦Work.jspを作成後に中身を作成する予定。　-->
			</div>
		</section>
		<section class="contact-preview">

			<div class="contact-preview__title">
				<img class="contact-preview__image"
					src="${pageContext.request.contextPath }/image/Contact.png"
					alt="Contact"
			</div>

			<div class="contact-previw__button">
				<a href="https://github.com/1019tbs?tab=repositories"
					target="_blank"><img class="contact-previw__icon"
					src="${pageContext.request.contextPath}/image/GitHub.png"
					alt="Git-hubのアイコン"</a>
				<p class="contact-preview__textTitle">GitHub</p>
				<p class="contact-preview__text">github.com/1019tbs</p>
			</div>
			<div class="contact-previw__button">
				<a href="mailto:1019tbs@gmail.com"> <img
					class="contact-previw__icon"
					src="${pageContext.request.contextPath}/image/Email.png"
					alt="E-mailのアイコン"</a>
				<p class="contact-preview__textTitle">Email</p>
				<p class="contact-preview__text">1019tbs@gmail.com</p>
			</div>
			<div class="contact-previw__button">
				<a href="${pageContext.request.contextPath}/contact"> <img
					class="contact-previw__icon"
					src="${pageContext.request.contextPath}/image/form.png"
					alt="お問い合わせフォームのアイコン"</a>
				<p class="contact-preview__textTitle">お問い合わせフォーム</p>
				<p class="contact-preview__text">フォームへ移動します。</p>
			</div>
		</section>
	</main>

	<jsp:include page="common/footer.jsp" />

</body>
</html>