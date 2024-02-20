/*
	Stellar by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
*/

(function ($) {

	var $window = $(window),
		$body = $('body'),
		$main = $('#main');

	// Breakpoints.
	breakpoints({
		xlarge: ['1281px', '1680px'],
		large: ['981px', '1280px'],
		medium: ['737px', '980px'],
		small: ['481px', '736px'],
		xsmall: ['361px', '480px'],
		xxsmall: [null, '360px']
	});

	// Play initial animations on page load.
	$window.on('load', function () {
		window.setTimeout(function () {
			$body.removeClass('is-preload');
		}, 100);
	});

	// Nav.
	var $nav = $('#nav');

	if ($nav.length > 0) {

		// Shrink effect.
		$main
			.scrollex({
				mode: 'top',
				enter: function () {
					$nav.addClass('alt');
				},
				leave: function () {
					$nav.removeClass('alt');
				},
			});

		// Links.
		var $nav_a = $nav.find('a');

		$nav_a
			.scrolly({
				speed: 1000,
				offset: function () { return $nav.height(); }
			})
			.on('click', function () {

				var $this = $(this);

				// External link? Bail.
				if ($this.attr('href').charAt(0) != '#')
					return;

				// Deactivate all links.
				$nav_a
					.removeClass('active')
					.removeClass('active-locked');

				// Activate link *and* lock it (so Scrollex doesn't try to activate other links as we're scrolling to this one's section).
				$this
					.addClass('active')
					.addClass('active-locked');

			})
			.each(function () {

				var $this = $(this),
					id = $this.attr('href'),
					$section = $(id);

				// No section for this link? Bail.
				if ($section.length < 1)
					return;

				// Scrollex.
				$section.scrollex({
					mode: 'middle',
					initialize: function () {

						// Deactivate section.
						if (browser.canUse('transition'))
							$section.addClass('inactive');

					},
					enter: function () {

						// Activate section.
						$section.removeClass('inactive');

						// No locked links? Deactivate all links and activate this section's one.
						if ($nav_a.filter('.active-locked').length == 0) {

							$nav_a.removeClass('active');
							$this.addClass('active');

						}

						// Otherwise, if this section's link is the one that's locked, unlock it.
						else if ($this.hasClass('active-locked'))
							$this.removeClass('active-locked');

					}
				});

			});

	}

	// Scrolly.
	$('.scrolly').scrolly({
		speed: 1000
	});



	
	// 배너 슬다이드==========================================================

	document.addEventListener('DOMContentLoaded', function () {
		const slides = document.querySelector('.slides');
		const slideItems = document.querySelectorAll('.slide');
		const totalSlides = slideItems.length;
		let currentIndex = 1;

		// Clone the first and last slides and append them to the slider
		const firstClone = slideItems[0].cloneNode(true);
		const lastClone = slideItems[totalSlides - 1].cloneNode(true);
		slides.appendChild(firstClone);
		slides.insertBefore(lastClone, slideItems[0]);

		// Set initial position to the first clone
		slides.style.transform = `translateX(${-currentIndex * 100}%)`;

		setInterval(() => {
			currentIndex++;
			slides.style.transition = 'transform 0.5s ease-in-out';
			slides.style.transform = `translateX(${-currentIndex * 100}%)`;

			// Move to the cloned slide without transition for seamless loop
			if (currentIndex === totalSlides + 1) {
				setTimeout(() => {
					slides.style.transition = 'none';
					currentIndex = 1;
					slides.style.transform = `translateX(${-currentIndex * 100}%)`;
				}, 500); // Adjust this delay to match your transition duration
			}
		}, 3000);
	});

	// 도넛그래프=======================================================================================
	$(window).ready(function () {
		draw(80, '.pie-chart1', '#8cc9f0'); /* 도넛 색상 변경 */
	});

	function draw(max, classname, colorname) {
		var i = 1;
		var func1 = setInterval(function () {
			if (i < max) {
				color1(i, classname, colorname);
				i++;
			} else {
				clearInterval(func1);
			}
		}, 10);
	}
	function color1(i, classname, colorname) {
		$(classname).css({
			"background": "conic-gradient(" + colorname + " 0% " + i + "%, #ffffff " + i + "% 100%)"
		});
	}


	//체크박스 ==========================================================================
	

	// function handleRadioClick(clickedId) {
	// 	var radios = document.querySelectorAll('input[type="radio"]');
	// 	radios.forEach(function (radio) {
	// 		if (radio.id !== clickedId) {
	// 			radio.checked = false;
	// 		}
	// 	});

	// 	// 첫 번째 라디오 버튼이 클릭되면 보이도록 설정
	// 	var firstRadio = document.getElementById('painCheckbox1');
	// 	if (clickedId === 'painCheckbox1') {
	// 		firstRadio.classList.remove('initial-hidden');
	// 	} else {
	// 		firstRadio.classList.add('initial-hidden');
	// 	}
	// }

	// // 페이지 로드시 라디오 버튼 초기화
	// window.onload = function () {
	// 	var radios = document.querySelectorAll('input[type="radio"]');
	// 	radios.forEach(function (radio) {
	// 		radio.checked = false;
	// 	});
	// };
	
	$(function(){
		$('#uploadBtn').on('click',function(){
			uploadFile();
		});
	});
	function uploadFile(){
		var form = $('#uploadForm')[0];
		var formData = new FormData(form);
		
		$.ajax({
			url : 'url',
			type : 'POST',
			data : formData,
			contentType : false,
			processData : false
		}).done(function(data){
			callback(data);
		});
	}
	
	
	
	
	
})(jQuery);