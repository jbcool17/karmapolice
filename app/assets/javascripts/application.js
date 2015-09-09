// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bxslider
//= require turbolinks
//= require_tree .
//= require d3

//INIT SLIDER
	$(".bxslider").bxSlider({auto: true});

	//REMOVE BoxShadow From Slider
	
	$('.bx-wrapper .bx-viewport').css('box-shadow', '0 0 5px white');
	$('.bx-wrapper .bx-viewport').css('text-align', 'center');
	
	$('img').css('margin-left', 'auto');
	$('img').css('margin-right', 'auto');