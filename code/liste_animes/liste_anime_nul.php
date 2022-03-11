<!DOCTYPE html>

	<html>
	<head>
		<link rel="stylesheet" href="../styles/main.css" type="text/css" media="screen" />
		<meta http-equiv="content-type" content="text/html; charset=utf-8" /> 
        <script src="https://kit.fontawesome.com/c6c76fd424.js" crossorigin="anonymous"></script>      
		<img src=../img/background.png id=fondecran class=fondecran alt=/>
		<title>Bienvenue sur list'animes</title>
		<style>
			.liste{

			border: 2px solid black;
			}		
		</style>		
		
		
	</head>


<body>

	<div class=acceuilhaut>
		<div id=profila>
		<div class="homepage"> 
			<a href="../index.php"> <i class="fa-solid fa-house"></i> </a>
		</div>

		<div id = "connexion" >
			<?php
				session_start();
				if(!isset($_SESSION['utilisateur'])){ ?>
			   <p id="Se_connecter"> <a href="connexion/connexion.php"> Se connecter </a> </p>
    			<?php }
    			else {
    				echo  '<br />';
					echo "Bonjour ";
					echo $_SESSION['utilisateur']['pseudo'];
				?>	

	<p id="Se_deconnecter"> <a href="connexion/deconnexion.php"> Se déconnecter </a> </p>

	

    <?php }?>



</div>

</div>





<form method="GET">

    

    <input type="search" name="titre_anime" placeholder="Recherche anime.." id="barre_recherche" />

    <input type="submit" value="Valider" id="bouton_validé" />

</form>

</div>



<?php
include("bd.php");
$bdd =getBD();


$id_utilisateur=$_GET["id_utilisateur"];
$avoir = $bdd->query('SELECT liste_a_voir.id_anime, image_url_anime from liste_a_voir, anime where liste_a_voir.id_anime=anime.id_anime id_utilisateur='.$id_utilisateur);

#ligne1 = $avoir ->fetch();

$avu = $bdd->query('SELECT liste_vus.id_anime, image_url_anime from liste_vus, anime where liste_vus.id_anime=anime.id_anime id_utilisateur='.$id_utilisateur);

#ligne2 = $avu ->fetch();

?>


<div class="liste">
	Liste animes vus
</div>

<div class="liste">
		Liste animes à voir
</div>


</body>







</html>



    