<?php 
session_start();
?>

<!DOCTYPE html>

	<html>
	<head>
		<link rel="stylesheet" href="styles/main.css" type="text/css" media="screen" />
		<meta http-equiv="content-type" content="text/html; charset=utf-8" /> 
        <script src="https://kit.fontawesome.com/c6c76fd424.js" crossorigin="anonymous"></script>      
		<img src=img/background.png id=fondecran class=fondecran alt=/>
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
			<a href="index.php"> <i class="fa-solid fa-house"></i> </a>
		</div>

		<div id = "connexion" >
			<?php
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

#print_r($_SESSION['liste_a_voir']);
$id_utilisateur=$_GET["id_utilisateur"];
#echo $id_utilisateur;
$avoir = $bdd->query('SELECT liste_a_voir.id_anime, image_url_anime from liste_a_voir, anime where liste_a_voir.id_anime=anime.id_anime and id_utilisateur='.$id_utilisateur);
#echo 'SELECT liste_a_voir.id_anime, image_url_anime from liste_a_voir, anime where liste_a_voir.id_anime=anime.id_anime and id_utilisateur='.$id_utilisateur;

?> <div class="liste">
	Liste animes à voir : <br />
	<?php
	$non_vide1=FALSE;
while($ligne1 =$avoir->fetch()) {	

echo "<a href=fiche_anime.php?id_anime=".$ligne1['id_anime']."> <img src='".$ligne1['image_url_anime']."'> </a>";
 

 #$id_anime_a_voir=$ligne1['id.anime']; 
 #$image_anime_a_voir=$ligne1['image_url_anime']; 
 $non_vide1=TRUE;
}

if(empty($non_vide1)){ 
	echo "Liste vide <br />";

 }
$avoir-> closeCursor();




$avu = $bdd->query('SELECT liste_vus.id_anime, image_url_anime from liste_vus, anime where liste_vus.id_anime=anime.id_anime and id_utilisateur='.$id_utilisateur);

?> </div> <div class="liste">
	Liste animes vus : <br />
	<?php
	
$non_vide2=FALSE;
while($ligne2 =$avu->fetch()) {	
echo "<a href=fiche_anime.php?id_anime=".$ligne2['id_anime']."> <img src='".$ligne2['image_url_anime']."'> </a>";
#$id_anime_vus=$ligne2['id.anime']; 
#$image_anime_vus=$ligne2['image_url_anime']; 
$non_vide2=TRUE;
}

if(empty($non_vide2)){ 
	echo "Liste vide <br />";

 }

#echo 'utilisateur  :';
#print_r($_SESSION['liste_a_voir']);

$avu-> closeCursor();


?> </div>

<!--
<div class="liste">
	Liste animes vus <br />
	<?php echo $id_anime_a_voir; 
	echo $image_anime_a_voir; 
	?> <br />
</div>

<div class="liste"> 
		Liste animes à voir <br />
		<?php echo $id_anime_vus;
	echo $image_anime_vus; 
	?> <br />
</div>
-->


</body>







</html>



    