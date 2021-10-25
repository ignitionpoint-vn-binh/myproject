$(document).ready(function(){


	$("#home").click(function() {
    	$('html,body').animate({
        	scrollTop: $(".background_contant").offset().top - 70},'slow');
	});
	$("#about").click(function(){
		$("html,body").animate({
			scrollTop: $(".text1").offset().top - 100},'slow');
	});
	$("#services").click(function(){
		$("html,body").animate({
			scrollTop: $(".services").offset().top - 270},'slow');
	});
	$("#team").click(function(){
		$("html,body").animate({
			scrollTop: $(".text5").offset().top - 70},'slow');
	});
	$("#port").click(function(){
		$("html,body").animate({
			scrollTop: $("#ourport").offset().top - 70},'slow');
	});
	$("#contact").click(function(){
		$("html,body").animate({
			scrollTop: $(".contact").offset().top - 270},'slow');
	});
	$(window).scroll(function() {
		if($(window).scrollTop() >= $('#header2').offset().top){
			$('.header').css('height','70px')
			$('.header_2 li').css('height','70px')
			$('.header_2 li').css('line-height','70px')
			$('.header_1').css('line-height','70px')
		} else if($(window).scrollTop() < $('#header2').offset().top){
			$('.header').css('height','100px')
			$('.header_2 li').css('height','100px')
			$('.header_2 li').css('line-height','100px')
			$('.header_1').css('line-height','100px')
		}
	})
	$(".scroll_down").click(function(){
		$("html,body").animate({
			scrollTop: $(".text1").offset().top - 100},'slow');
	});
	// back to top 
	$(window).scroll(function() {
    	if ($(window).scrollTop() >= $('.scroll_down').offset().top){
        	$('.scroll_up').fadeIn();
    	} else {
        	$('.scroll_up').fadeOut();}
    });
	$(".scroll_up").click(function() {
		$('html,body').animate({scrollTop: 0},1400);
	}); 	
})

