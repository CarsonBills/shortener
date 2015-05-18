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