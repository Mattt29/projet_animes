<?php
session_start();
session_destroy();

echo 'Déconnexion réussie, redirection';
echo '<meta http-equiv="Refresh" content="3; 
	url=../index.php"/>' ;
	
	?>