<html>
<head><title>socnet - Das soziale Netzwerk</title></head>
<body>

	<div class="menu-bar" style="margin-top:1%; margin-bottom:1%;">
		<h1>socnet</h1>
		<a href="alle_user.php">Nutzer anzeigen</a>
		&nbsp;
		<a href="user_anlegen.php">Neuen Nutzer anlegen</a>
		&nbsp;
		<a href="user_edit.php">Nutzer bearbeiten</a>
		&nbsp;
		<a href="delete_user.php">Nutzer entfernen</a>
		&nbsp;
		<a href="index.php">Zum Hauptverzeichnis</a>
		<hr style="margin-top:2%;">
	</div>

<form id="Form1" action="user_delete_execute.php" method="post" style="margin-top:2%; display:block;">
  Nutzer-ID: <input type="text" name="ID" style="display:block; margin-top:5px;"><br>
  <input type="hidden" name="SubmitCheck" value="sent" style="display:block;">
  <input type="Submit" name="Form1_Submit" value="Entfernen" style="margin-top:1%; display:block-inline;">
</form>
    <script type="text/javascript" src="cookiehandler.js"></script>
</body>

</html>