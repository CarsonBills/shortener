console.log("scripts loaded!")

function loadTopLinks(){
	$("table").hide()
	$(".top").on("click", function(){
		$("table").fadeIn(500);
	});
}