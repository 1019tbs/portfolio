<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

	<!DOCTYPE html>

	<html lang="ja">

	<head>

		<meta charset="UTF-8">

		<meta name="viewport" content="width=device-width, initial-scale=1.0">

		<title>Work | 田伏佑多のPortfolio</title>

		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/common.css">

		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/work.css">
		<link rel="icon" type="image/png" href="${pageContext.request.contextPath}/image/favicon.png">

	</head>

	<body>

		<jsp:include page="common/header.jsp" />


		<main class="work-page">


			<!-- Workタイトル -->
			<div class="work-page__title">

				<img src="${pageContext.request.contextPath}/image/Work.png" alt="Work" class="work-page__title-image">

				<p class="work-page__introduction">

					これまでに学習やチーム開発を通して制作した、<br>
					WebサイトやWebアプリケーションをご紹介します。

				</p>

			</div>


			<!-- 制作物一覧 -->
			<section class="work-list">


				<!-- Todolist -->
				<article class="work-card">

					<div class="work-card__image-area">

						<img src="${pageContext.request.contextPath}/image/todolist.png" alt="TodoListアプリの画面"
							class="work-card__image">

					</div>


					<div class="work-card__content">

						<div class="work-card__heading">

							<p class="work-card__number">
								01
							</p>

							<div>

								<h2 class="work-card__title">
									TodoList
								</h2>

								<p class="work-card__category">
									Web Application
								</p>

							</div>

						</div>


						<p class="work-card__description">

							タスクの登録や管理を行うためのTodoListアプリです。<br>
							ログインしたユーザーごとにタスクを管理できるようにし、<br>
							期限やステータスなどの情報を登録できる仕組みを制作しました。

						</p>


						<dl class="work-card__information">

							<div class="work-card__information-row">

								<dt>使用技術</dt>

								<dd>
									Java / JSP / Servlet / PostgreSQL / HTML / CSS
								</dd>

							</div>

							<div class="work-card__information-row">

								<dt>制作区分</dt>

								<dd>
									個人制作
								</dd>

							</div>

							<div class="work-card__information-row">

								<dt>担当内容</dt>

								<dd>
									画面設計・データベース設計・実装
								</dd>

							</div>

						</dl>


						<div class="work-card__link-area">

							<a href="https://github.com/1019tbs/Todolist" target="_blank" rel="noopener noreferrer"
								class="work-card__github-link">

								GitHubでコードを見る →

							</a>

						</div>

					</div>

				</article>


				<!-- WCB Cafe -->
				<article class="work-card work-card--reverse">

					<div class="work-card__image-area">

						<img src="${pageContext.request.contextPath}/image/wcbcafe.png" alt="WCB CafeのWebサイト"
							class="work-card__image">

					</div>


					<div class="work-card__content">

						<div class="work-card__heading">

							<p class="work-card__number">
								02
							</p>

							<div>

								<h2 class="work-card__title">
									WCB Cafe
								</h2>

								<p class="work-card__category">
									Web Site
								</p>

							</div>

						</div>


						<p class="work-card__description">

							HTMLとCSSの基礎学習として制作した、<br>
							カフェをイメージしたWebサイトです。<br>
							トップページ、メニューページ、ニュースページ、<br>
							お問い合わせページを制作しました。

						</p>


						<dl class="work-card__information">

							<div class="work-card__information-row">

								<dt>使用技術</dt>

								<dd>
									HTML / CSS
								</dd>

							</div>

							<div class="work-card__information-row">

								<dt>制作区分</dt>

								<dd>
									個人制作
								</dd>

							</div>

							<div class="work-card__information-row">

								<dt>学習内容</dt>

								<dd>
									HTML構造・CSSレイアウト・レスポンシブ対応
								</dd>

							</div>

						</dl>


						<div class="work-card__link-area">

							<a href="https://github.com/1019tbs/WCBcafe" target="_blank" rel="noopener noreferrer"
								class="work-card__github-link">

								GitHubでコードを見る →

							</a>

						</div>

					</div>

				</article>


				<!-- EDT -->
				<article class="work-card">

					<div class="work-card__image-area">

						<img src="${pageContext.request.contextPath}/image/edt.png" alt="EDTアプリの画面"
							class="work-card__image">

					</div>


					<div class="work-card__content">

						<div class="work-card__heading">

							<p class="work-card__number">
								03
							</p>

							<div>

								<h2 class="work-card__title">
									EDT
								</h2>

								<p class="work-card__category">
									Java Application
								</p>

							</div>

						</div>


						<p class="work-card__description">

							Javaの学習で制作したアプリケーションです。<br>
							画面から入力された情報を受け取り、処理結果を表示する流れを通して、<br>
							Javaを使用したWebアプリケーションの基本構造を学びました。

						</p>


						<dl class="work-card__information">

							<div class="work-card__information-row">

								<dt>使用技術</dt>

								<dd>
									Java / JSP / Servlet / HTML / CSS
								</dd>

							</div>

							<div class="work-card__information-row">

								<dt>制作区分</dt>

								<dd>
									個人制作
								</dd>

							</div>

							<div class="work-card__information-row">

								<dt>学習内容</dt>

								<dd>
									Java・Servlet・JSPを使用した画面処理
								</dd>

							</div>

						</dl>


						<div class="work-card__link-area">

							<a href="https://github.com/1019tbs/EDT" target="_blank" rel="noopener noreferrer"
								class="work-card__github-link">

								GitHubでコードを見る →

							</a>

						</div>

					</div>

				</article>


				<!-- Portfolio -->
				<article class="work-card work-card--reverse">

					<div class="work-card__image-area">

						<img src="${pageContext.request.contextPath}/image/portfolio.png" alt="田伏佑多のポートフォリオサイト"
							class="work-card__image">

					</div>


					<div class="work-card__content">

						<div class="work-card__heading">

							<p class="work-card__number">
								04
							</p>

							<div>

								<h2 class="work-card__title">
									Portfolio
								</h2>

								<p class="work-card__category">
									Portfolio Site
								</p>

							</div>

						</div>


						<p class="work-card__description">

							自己紹介や制作物を伝えるために制作した、<br>
							現在ご覧いただいているポートフォリオサイトです。<br>
							親しみやすい雰囲気と、自分の好きなものが伝わるデザインを意識しました。

						</p>


						<dl class="work-card__information">

							<div class="work-card__information-row">

								<dt>使用技術</dt>

								<dd>
									Java / Spring Boot / JSP / HTML / CSS
								</dd>

							</div>

							<div class="work-card__information-row">

								<dt>制作区分</dt>

								<dd>
									個人制作
								</dd>

							</div>

							<div class="work-card__information-row">

								<dt>担当内容</dt>

								<dd>
									企画・デザイン・画像制作・コーディング
								</dd>

							</div>

						</dl>


						<div class="work-card__link-area">

							<a href="https://github.com/1019tbs/portfolio" target="_blank" rel="noopener noreferrer"
								class="work-card__github-link">

								GitHubでコードを見る →

							</a>

						</div>

					</div>

				</article>


				<!-- GroupB -->
				<article class="work-card work-card--team">

					<div class="work-card__image-area">

						<p class="work-card__team-label">
							TEAM DEVELOPMENT
						</p>

						<img src="${pageContext.request.contextPath}/image/groupb.png" alt="Honey Bloomチーム開発の画面"
							class="work-card__image">

					</div>


					<div class="work-card__content">

						<div class="work-card__heading">

							<p class="work-card__number">
								05
							</p>

							<div>

								<h2 class="work-card__title">
									Honey Bloom
								</h2>

								<p class="work-card__category">
									GroupB・チーム開発
								</p>

							</div>

						</div>


						<p class="work-card__description">

							職業訓練校のグループ課題として制作した、<br>
							蜂蜜販売店をイメージしたWebアプリケーションです。<br>
							メンバーと役割を分担し、GitHubを使用してソースコードを共有しながら、<br>
							ログイン、商品予約、お問い合わせ、管理者画面などを制作しました。

						</p>


						<dl class="work-card__information">

							<div class="work-card__information-row">

								<dt>使用技術</dt>

								<dd>
									Java / Spring Boot / JSP / PostgreSQL / HTML / CSS
								</dd>

							</div>

							<div class="work-card__information-row">

								<dt>制作区分</dt>

								<dd>
									5名でのチーム開発
								</dd>

							</div>

							<div class="work-card__information-row">

								<dt>担当内容</dt>

								<dd>
									ログイン・ログアウト機能、画面制作、共通部品、Git管理
								</dd>

							</div>

						</dl>


						<div class="work-card__link-area">

							<a href="https://github.com/1019tbs/GroupB" target="_blank" rel="noopener noreferrer"
								class="work-card__github-link">

								GitHubでコードを見る →

							</a>

						</div>

					</div>

				</article>

			</section>


			<!-- GitHub一覧 -->
			<section class="work-github">

				<img src="${pageContext.request.contextPath}/image/GitHub.png" alt="GitHubのアイコン"
					class="work-github__icon">

				<div class="work-github__content">

					<h2 class="work-github__title">
						Other Repositories
					</h2>

					<p class="work-github__text">
						その他の制作物や学習記録についても、GitHubで公開しています。
					</p>

					<a href="https://github.com/1019tbs?tab=repositories" target="_blank" rel="noopener noreferrer"
						class="work-github__link">

						GitHubのリポジトリ一覧を見る →

					</a>

				</div>

			</section>


			<!-- トップページへ戻る -->
			<div class="work-page__back">

				<a href="${pageContext.request.contextPath}/" class="work-page__back-link">

					← トップページへ戻る

				</a>

			</div>


		</main>


		<jsp:include page="common/footer.jsp" />

	</body>

	</html>