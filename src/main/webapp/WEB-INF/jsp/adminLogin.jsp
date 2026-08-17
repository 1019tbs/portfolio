<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ja">

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>管理者ログイン | 田伏佑多のPortfolio</title>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/common.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/admin.css">

<link rel="icon" type="image/png"
	href="${pageContext.request.contextPath}/image/favicon.png">

</head>

<body>

	<jsp:include page="common/header.jsp" />

	<main class="admin-login-page">

		<section class="admin-login">

			<div class="admin-login__icon-area">

				<img class="admin-login__icon"
					src="${pageContext.request.contextPath}/image/admin_icon.png"
					alt="管理者画面">

			</div>

			<div class="admin-login__box">

				<h1 class="admin-login__title">
					管理者ログイン
				</h1>

				<p class="admin-login__description">
					管理者IDとパスワードを入力してください。
				</p>


				<!-- ログインエラー -->
				<%
					String errorMsg =
							(String) request.getAttribute("errorMsg");

					if (errorMsg != null) {
				%>

				<div class="admin-login__error">

					<%=errorMsg%>

				</div>

				<%
					}
				%>


				<form class="admin-login__form"
					action="${pageContext.request.contextPath}/admin/login"
					method="post">


					<!-- 管理者ID -->
					<div class="admin-login__group">

						<label class="admin-login__label"
							for="username">
							管理者ID
						</label>

						<input class="admin-login__input"
							type="text"
							id="username"
							name="username"
							placeholder="管理者IDを入力"
							autocomplete="username"
							required>

					</div>


					<!-- パスワード -->
					<div class="admin-login__group">

						<label class="admin-login__label"
							for="password">
							パスワード
						</label>

						<input class="admin-login__input"
							type="password"
							id="password"
							name="password"
							placeholder="パスワードを入力"
							autocomplete="current-password"
							required>

					</div>


					<!-- ログインボタン -->
					<div class="admin-login__buttons">

						<button class="admin-login__submit"
							type="submit">
							ログイン
						</button>

					</div>

				</form>


				<div class="admin-login__back">

					<a href="${pageContext.request.contextPath}/"
						class="admin-login__back-link">

						← トップページへ戻る

					</a>

				</div>

			</div>

		</section>

	</main>

	<jsp:include page="common/footer.jsp" />

</body>

</html>