$(document).ready(function() {
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()



});

$(function(){
	$(".digits").countdown({
		image: "/img/digits.png",
		format: "mm:ss",
		startTime: "25:14"
	});
	console.log('uh');
});