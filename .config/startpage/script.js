function time() {
	var now = new Date();
	var hour = now.getHours().toString().padStart(2, "0")
	var minute = now.getMinutes().toString().padStart(2, "0")
	document.getElementById("time").innerText = `${hour}:${minute}`
}

time();
setInterval(time, 500);

