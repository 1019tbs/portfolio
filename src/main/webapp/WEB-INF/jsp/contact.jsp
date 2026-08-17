<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ja">

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Contact | 田伏佑多のPortfolio</title>

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

		<!-- Contactタイトル -->
		<section class="contact-heading">

			<img class="contact-heading__image"
				src="${pageContext.request.contextPath}/image/Contact.png"
				alt="Contact">

			<p class="contact-heading__text">
				ご覧いただきありがとうございます。<br> ご質問やご連絡がございましたら、以下のフォームからお問い合わせください。
			</p>

		</section>


		<!-- 連絡方法 -->
		<section class="contact-methods">

			<h2 class="contact-methods__title">Contact Information</h2>

			<div class="contact-methods__list">

				<!-- GitHub -->
				<a class="contact-method-card"
					href="https://github.com/1019tbs?tab=repositories" target="_blank"
					rel="noopener noreferrer"> <img
					class="contact-method-card__icon"
					src="${pageContext.request.contextPath}/image/GitHub.png"
					alt="GitHubのアイコン">

					<div class="contact-method-card__body">

						<p class="contact-method-card__title">GitHub</p>

						<p class="contact-method-card__text">github.com/1019tbs</p>

					</div>

				</a>


				<!-- Email -->
				<a class="contact-method-card" href="mailto:1019tbs@gmail.com">

					<img class="contact-method-card__icon"
					src="${pageContext.request.contextPath}/image/Email.png"
					alt="メールのアイコン">

					<div class="contact-method-card__body">

						<p class="contact-method-card__title">Email</p>

						<p class="contact-method-card__text">1019tbs@gmail.com</p>

					</div>

				</a>

			</div>

		</section>


		<!-- お問い合わせフォーム -->
		<section class="contact-form-section">

			<div class="contact-form-section__heading">

				<img class="contact-form-section__icon"
					src="${pageContext.request.contextPath}/image/form.png"
					alt="お問い合わせフォームのアイコン">

				<div>

					<h2 class="contact-form-section__title">お問い合わせフォーム</h2>

					<p class="contact-form-section__description">
						必要事項をご入力のうえ、送信ボタンを押してください。</p>

				</div>

			</div>


<!--			 エラーメッセージ -->
<!--			<c:if test="${not empty errorMsg}">-->

<!--				<div class="contact-message contact-message--error">-->
<!--					${errorMsg}</div>-->

<!--			</c:if>-->


<!--			 送信完了メッセージ -->
<!--			<c:if test="${not empty successMsg}">-->

<!--				<div class="contact-message contact-message--success">-->
<!--					${successMsg}</div>-->

<!--			</c:if>-->


			<form class="contact-form"
				action="${pageContext.request.contextPath}/contact/submit"
				method="post">

				<!-- お名前 -->
				<div class="contact-form__group">

					<label class="contact-form__label" for="name"> お名前 <span
						class="contact-form__required"> 必須 </span>

					</label> <input class="contact-form__input" type="text" id="name"
						name="name" value="${name}" placeholder="例：田伏 佑多" maxlength="50"
						autocomplete="name" required>

				</div>


				<!-- メールアドレス -->
				<div class="contact-form__group">

					<label class="contact-form__label" for="email"> メールアドレス <span
						class="contact-form__required"> 必須 </span>

					</label> <input class="contact-form__input" type="email" id="email"
						name="email" value="${email}" placeholder="例：example@gmail.com"
						maxlength="255" autocomplete="email" required>

				</div>


				<!-- 件名 -->
				<div class="contact-form__group">

					<label class="contact-form__label" for="subject"> 件名 <span
						class="contact-form__required"> 必須 </span>

					</label> <input class="contact-form__input" type="text" id="subject"
						name="subject" value="${subject}" placeholder="お問い合わせ内容の件名"
						maxlength="100" required>

				</div>


				<!-- お問い合わせ種別 -->
				<div class="contact-form__group">

					<label class="contact-form__label" for="category"> お問い合わせ種別
					</label> <select class="contact-form__select" id="category" name="category">

						<option value="">選択してください</option>

						<option value="portfolio"
							${category == 'portfolio' ? 'selected' : ''}>
							ポートフォリオについて</option>

						<option value="application"
							${category == 'application' ? 'selected' : ''}>制作物について</option>

						<option value="recruit" ${category == 'recruit' ? 'selected' : ''}>
							採用・お仕事について</option>

						<option value="other" ${category == 'other' ? 'selected' : ''}>
							その他</option>

					</select>

				</div>


				<!-- お問い合わせ内容 -->
				<div class="contact-form__group">

					<label class="contact-form__label" for="message"> お問い合わせ内容

						<span class="contact-form__required"> 必須 </span>

					</label>

					<textarea class="contact-form__textarea" id="message"
						name="message" rows="9" maxlength="1000"
						placeholder="お問い合わせ内容をご入力ください。" required>${message}</textarea>

					<p class="contact-form__note">1,000文字以内でご入力ください。</p>

				</div>


				<!-- 個人情報確認 -->
				<div class="contact-form__agreement">

					<label class="contact-form__checkbox-label"> <input
						class="contact-form__checkbox" type="checkbox" name="agreement"
						value="true" required> <span>
							入力した内容を確認し、送信することに同意します。 </span>

					</label>

				</div>


				<!-- ボタン -->
				<div class="contact-form__buttons">

					<button class="contact-form__reset" type="reset">入力内容を消去</button>

					<button class="contact-form__submit" type="submit">送信する →

					</button>

				</div>

			</form>

		</section>


		<!-- トップページへ戻る -->
		<div class="contact-page__back">

			<a href="${pageContext.request.contextPath}/"
				class="contact-page__back-link"> ← トップページへ戻る </a>

		</div>

	</main>

	<jsp:include page="common/footer.jsp" />

</body>

</html>