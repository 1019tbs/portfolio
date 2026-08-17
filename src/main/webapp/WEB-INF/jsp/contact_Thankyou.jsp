<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ja">

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>お問い合わせ完了 | 田伏佑多のPortfolio</title>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/common.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/contact.css">

<link rel="icon" type="image/png"
	href="${pageContext.request.contextPath}/image/favicon.png">

</head>

<body>

	<jsp:include page="common/header.jsp" />

	<main class="contact-page">
		<div class="contact-thankyou__images">
			<img src="${pageContext.request.contextPath }/image/Thankyoubird.png"
				alt="お問い合わせありがとうございました">
		</div>

		<section class="contact-thankyou">

			<div class="contact-thankyou__box">

				<h1 class="contact-thankyou__title">お問い合わせありがとうございました</h1>

				<p class="contact-thankyou__message">
					お問い合わせ内容を受け付けました。<br> 内容を確認のうえ、必要に応じてご連絡いたします。
				</p>

				<p class="contact-thankyou__message">
					この度はポートフォリオをご覧いただき、<br> 誠にありがとうございました。
				</p>

				<div class="contact-thankyou__buttons">

					<a href="${pageContext.request.contextPath}/"
						class="contact-thankyou__button"> トップページへ戻る </a>

				</div>

			</div>

		</section>

	</main>

	<jsp:include page="common/footer.jsp" />
	<script src="${pageContext.request.contextPath}/js/contactThankyou.js"></script>

</body>

</html>