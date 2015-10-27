

$(document).ready(function() {
	
	//Center Image in Slider
	$('img').css('border-radius', '20px');
	$('img').css('margin', 'auto');
	

	$('.slider').slick({
  		autoplay: true,
  		autoplaySpeed: 2000
	});

    console.log("loaded-code");

});