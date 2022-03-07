<html>
    <head>
        <link rel="stylesheet" href="../styles/main.css" type="text/css" media="screen" />
        <meta http-equiv="content-type" content="text/html; charset=utf-8" /> 
        <script src="https://kit.fontawesome.com/c6c76fd424.js" crossorigin="anonymous"></script>
        <img src=img/background.png id=fondecran class=fondecran alt=/>

        <title>Déconnexion</title>
</head>
<body>


<?php
session_start();
session_destroy();

echo 'Déconnexion réussie, redirection';
echo '<meta http-equiv="Refresh" content="3; 
	url=../index.php"/>' ;
	
	?>
	
</body>
</html>
