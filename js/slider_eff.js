$(document).ready(function(){
	$("[id*='slidingDiv']").hide();
	//$(".show_hide").show();
	
	$("[id*='show_hide']").click(function(){
		var current_id = $(this).attr("id");
		
		var pattern = /[0-9]+/g;
		var matches = current_id.match(pattern);
		var strID="[id='slidingDiv"+matches+"']";
		//$("[id*='slidingDiv']").slideToggle();
		$("[id*='slidingDiv']").slideUp(200);
		//$("[id*='slidingDiv']").hide();
		//$("[id*='slidingDiv']").fadeIn(400);
		//$(strID).slideUp(300).delay(500);
		$(strID).slideToggle();	
		//$(strID).show('slow');
		//$(strID).show();	
		//$("[id*='slidingDiv']").slideToggle();
	});
	
	$("[id*='slidehide']").click(function(){
		var current_id = $(this).attr("id");
		
		var pattern = /[0-9]+/g;
		var matches = current_id.match(pattern);
		var strID="[id='slidingDiv"+matches+"']";
		//$("[id*='slidingDiv']").slideToggle();
		$("[id*='slidingDiv']").slideUp(1000);
		//$("[id*='slidingDiv']").hide();
		//$("[id*='slidingDiv']").fadeIn(400);
		//$(strID).slideUp(300).delay(500);
		//$(strID).slideToggle();	
		//$(strID).show('slow');
		//$(strID).show();	
		//$("[id*='slidingDiv']").slideToggle();
	});
			
});
$("document").ready(function() {
				$("[class*='show_hide']").click(function(){
										   
					$('html, body').animate({
						scrollTop: $(".bot_mainbtn").offset().top
					}, 2000);				   
					 
										   
				 });
});