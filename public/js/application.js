$(document).ready(function() {
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()

	$(function(){
		function addZero(i) {
		    if (i < 10) {
		        i = "0" + i;
		    }
		    return i;
		}
	
		var d = new Date();
		var m = addZero(d.getMinutes());
		var s = addZero(d.getSeconds());
		var x = m + ":" + s;
		

		$.ajax({
			method: 'get',
			url: window.location.pathname
		}).done(function(result){
			console.log(result);
		})
	
		$(".digits").countdown({
			image: "/img/digits.png",
			format: "mm:ss",
			startTime: x,
			timerEnd: function(){window.location.href = "/";}
		});
	
	
	
	});

});

