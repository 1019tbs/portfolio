document.addEventListener(
	"DOMContentLoaded",
	function () {

		const bird =
			document.querySelector(
				".contact-thankyou__images"
			);

		const box =
			document.querySelector(
				".contact-thankyou__box"
			);


		/* 鳥を表示 */
		if (bird) {

			setTimeout(
				function () {

					bird.classList.add(
						"is-visible"
					);

				},
				200
			);


			/* 登場後にふわふわ動かす */
			setTimeout(
				function () {

					bird.classList.add(
						"is-floating"
					);

				},
				1400
			);

		}


		/* メッセージボックスを表示 */
		if (box) {

			setTimeout(
				function () {

					box.classList.add(
						"is-visible"
					);

				},
				700
			);

		}

	}
);