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
<link rel="icon" type="image/png"
	href="${pageContext.request.contextPath}/image/favicon.png">
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

				<a class="work-preview__item"
					href="${pageContext.request.contextPath}/work#todolist"> <img
					src="${pageContext.request.contextPath}/image/TODOLIST.png"
					alt="TodoListアプリの画面">

					<p class="work-preview__item-title">TodoList</p>

				</a> <a class="work-preview__item"
					href="${pageContext.request.contextPath}/work#wcbcafe"> <img
					src="${pageContext.request.contextPath}/image/WCBcafe.png"
					alt="WCB CafeのWebサイト">

					<p class="work-preview__item-title">WCB Cafe</p>

				</a> <a class="work-preview__item"
					href="${pageContext.request.contextPath}/work#edt"> <img
					src="${pageContext.request.contextPath}/image/EDT.png"
					alt="EDTアプリの画面">

					<p class="work-preview__item-title">EDT</p>

				</a> <a class="work-preview__item"
					href="${pageContext.request.contextPath}/work#portfolio"> <img
					src="${pageContext.request.contextPath}/image/portfolio.png"
					alt="田伏佑多のポートフォリオサイト">

					<p class="work-preview__item-title">Portfolio</p>

				</a> <a class="work-preview__item"
					href="${pageContext.request.contextPath}/work#honey-bloom"> <img
					src="${pageContext.request.contextPath}/image/GropB.png"
					alt="Honey Bloomチーム開発の画面">

					<p class="work-preview__item-title">Honey Bloom</p>

				</a>

			</div>
		</section>
		<section class="contact-preview">

			<div class="contact-preview__title">
				<img class="contact-preview__image"
					src="${pageContext.request.contextPath}/image/Contact.png"
					alt="Contact">
			</div>

			<div class="contact-preview__buttons">

				<div class="contact-preview__button">
					<a href="https://github.com/1019tbs?tab=repositories"
						target="_blank" rel="noopener noreferrer"> <img
						class="contact-preview__icon"
						src="${pageContext.request.contextPath}/image/GitHub.png"
						alt="GitHubのアイコン">
					</a>

					<p class="contact-preview__textTitle">GitHub</p>
					<p class="contact-preview__text">github.com/1019tbs</p>
				</div>

				<div class="contact-preview__button">
					<a href="mailto:1019tbs@gmail.com"> <img
						class="contact-preview__icon"
						src="${pageContext.request.contextPath}/image/Email.png"
						alt="E-mailのアイコン">
					</a>

					<p class="contact-preview__textTitle">Email</p>
					<p class="contact-preview__text">1019tbs@gmail.com</p>
				</div>

				<div class="contact-preview__button">
					<a href="${pageContext.request.contextPath}/contact"> <img
						class="contact-preview__icon"
						src="${pageContext.request.contextPath}/image/form.png"
						alt="お問い合わせフォームのアイコン">
					</a>

					<p class="contact-preview__textTitle">お問い合わせフォーム</p>
					<p class="contact-preview__text">フォームへ移動します。</p>
				</div>

			</div>

		</section>
				</section>

		<!-- 管理者画面へのリンク -->
		<section class="admin-preview">

			<a href="${pageContext.request.contextPath}/admin/login"
				class="admin-preview__link">

				<img class="admin-preview__icon"
					src="${pageContext.request.contextPath}/image/admin_icon.png"
					alt="管理者画面">

			</a>

		</section>
	</main>

	<jsp:include page="common/footer.jsp" />

</body>

</html>