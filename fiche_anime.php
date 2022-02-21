<!DOCTYPE html>
	<html>
	<head>
		<link rel="stylesheet" href="jolie.css" type="text/css" media="screen" />
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
$id_anime=2;
$rep = $bdd->query('SELECT * from anime where id_anime='.$id_anime);
$ligne = $rep ->fetch();
echo 'titre anime : '.$ligne['titre_anime']."<br /> <br />"; 
if($ligne['titre_anime']!=$ligne['titre_anglais_anime']){
	echo 'titre anglais anime : '.$ligne['titre_anglais_anime']."<br /> <br />"; 
}
if($ligne['type_anime']!=""){
	echo 'type anime : '.$ligne['type_anime']."<br /> <br />";
}
if($ligne['note_generale_anime']!=0 & $ligne['nb_notes_anime']>=25){
	echo 'note anime : '.$ligne['note_generale_anime']."<br /> <br />";
}
if($ligne['nb_episode_anime']!=0){
	echo "nb d episode : ".$ligne['nb_episode_anime']."<br /> <br />"; 
}
if($ligne['rang_anime']!=15000) {
	echo 'rang anime : '.$ligne['rang_anime']."<br /> <br />"; 
}
if($ligne['date_anime']!="" & $ligne['type_anime']!="Movie") {
	echo 'Date de début et de fin : '.$ligne['date_anime']."<br /> <br />"; 
}
if($ligne['date_anime']!="" & $ligne['type_anime']="Movie") {
	echo 'Date de sortie : '.$ligne['date_anime']."<br /> <br />"; 
}
if($ligne['genre_anime']!="") {
	echo 'Genres de l anime : '.$ligne['genre_anime']."<br /> <br />"; 
}
echo "<img src=".$ligne["image_url_anime"]." ' width='330' height='330' alt='".$id_anime."'/>";

$rep-> closeCursor(); 
?>


</body>
</html>

    