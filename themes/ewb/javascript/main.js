$(document).ready(function() {
	$('#myTab a').click(function (e) {
  		e.preventDefault();
  		$(this).tab('show');
	});

	// Flexslider
	$(window).load(function() {
		$('.flexslider').flexslider({
			animation: "slide",
			slideshow: false,
			controlNav: false,
			itemWidth: 150,
			itemMargin: 5
		});
	});
});


