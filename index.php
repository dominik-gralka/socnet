<html lang="de">													<!-- Hier beginnt die HTML Seite -->
	<head>
		<title>
			socnet - Das soziale Netzwerk - Adminbereich
		</title>
	</head>
	<body>
    <div class="header"></div>
    </body>
<script>
    function globalHeader() {
        document.getElementById('header').innerHTML = '<div class="menu-bar" style="margin-top:1%; margin-bottom:1%;">\n' +
            '    <h1>socnet</h1>\n' +
            '    <a href="alle_user.php">Nutzer anzeigen</a>\n' +
            '    &nbsp;\n' +
            '    <a href="user_anlegen.php">Neuen Nutzer anlegen</a>\n' +
            '    &nbsp;\n' +
            '    <a href="user_edit.php">Nutzer bearbeiten</a>\n' +
            '    &nbsp;\n' +
            '    <a href="user_delete.php">Nutzer entfernen</a>\n' +
            '    &nbsp;\n' +
            '    <a href="user_login.php">Anmelden</a>\n' +
            '    &nbsp;\n' +
            '    <a href="index.php">Zum Hauptverzeichnis</a>\n' +
            '    <hr style="margin-top:2%;">\n' +
            '</div>'
    }
</script>
<script>
    globalHeader();
</script>
</html>
