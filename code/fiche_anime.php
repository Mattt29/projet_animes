<!DOCTYPE html>
	<html>
	<head>
		<link rel="stylesheet" href="provisoire.css" type="text/css" media="screen" />
		<meta http-equiv="content-type" content="text/html; charset=utf-8" /> 
      <title>Bienvenue sur list'animes</title>
     
	</head>

<body>

<div class=acceuilhaut >
<div id = "connexion" >
    <a href=".." target="_self">
        Se connecter
        </a>    

</div>

<div id= "barre_recherche">
                <form action="" class="formulaire">
                <input class="champ" type="text" value="rechercher un anime, un profil..." />
                     
                </form>
</div>
</div>

<?php
function getBD(){
			$bdd = new PDO('mysql:host=localhost;dbname=projet_anime;charset=utf8','root', 'root');
			return $bdd;
			}
$bdd =getBD();
$id_anime=4;
$rep = $bdd->query('SELECT * from anime where id_anime='.$id_anime);
$ligne = $rep ->fetch();
?>

<div class="titre_anime">
<?php
echo 'titre anime : '.$ligne['titre_anime']."<br /> <br />"; 
?>
</div>

<div class="titre_anime_anglais">
<?php
if($ligne['titre_anime']!=$ligne['titre_anglais_anime']){
	echo 'titre anglais anime : '.$ligne['titre_anglais_anime']."<br /> <br />"; 
}
?>
</div>

<div class="type_anime">
<?php
if($ligne['type_anime']!=""){
	echo 'type anime : '.$ligne['type_anime']."<br /> <br />";
}
?>
</div>

<div class="note_anime">
<?php
if($ligne['note_generale_anime']!=0 & $ligne['nb_notes_anime']>=25){
	echo $ligne['note_generale_anime']."<br /> <br />";
}
?>
</div>

<div class="nb_anime">
<?php
if($ligne['nb_episodes_anime']>1){
	echo "nb d episode : ".$ligne['nb_episodes_anime']."<br /> <br />"; 
}
if($ligne['nb_episodes_anime']==1) {
	echo "duree de l'anime (film) : ".$ligne['duree_anime']."<br /> <br />";
}
?>
</div>

<div class="rang_anime">
<?php
if($ligne['rang_anime']!=15000) {
	echo 'rang anime : '.$ligne['rang_anime']."<br /> <br />"; 
}
?>
</div>

<div class="date_anime">
<?php
if($ligne['date_anime']!="" & $ligne['type_anime']!="Movie") {
	echo 'Date de début et de fin : '.$ligne['date_anime']."<br /> <br />"; 
}
if($ligne['date_anime']!="" & $ligne['type_anime']=="Movie") {
	echo 'Date de sortie : '.$ligne['date_anime']."<br /> <br />"; 
}
?>
</div>

<div = class="genre_anime">
<?php
if($ligne['genre_anime']!="") {
	echo 'Genres de l anime : '.$ligne['genre_anime']."<br /> <br />"; 
}
?>
</div>


<div class="img_anime">
<?php
echo "<img src=".$ligne["image_url_anime"]." ' width='400' height='400' alt='".$genre_anime."'/>";
?>
</div>

<div class="img_defaut">
<?php
echo "<img src=https://i.pinimg.com/originals/03/8a/c3/038ac3da59e4b3d9416367d15119f2a7.png ' width='400' height='400' alt='".$pas_image."'/>";
?>
</div>

<?php
$rep-> closeCursor(); 
?>


</body>
</html>

    