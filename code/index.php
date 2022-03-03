<?php 
session_start();
?>

<!DOCTYPE html>
<html>
<head>


<title> List'Animes </title>
</head>


<body>

<?php
session_start();
if(!isset($_SESSION['utilisateur']))
{ ?>

<p id="Se_connecter"> <a href="connexion/connexion.php"> Se connecter </a> </p>

<?php }

else {
echo  '<br />';
echo "Bonjour ";
echo $_SESSION['utilisateur']['pseudo'];

?>	
	<p id="Se_deconnecter"> <a href="connexion/deconnexion.php"> Se déconnecter </a> </p>
	
<?php 
	}
	
	?>
	




</body>


</html>



