console.log("scripts loaded!")

function loadTopLinks(){
	$(".top").click(function(){
		$("table").toggle( 300, function(){});
	});
}

function validate(){
	$("#urlForm").validate({
	  errorPlacement: function(error, element) {
	    error.insertAfter(".field");
	  }
	});
	$(".shorten").fadeIn(200);
}

function loadLanding(){
		$(".shortener").addClass("animated bounceInDown");
		$(".bills").hide()
		$(".carson").hide()
		setTimeout(function(){
			$(".bills").show()
			$(".bills").addClass("animated bounceInDown");
		}, 1400);
		setTimeout(function(){
			$(".carson").show()
			$(".carson").addClass("animated bounceInDown");
		}, 700);
		setTimeout(function(){
			$(".disappear").fadeOut(1000)
		}, 2200);
		setTimeout(function(){
			$(".carson").animate({
				top: "30%",
			 left: "31%"
			}, 500)
		}, 3000);
		setTimeout(function(){
			$(".shortener").animate({
				top: "30%",
			 left: "41%"
			}, 500)
		}, 3000);
		setTimeout(function(){
		$(".bills").animate({
			top: "2%",
		}, 500)
		$(".carson").animate({
			top: "2%",
		}, 500)
		$(".shortener").animate({
			top: "2%",
		}, 500)
		setTimeout(function(){
			$(".header").css("height", "20%")
			$(".content").fadeIn(800)
		}, 1100)
	}, 3500 );
}