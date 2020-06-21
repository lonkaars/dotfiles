// Time
$('.time').text(new Date().toLocaleTimeString('nl').substr(0, 5))
setInterval(() => {
	$('.time').text(new Date().toLocaleTimeString('nl').substr(0, 5))
}, 500);


