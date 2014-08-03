$(document).ready(function(){

	var section_height = $(window).height() * 0.65;

	$('section').css({'height': section_height + 'px'})

	$('section#about').css({'visibility': 'hidden'});

	$('.level1').hover(
		function() {$(this).css({'background-color': 'rgba(255, 255, 255, 0.8)'});
		$(this).find('li.sub').css({'visibility': 'visible'})
	}, 
		function() {$(this).css({'background-color': 'rgba(255, 255, 255, 0)'});
		$(this).find('li.sub').css({'visibility': 'hidden'})
	})

	$('li#about').click(function(){
		$('section').css({'visibility': 'hidden'})
		$('section#about').css({'visibility': 'visible'})
	})

	$(window).scroll(function() {
		if($(this).scroll() > 100) {
			$('section').hide();
		}
	})
})