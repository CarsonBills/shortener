console.log("scripts loaded!")

function loadTopLinks(){
	$(".top").click(function(){
		$("table").toggle( 300, function(){});
	});
}