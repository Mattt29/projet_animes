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
  
$j=1;
while($j<=$id) {
	$liste=$bdd->query('SELECT id_anime FROM liste_vus where liste_vus.id_utilisateur='.$j);	
	$vus[$j]=array();
	$rep = $bdd->query('select id_anime from anime');
	$i=1;
		while($i<=13211){ //13211
			if($rep->fetch()==$liste->fetch()) {
				array_push($vus[$j], $i);
			}
			else{
				array_push($vus[$j], 0);	
			}
			$i=$i+1;
		}
			//print_r($vus[$j], $return = null);
	$j+=1;
	}

$f=1;
$sim=array();//table de la taille du nombre d'utilisateur 
while($f<$j) {
	$cmp[$f]=array_diff_assoc($vus[$id_utilisateur],$vus[$f]);
	array_push($sim, count($cmp[$f])); //ajout de la différence du nb d'anime vu entre l'utilisateur connecté et l'utilisateur f
	$f+=1;
	}
$rep ->closeCursor();
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

//Trouver le minimum de différence dans le tableau
$min = $sim[0];
for($i=0; $i < count($sim); $i++){	
	if ($sim[$i] > $min and $sim[$i]!=0){
   	$min = $sim[$i];
	}
}
 
//Recherche de l'identifiant correspondant au minimum
for($i=0; $i < count($sim); $i++){	
	if ($sim[$i] == $min){
  		$ind=$i+1;
  }
}

																									
$simi = $bdd->query('SELECT liste_vus.id_anime, image_url_anime from liste_vus, anime where liste_vus.id_anime=anime.id_anime and id_utilisateur='.$ind);

//$moi = $bdd->query('SELECT liste_vus.id_anime, image_url_anime from liste_vus, anime where liste_vus.id_anime=anime.id_anime and id_utilisateur='.$id_utilisateur);
?> </div><br><br> <div class="liste">
	Recommandation de la liste d'un utilisateur similaire à vous : <br /> 
	<?php
	
$non_vide2=FALSE;

while($ligne2 =$simi->fetch()) {	

echo "<a href=fiche_anime.php?id_anime=".$ligne2['id_anime']."><img src='".$ligne2['image_url_anime']."'></a>";
#$id_anime_vus=$ligne2['id.anime']; 
#$image_anime_vus=$ligne2['image_url_anime']; 
$non_vide2=TRUE;}



//$avu = $bdd->query('SELECT liste_vus.id_anime, image_url_anime from liste_vus, anime where liste_vus.id_anime=anime.id_anime and id_utilisateur='.$id_utilisateur);

?>

<div class="bandeau"> 
<object data="bandeau.php" width="100%" height="100%">
</object>
</div>

</body>







</html>



    