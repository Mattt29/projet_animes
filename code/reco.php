<?php 
session_start();
?>

<!DOCTYPE html>

	<html>
	<head>
		<link rel="stylesheet" href="styles/main.css" type="text/css" media="screen" />
		<meta http-equiv="content-type" content="text/html; charset=utf-8" /> 
        <script src="https://kit.fontawesome.com/c6c76fd424.js" crossorigin="anonymous"></script>      
	<!--	<img src="../img/background.png" id=fondecran class=fondecran alt=""/> -->
		<title>Bienvenue sur list'animes</title>
		<style>
				
		</style>		
		
		
	</head>


<body>
<!--
	<div class=acceuilhaut>
		<div id=profila>
		<div class="homepage"> 
			<a href="../index.php"> <i class="fa-solid fa-house"></i> </a>
		</div>

		<div id = "connexion" >
			<?php
				if(!isset($_SESSION['utilisateur'])){ ?>
			   <p id="Se_connecter"> <a href="../connexion/connexion.php"> Se connecter </a> </p>
    			<?php }
    			else {
    				echo  '<br />';
					echo "Bonjour ";
					echo $_SESSION['utilisateur']['pseudo'];
				?>	

	<p id="Se_deconnecter"> <a href="../connexion/deconnexion.php"> Se déconnecter </a> </p>

	

    <?php }?>



</div>

</div>





<form method="GET" action="../recherche.php" autocomplete="on">
    
    <input type="search" name="recherche"  placeholder="Recherche anime.." id="barre_recherche"  />
    <input type="submit" value="Valider" id="bouton_validé" />
</form>

</div>

-->

<?php
include("bd.php");
$bdd =getBD();
$id_utilisateur=$_SESSION['utilisateur']['id_utilisateur'];

//enregistrer l'identifiant le plus élevé
$nb=$bdd->query('SELECT id_utilisateur FROM utilisateur ORDER BY id_utilisateur DESC LIMIT 1');
$id=0;
while($ligne =$nb->fetch()) {	
$id+=$ligne[0];
}

echo $id;
$j=1;
while($j<=$id) {
	echo $j;
	$liste=$bdd->query('SELECT id_anime, id_utilisateur FROM liste_vus where liste_vus.id_utilisateur='.$j);
	$vus=array();
	$rep = $bdd->query('select id_anime from anime');
	$i=1;
		while($i<=13211){
			if($rep->fetch()==$liste->fetch()) {
				array_push($vus, 1);
			}
			else{
				array_push($vus, 0);	
			}
			$i=$i+1;
		}
		print_r($vus, $return = null);
	$rep ->closeCursor();
	$j+=1;
	}

/**
$nb=0;
foreach($bdd->query('SELECT COUNT(*) FROM utilisateur') as $row) {
echo "<tr>";
$nb+=$row['COUNT(*)'];
echo "<td>" . $row['COUNT(*)'] . "</td>";
echo "</tr>";
}
$j=0;
while($j<$nb) {
	echo "la";
	$j+=1;
	}**/



//$avu = $bdd->query('SELECT liste_vus.id_anime, image_url_anime from liste_vus, anime where liste_vus.id_anime=anime.id_anime and id_utilisateur='.$id_utilisateur);
/*$avu = $bdd->query('SELECT id_anime FROM liste_vus where liste_vus.id_utilisateur='.$id_utilisateur);

	

$vus=array();
$rep = $bdd->query('select id_anime from anime');
$i=1;
		while($i<13211){
			if($rep->fetch()==$avu->fetch()) {
				array_push($vus, 1);
			}
			else{
				array_push($vus, 0);
			}
			$i=$i+1;
		}
print_r($vus, $return = null);
$rep ->closeCursor(); 

*/
?>

<div class="bandeau"> 
<object data="../bandeau.php" width="100%" height="100%">
</object>
</div>

</body>







</html>



    