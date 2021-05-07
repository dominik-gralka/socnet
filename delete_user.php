<html>
<head><title>socnet - Das soziale Netzwerk</title></head>
<body>

<?php include "./header.html" ?>

<form id="Form1" action="user_delete_execute.php" method="post" style="margin-top:2%; display:block;">
  Nutzer-ID: <input type="text" name="ID" style="display:block; margin-top:5px;"><br>
  <input type="hidden" name="SubmitCheck" value="sent" style="display:block;">
  <input type="Submit" name="Form1_Submit" value="Entfernen" style="margin-top:1%;">
</form>
    <script type="text/javascript" src="javascript/cookiehandler.js"></script>
</body>

</html>