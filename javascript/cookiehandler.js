function getCookie() {
    const value_or_null = (document.cookie.match(/^(?:.*;)?\s*user\s*=\s*([^;]+)(?:.*)?$/) || [, null])[1];
    //document.getElementById("credentials").innerHTML="Test";
    console.log('Angemeldet als:' + value_or_null);
}