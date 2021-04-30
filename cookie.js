function getCookie(user) {
    var dc = document.cookie;
    var prefix = user + "=";
    var begin = dc.indexOf("; " + prefix);
    if (begin == -1) {
        begin = dc.indexOf(prefix);
        if (begin != 0) return null;
    }
    else
    {
        begin += 2;
        var end = document.cookie.indexOf(";", begin);
        if (end == -1) {
        end = dc.length;
        }
    }
    // because unescape has been deprecated, replaced with decodeURI
    //return unescape(dc.substring(begin + prefix.length, end));
    return decodeURI(dc.substring(begin + prefix.length, end));
	execute();
}

function execute() {
    const user = getCookie("user");

    if (user == null) {
        // do cookie doesn't exist stuff;
        document.getElementById('credentials').innerHTML = 'Angemeldet als: ' + user
		console.log("Cookie existiert nicht");
    }
    else {
        // do cookie exists stuff
        document.getElementById('credentials').innerHTML = 'Angemeldet als: ' + user
		console.log("Cookie existiert");
    }
}