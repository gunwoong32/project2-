$(function(){
	function slider(){
			var jq_visual = $('.visual');
			var swiper = new Swiper(".mySwiper", {
            slidesPerView: "auto",
            spaceBetween: 0,
            speed: 2000,
            loop:true,
            autoplay:{
                duration: 10000
            },
            pagination: {
            	clickable: true,
            },
			on:{
				'slideChangeTransitionStart':function(e){
					var jq_el = e.$el.find('.swiper-slide-active');
					var data_title = jq_el.attr('data-title');
					var data_summary = jq_el.attr('data-summary');
					var data_img = jq_el.attr('data-img');
					jq_visual.removeClass('on');
					$('.bg_pic').css('backgroundImage','url('+data_img+')')
					$('.movie_info').html('<div class="movie_title"><strong>'+data_title+'</strong></div><div class="movie_summary">'+data_summary+'</div>');
					setTimeout(function(){
						jq_visual.addClass('on');
					},100)
					
				}
			}
        });
	}
	
	function event_slider(){
			var swiper = new Swiper(".event_slider", {
            slidesPerView: "auto",
            spaceBetween: 0,
            speed: 2000,
            loop:true,
            autoplay:{
                duration: 10000
            },
			 pagination: {
	          el: ".paginations",
	        },
        });
	}

	$.ajax({
		url : "mainlist.mega",
		success : function(data) {
			//console.log(data)
			$('.visual .swiper-wrapper').append(data);
			slider();
		},
		error: function() {
			console.log('error!!')
		}
	});
	
	event_slider();
});
