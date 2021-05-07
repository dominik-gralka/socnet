function getSecureCookie() {
    const value_or_null = (document.cookie.match(/^(?:.*;)?\s*user\s*=\s*([^;]+)(?:.*)?$/) || [, null])[1];
    if (value_or_null == null) {
        window.location.href = 'index.php';
    }
}