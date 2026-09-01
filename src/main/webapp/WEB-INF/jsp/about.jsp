<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

	<!DOCTYPE html>

	<html lang="ja">

	<head>

		<meta charset="UTF-8">

		<meta name="viewport" content="width=device-width, initial-scale=1.0">

		<title>About | 田伏佑多のPortfolio</title>

		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/common.css">

		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/about.css">
		<link rel="icon" type="image/png" href="${pageContext.request.contextPath}/image/favicon.png">

	</head>

	<body>

		<jsp:include page="common/header.jsp" />


		<main class="about-page">


			<!-- Aboutタイトル -->
			<div class="about-page__title">

				<img src="${pageContext.request.contextPath}/image/about.png" alt="About"
					class="about-page__title-image">

			</div>


			<!-- 自己紹介 -->
			<section class="about-profile">

				<div class="about-profile__image-area">

					<img src="${pageContext.request.contextPath}/image/aboutMy.PNG" alt="田伏佑多のプロフィール写真"
						class="about-profile__image">

				</div>


				<div class="about-profile__content">

					<h1 class="about-profile__title">
						自己紹介
					</h1>

					<p class="about-profile__text">

						はじめまして。田伏佑多と申します。<br>
						<br>

						前職では、コールセンター業務や事務作業にあたる審査業務に従事し、<br>
						管理者として新人研修や進捗管理、業務改善などを担当していました。<br>
						<br>

						私が好きなことは、日常や仕事の中にある「不便」を見つけ、<br>
						より便利な方法を考えることです。<br>
						<br>

						前職でExcelの関数を活用し、作業の効率化に取り組んだことをきっかけに、<br>
						仕組みを作ることの楽しさを知りました。<br>
						<br>

						その興味が次第にプログラミングへと広がり、<br>
						現在はエンジニアを目指して、JavaやWebアプリケーション開発を中心に<br>
						日々学習しています。

					</p>

				</div>

			</section>


			<!-- 趣味 -->
			<section class="about-hobby">

				<h2 class="about-hobby__main-title">
					趣味
				</h2>


				<!-- 原付旅 -->
				<div class="about-hobby__item">

					<div class="about-hobby__image-area">

						<img src="${pageContext.request.contextPath}/image/bikeMy.PNG" alt="原付旅の写真"
							class="about-hobby__image about-hobby__image--bike">

					</div>


					<div class="about-hobby__content">

						<h3 class="about-hobby__title">
							原付旅
						</h3>

						<p class="about-hobby__text">

							昔から、細かく予定を立てずに気の向くまま出かけることが好きです。<br>
							<br>

							原付を購入したことをきっかけに、休日や少し気分転換をしたい日に、<br>
							特に目的地を決めず、福岡から県外までふらりと出かけるようになりました。<br>
							<br>

							遠くまで走ったときに、<br>
							「自分の力だけでここまで来られたんだ」と実感できる瞬間が、<br>
							とてもうれしく感じます。<br>
							<br>

							燃費が良く、あまりお金をかけずに楽しめる趣味でもあるため、<br>
							気軽な旅行や一人旅が好きな方にもおすすめです。

						</p>

					</div>

				</div>


				<!-- ドラム -->
				<div class="about-hobby__item">

					<div class="about-hobby__image-area">

						<img src="${pageContext.request.contextPath}/image/drumMy.PNG" alt="ドラム演奏中の写真"
							class="about-hobby__image about-hobby__image--drum">

					</div>


					<div class="about-hobby__content">

						<h3 class="about-hobby__title">
							ドラム
						</h3>

						<p class="about-hobby__text">

							20歳の頃に「ドラムをやってみないか」と誘われたことをきっかけに、<br>
							本格的に始めました。<br>
							<br>

							ドラムを始めると同時にバンドを組み、右も左も分からない状態から、<br>
							独学で練習を重ねました。<br>
							<br>

							以前に和太鼓を経験していたこともあり、<br>
							初めの頃は感覚を頼りに演奏していました。<br>
							<br>

							その後、「KNIGHTMILL」というバンドを結成し、<br>
							ライブ活動や楽曲制作など、さまざまな経験を積みました。<br>
							<br>

							独学だけでなく、活動を通して出会った方々からの<br>
							アドバイスや知識も取り入れながら、<br>
							本格的にバンド活動を続けてきました。<br>
							<br>

							2024年4月のワンマンライブを節目にバンドは解散しましたが、<br>
							現在もサポート演奏やイベントへの出演など、<br>
							趣味としてドラムを続けています。

						</p>


						<div class="about-hobby__youtube">

							<iframe src="https://www.youtube.com/embed/TCkYWIbBMKA" title="ドラム演奏"
								allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
								referrerpolicy="strict-origin-when-cross-origin" allowfullscreen>
							</iframe>

						</div>

					</div>

				</div>

			</section>


			<!-- トップページへ戻る -->
			<div class="about-page__back">

				<a href="${pageContext.request.contextPath}/" class="about-page__back-link">

					← トップページへ戻る

				</a>

			</div>


		</main>


		<jsp:include page="common/footer.jsp" />

	</body>

	</html>