<?php
include 'database_login.php';
 
// Lets test if the form has been submitted
if(isset($_POST['SubmitCheck'])) {
    // The form has been submited
    // Check the values!
        // User validated!
        echo "Falls dieser Nutzer existiert, wird dieser nun aus der Datenbank entfernt.<br>Sie werden augenblicklich weitergeleitet.";		
		
		$fid = $_POST['ID'];

// sending query
mysql_query("DELETE FROM person WHERE p_id = '$fid'")
or die(mysql_error());
header('Refresh: 3; URL=http://localhost/Webservice/socnet/index.php');    		
		

}
?>