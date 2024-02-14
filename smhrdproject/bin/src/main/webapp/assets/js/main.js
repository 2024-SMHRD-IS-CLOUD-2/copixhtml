/*
	Astral by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
*/

(function($) {

	var $window = $(window),
		$body = $('body'),
		$wrapper = $('#wrapper'),
		$main = $('#main'),
		$panels = $main.children('.panel'),
		$nav = $('#nav'), $nav_links = $nav.children('a');

	// Breakpoints.
		breakpoints({
			xlarge:  [ '1281px',  '1680px' ],
			large:   [ '981px',   '1280px' ],
			medium:  [ '737px',   '980px'  ],
			small:   [ '361px',   '736px'  ],
			xsmall:  [ null,      '360px'  ]
		});

	// Play initial animations on page load.
		$window.on('load', function() {
			window.setTimeout(function() {
				$body.removeClass('is-preload');
			}, 100);
		});

	// Nav.
		$nav_links
			.on('click', function(event) {

				var href = $(this).attr('href');

				// Not a panel link? Bail.
					if (href.charAt(0) != '#'
					||	$panels.filter(href).length == 0)
						return;

				// Prevent default.
					event.preventDefault();
					event.stopPropagation();

				// Change panels.
					if (window.location.hash != href)
						window.location.hash = href;

			});

	// Panels.

		// Initialize.
			(function() {

				var $panel, $link;

				// Get panel, link.
					if (window.location.hash) {

				 		$panel = $panels.filter(window.location.hash);
						$link = $nav_links.filter('[href="' + window.location.hash + '"]');

					}

				// No panel/link? Default to first.
					if (!$panel
					||	$panel.length == 0) {

						$panel = $panels.first();
						$link = $nav_links.first();

					}

				// Deactivate all panels except this one.
					$panels.not($panel)
						.addClass('inactive')
						.hide();

				// Activate link.
					$link
						.addClass('active');

				// Reset scroll.
					$window.scrollTop(0);

			})();

		// Hashchange event.
			$window.on('hashchange', function(event) {

				var $panel, $link;

				// Get panel, link.
					if (window.location.hash) {

				 		$panel = $panels.filter(window.location.hash);
						$link = $nav_links.filter('[href="' + window.location.hash + '"]');

						// No target panel? Bail.
							if ($panel.length == 0)
								return;

					}

				// No panel/link? Default to first.
					else {

						$panel = $panels.first();
						$link = $nav_links.first();

					}

				// Deactivate all panels.
					$panels.addClass('inactive');

				// Deactivate all links.
					$nav_links.removeClass('active');

				// Activate target link.
					$link.addClass('active');

				// Set max/min height.
					$main
						.css('max-height', $main.height() + 'px')
						.css('min-height', $main.height() + 'px');

				// Delay.
					setTimeout(function() {

						// Hide all panels.
							$panels.hide();

						// Show target panel.
							$panel.show();

						// Set new max/min height.
							$main
								.css('max-height', $panel.outerHeight() + 'px')
								.css('min-height', $panel.outerHeight() + 'px');

						// Reset scroll.
							$window.scrollTop(0);

						// Delay.
							window.setTimeout(function() {

								// Activate target panel.
									$panel.removeClass('inactive');

								// Clear max/min height.
									$main
										.css('max-height', '')
										.css('min-height', '');

								// IE: Refresh.
									$window.triggerHandler('--refresh');

								// Unlock.
									locked = false;

							}, (breakpoints.active('small') ? 0 : 500));

					}, 250);

			});

	// IE: Fixes.
		if (browser.name == 'ie') {

			// Fix min-height/flexbox.
				$window.on('--refresh', function() {

					$wrapper.css('height', 'auto');

					window.setTimeout(function() {

						var h = $wrapper.height(),
							wh = $window.height();

						if (h < wh)
							$wrapper.css('height', '100vh');

					}, 0);

				});

				$window.on('resize load', function() {
					$window.triggerHandler('--refresh');
				});

			// Fix intro pic.
				$('.panel.intro').each(function() {

					var $pic = $(this).children('.pic'),
						$img = $pic.children('img');

					$pic
						.css('background-image', 'url(' + $img.attr('src') + ')')
						.css('background-size', 'cover')
						.css('background-position', 'center');

					$img
						.css('visibility', 'hidden');

				});

		}
		
	
		
		
		//////////////////////////////

		$(document).ready(function() {
			// 게시물 카운터
			var postCount = 0;
		
			// 좋아요 카운트를 저장하기 위한 객체
			var likeCounts = {};
		
			// 폼 제출 시
			$('#post-form').on('submit', function(event) {
				event.preventDefault(); // 기본 동작 방지
		
				var fileInput = $('#file-upload')[0].files[0]; // 파일 입력 가져오기
				var caption = $('#caption').val(); // 입력된 캡션 가져오기
		
				// 파일이 선택되었는지 확인
				if (fileInput) {
					// 파일 업로드 함수 호출
					uploadFile(fileInput, caption);
				} else {
					alert('파일을 선택하세요.');
				}
			});
		
			// 파일 업로드 함수
			function uploadFile(file, caption) {
				var reader = new FileReader(); // 파일을 읽기 위한 FileReader 객체 생성
		
				// 파일을 읽은 후 실행되는 콜백 함수
				reader.onload = function(event) {
					var imageUrl = event.target.result; // 이미지 URL 가져오기
					var postId = 'post_' + postCount++; // 고유한 게시물 ID 생성
		
					// 업로드한 이미지와 게시글, 댓글 입력 폼 및 댓글 목록을 출력
					var postItem = '<li class="post-item" id="' + postId + '">';
					postItem += '<img src="' + imageUrl + '" style="max-width: 200px;"><br>';
					postItem += '<div class="comment-section">';
					postItem += '<textarea class="comment-input" placeholder="댓글을 입력하세요..." rows="2" cols="50"></textarea><br>';
					postItem += '<button class="like-btn" data-caption="' + caption + '" data-liked="false">좋아요</button> ';
					postItem += '<span class="like-count">0</span>';
					postItem += '<button class="comment-submit" type="button">댓글 작성</button>';
					postItem += '<ul class="comments-list"></ul>'; // 댓글 목록
					postItem += '</div></li>';
		
					// 게시물 목록에 게시물 추가
					$('#post-list').append(postItem);
		
					// 좋아요 카운트 초기화
					likeCounts[postId] = 0;

					
          		  // 입력란 초기화
          		 	 $('#file-upload').val('');
          	 		 $('#caption').val('');
				};
		
				// 파일을 읽기
				reader.readAsDataURL(file);
			}
		
			// 좋아요 버튼 클릭 이벤트
			$(document).on('click', '.like-btn', function() {
				var postId = $(this).closest('.post-item').attr('id');
				var $likeCount = $(this).siblings('.like-count');
				var isLiked = $(this).data('liked') === 'true';
		
				if (!isLiked) {
					likeCounts[postId]++;
					$likeCount.text(likeCounts[postId]);
					$(this).data('liked', 'true').text('좋아요 취소');
				} else {
					likeCounts[postId]--;
					$likeCount.text(likeCounts[postId]);
					$(this).data('liked', 'false').text('좋아요');
				}
			});
		
			// 댓글 작성 버튼 클릭 시
			$(document).on('click', '.comment-submit', function() {
				var $commentInput = $(this).siblings('.comment-input');
				var comment = $commentInput.val().trim();
				if (comment !== '') {
					var $commentsList = $(this).siblings('.comments-list');
					var $newComment = $('<li>').text(comment);
					$commentsList.append($newComment);
					$commentInput.val('');
				}

				$('#file-upload').val('');
				$('#caption').val('');
			});
		});

/////////////////////////////////////////////////////

// testResultBtn에 클릭 이벤트 리스너 추가
document.getElementById('testResultBtn').addEventListener('click', function() {
    // 여기에 Mediapipe를 통해 얻은 문자 결과값을 가져오는 Python 코드를 실행하여, 결과를 result 변수에 할당합니다.
    var result = "Python Mediapipe로부터 얻은 결과입니다."; // 임시 문자열, 실제로는 Python으로부터 얻은 값으로 대체되어야 합니다.
    
    // 결과를 화면에 출력
    document.getElementById('resultArea').innerText = result;

    // 새로운 버튼 영역을 표시
    document.getElementById('newTestButtons').style.display = 'block';
});

// NewTest 버튼에 클릭 이벤트 리스너 추가
document.getElementById('newTestBtn').addEventListener('click', function() {
});

// Test 결과 보러가기 버튼에 클릭 이벤트 리스너 추가
document.getElementById('goToTestResultBtn').addEventListener('click', function() {
});


// 프로필사진 변경

$(document).ready(function() {
	// 프로필 사진 변경 버튼 클릭 시
	$("button").click(function() {
	  // 파일 선택을 위한 input 태그 생성
	  var input = $("<input>").attr("type", "file").change(function() {
		// 파일이 선택되었을 때 실행되는 함수
		var file = this.files[0]; // 선택된 파일 가져오기
		var filePath = URL.createObjectURL(file); // 파일 경로 가져오기
		var reader = new FileReader();
		reader.onload = function(e) {
		  // 파일을 읽어서 이미지 변경
		  $("#profilePicture").attr("src", e.target.result);
		}
		reader.readAsDataURL(file); // 파일을 data URL로 읽기
	  });
	  input.trigger("click"); // input 태그 클릭 이벤트 발생시키기
	    // Java로 파일 경로 전송
		$.ajax({
			type: "POST",
			url: "/your-java-endpoint",
			data: { filePath: filePath },
			success: function(response) {
			  // 성공적으로 처리된 후의 동작
			  console.log("파일 경로 전송 완료");
			},
			error: function(xhr, status, error) {
			  // 오류 처리
			  console.log("파일 경로 전송 실패");
			}
		  });
	});
  });




})(jQuery);