<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

	<header class="site-header">

		<div class="site-header__inner">

			<!-- Home -->
			<a class="site-header__home" href="${pageContext.request.contextPath}/">

				<span class="site-header__home-text">
					Home
				</span>

			</a>

			<!-- ナビゲーション -->
			<nav class="site-navigation" aria-label="メインナビゲーション">

				<ul class="site-navigation__list">

					<li class="site-navigation__item">

						<a class="site-navigation__link" href="${pageContext.request.contextPath}/about">

							About

						</a>

					</li>

					<li class="site-navigation__item">

						<a class="site-navigation__link" href="${pageContext.request.contextPath}/work">

							Work

						</a>

					</li>

					<li class="site-navigation__item">

						<a class="site-navigation__link" href="${pageContext.request.contextPath}/contact">

							Contact

						</a>

					</li>

				</ul>

			</nav>

		</div>

	</header>