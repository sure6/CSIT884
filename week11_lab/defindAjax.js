function defindAJAX(url) {
	var xhr = new XMLHttpRequest();
	xhr.onreadystatechange = function() {
		readystateHandler(xhr);
	}
	xhr.open("GET", url, true);
	xhr.send();
}

function readystateHandler(xhttp) {
	if(xhttp.readyState == XMLHttpRequest.DONE) {
		if(xhttp.status == 200) {
			handleStatusSuccess(xhttp);
		} else {
			handleStatusError(xhttp);
		}
	}
}

function handleStatusSuccess(xhttp) {
	console.log("success");
	var jsonStr = xhttp.responseText;
	console.log(jsonStr);
	handlerReponse(jsonStr);
}

function handleStatusError(xhttp) {
	console.log("error");
	alert("AJAX request fail");
	alert("readyState = " + xhttp.readyState);
	alert("status = " + xhttp.status);
}