console.log("The script loaded!");


$( document ).ready(function() {
    console.log( "ready!" );
    $(".colors").click(function(){
    	$("#red").fadeOut("slow");
    	$("#green").animate({
    		height: '150px',
        	width: '150px',
    		});
    	});
    $("p").click(function(){
    	$(".blurb").fadeToggle("fast");
    	});

});


