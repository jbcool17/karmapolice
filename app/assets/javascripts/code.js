

$(document).ready(function() {

	
	//INIT SLIDER
	$(".bxslider").bxSlider({auto: true});

	//REMOVE BoxShadow From Slider
	$('.bx-wrapper .bx-viewport').css('box-shadow', '0 0 5px white');
	$('.bx-wrapper .bx-viewport').css('text-align', 'center');

	
	//Center Image in Slider
	$('img').css('border-radius', '20px');
	$('img').css('margin', 'auto');
	

	$('.slider').slick({
  		autoplay: true,
  		autoplaySpeed: 2000
	});

    console.log("loaded-code");

});