<?php
include 'database_login.php';
?>
<html lang="de">
	<head><title>socnet - Das soziale Netzwerk</title></head>
	<body>
    <p class="credentials"></p>
    <?php include "./header.html" ?>


	<!--<script type="text/javascript" src="javascript/cookiehandler.js"></script>-->

    <script type="text/javascript">
        function getCookie() {
            const value_or_null = (document.cookie.match(/^(?:.*;)?\s*user\s*=\s*([^;]+)(?:.*)?$/) || [, null])[1];
            //document.getElementById("credentials").innerHTML="Test";
            console.log('Angemeldet als: ' + value_or_null);
        }
    </script>

    <script type="text/javascript">
        function getSecureCookie() {
            const value_or_null = (document.cookie.match(/^(?:.*;)?\s*user\s*=\s*([^;]+)(?:.*)?$/) || [, null])[1];
            if (value_or_null == null) {
                window.location.href = 'index.php';
            }
        }
    </script>

    <script>
        getSecureCookie();
        getCookie();
    </script>
    <?php include "./secure/alle_user_execute.php" ?>


    <!--<script type="text/javascript">
        function getCookie() {
            const value_or_null = (document.cookie.match(/^(?:.*;)?\s*user\s*=\s*([^;]+)(?:.*)?$/) || [, null])[1];
            console.log(value_or_null);
        }
    </script>

    <script>
        getCookie();
    </script>-->

	</body>
</html>
