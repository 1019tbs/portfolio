<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<!DOCTYPE html>
<html lang="ja">

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>お問い合わせ一覧 | 管理者画面</title>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/common.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/admin.css">

<link rel="icon" type="image/png"
	href="${pageContext.request.contextPath}/image/favicon.png">

</head>

<body>

	<jsp:include page="common/header.jsp" />


	<main class="admin-contact-page">

		<section class="admin-contact">

			<!-- タイトル -->
			<div class="admin-contact__heading">

				<img class="admin-contact__icon"
					src="${pageContext.request.contextPath}/image/admin_icon.png"
					alt="管理者画面">

				<div>

					<h1 class="admin-contact__title">
						お問い合わせ一覧
					</h1>

					<p class="admin-contact__description">
						Contactフォームから送信されたお問い合わせを確認できます。
					</p>

				</div>

			</div>


			<!-- お問い合わせが0件の場合 -->
			<c:if test="${empty contactList}">

				<div class="admin-contact__empty">

					<p>
						現在、お問い合わせはありません。
					</p>

				</div>

			</c:if>


			<!-- お問い合わせ一覧 -->
			<c:if test="${not empty contactList}">

				<div class="admin-contact__list">

					<c:forEach var="contact"
						items="${contactList}">

						<article class="admin-contact-card">

							<div class="admin-contact-card__header">

								<h2 class="admin-contact-card__subject">
									<c:out value="${contact.subject}" />
								</h2>

								<c:if test="${not empty contact.category}">

									<span class="admin-contact-card__category">

										<c:choose>

											<c:when test="${contact.category == 'portfolio'}">
												ポートフォリオについて
											</c:when>

											<c:when test="${contact.category == 'application'}">
												制作物について
											</c:when>

											<c:when test="${contact.category == 'recruit'}">
												採用・お仕事について
											</c:when>

											<c:otherwise>
												その他
											</c:otherwise>

										</c:choose>

									</span>

								</c:if>

							</div>


							<div class="admin-contact-card__info">

								<div class="admin-contact-card__row">

									<span class="admin-contact-card__label">
										お名前
									</span>

									<span class="admin-contact-card__value">
										<c:out value="${contact.name}" />
									</span>

								</div>


								<div class="admin-contact-card__row">

									<span class="admin-contact-card__label">
										メールアドレス
									</span>

									<span class="admin-contact-card__value">

										<a href="mailto:${contact.email}">
											<c:out value="${contact.email}" />
										</a>

									</span>

								</div>

							</div>


							<div class="admin-contact-card__message">

								<p class="admin-contact-card__message-title">
									お問い合わせ内容
								</p>

								<p class="admin-contact-card__message-text">
									<c:out value="${contact.message}" />
								</p>

							</div>

						</article>

					</c:forEach>

				</div>

			</c:if>


			<!-- 管理者メニュー -->
			<div class="admin-contact__buttons">

				<a href="${pageContext.request.contextPath}/"
					class="admin-contact__home">
					トップページへ戻る
				</a>

				<a href="${pageContext.request.contextPath}/admin/logout"
					class="admin-contact__logout">
					ログアウト
				</a>

			</div>

		</section>

	</main>


	<jsp:include page="common/footer.jsp" />

</body>

</html>