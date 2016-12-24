$(document).ready(function() {
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()

	$(function(){
		function addZero(i) {         // used to get minutes:seconds for current time in correct format
		    if (i < 10) {
		        i = "0" + i;
		    }
		    return i;
		}

		function getMinsToArrival(mins_now, mins_end){
			if (mins_now > mins_end) {
				return mins_end + (60 - mins_now);
			} else {
				return (mins_end - mins_now);
			}
		}
		

		$.ajax({
			method: 'get',
			url: window.location.pathname
		}).done(function(result){
			var ends_at = result;
			var hrs_end = (ends_at[0] + ends_at[1]);
			var mins_end = (ends_at[3] + ends_at[4]);

			var now = new Date();
			now.setHours(now.getHours() + 8); //time.now in utc-ish
			var hrs_now = addZero(now.getHours());
			var mins_now = addZero(now.getMinutes());
			var min_to_arr = addZero(getMinsToArrival(parseInt(mins_now), parseInt(mins_end))) + ":00";

			$(".digits").countdown({          
				image: "/img/digits.png",
				format: "mm:ss",
				startTime: min_to_arr,
				timerEnd: function(){window.location.href = window.location.href + '/end';}
			});	
	
		})
	
	
	
	});

});

