<?php 
session_start();
?>
<!DOCTYPE html>
	<html>
	<head>
		<link rel="stylesheet" href="styles/main.css" type="text/css" media="screen" />
		<meta http-equiv="content-type" content="text/html; charset=utf-8" /> 
        <script src="https://kit.fontawesome.com/c6c76fd424.js" crossorigin="anonymous"></script>      

		<title>Bienvenue sur list'animes</title>
		<style>
		
		</style>
	</head>

<body>

<?php
include("bd.php");
$bdd =getBD();
if(isset($_SESSION['utilisateur'])) {
$id=$_SESSION['utilisateur']['id_utilisateur'];
}
$id_anime=$_GET["id_anime"];


$rep = $bdd->query('SELECT * from anime where id_anime='.$id_anime);

$ligne = $rep ->fetch();

?>

<div class="titre_anime">
<?php
echo 'Titre : '.$ligne['titre_anime']."<br /> <br />"; 
?>
</div>

<div class="titre_anime_anglais">
<?php
if($ligne['titre_anime']!=$ligne['titre_anglais_anime']){
	echo 'Titre anglais : '.$ligne['titre_anglais_anime']."<br /> <br />"; 
}
?>
</div>

<div class="type_anime">
<?php
if($ligne['type_anime']!=""){
	echo 'Type : '.$ligne['type_anime']."<br /> <br />";
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
	echo "Nombre d'épisodes : ".$ligne['nb_episodes_anime']."<br /> <br />"; 
}
if($ligne['nb_episodes_anime']==1) {
	echo "Durée (film) : ".$ligne['duree_anime']."<br /> <br />";
}
?>
</div>

<div class="rang_anime">
<?php
if($ligne['rang_anime']!=15000) {
	echo 'Rang : '.$ligne['rang_anime']."<br /> <br />"; 
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

<div  class="genre_anime">
<?php
if($ligne['genre_anime']!="") {
	echo 'Genres : '.$ligne['genre_anime']."<br /> <br />"; 
}
?>
</div>


<div class="img_anime">
<?php
$a="";
echo "<img src=".$ligne["image_url_anime"]." ' width='400' height='400' alt='".$a."'/>";
?>
</div>

<div class="img_defaut">
<?php
echo "<img src=https://i.pinimg.com/originals/03/8a/c3/038ac3da59e4b3d9416367d15119f2a7.png ' width='400' height='400' alt='".$a."'/>";
?>
</div>

<div class="ajout_liste">
<?php
$rep-> closeCursor(); 

if(isset($id)) {
############################# AJOUT LISTES #################################
	$verif_vu = $bdd->query('SELECT id_anime,note_utilisateur from liste_vus where id_anime='.$id_anime.' and id_utilisateur='.$id);
	$ligne_vu = $verif_vu->fetch();
	$test_anime=$ligne_vu['id_anime'];
	$note=$ligne_vu['note_utilisateur'];
	$verif_vu -> closeCursor();
if(empty($test_anime) || $test_anime==""){
?>



<form  action="liste_animes/ajouter_anime_vu.php" method="post" autocomplete="off">
<p>
<input type="hidden" name="id_anime" value="<?php echo $id_anime ?>"/>
</p>

<p>
Note : 
<input type="number" name="note" step="0.5" min="0" max="10"/>
</p>


<p>
<input type="submit" value="Ajouter à ma liste des animes vus">

</p>
</form>
<?php } 
else{ echo 'Ma note : '.$note.'<br><br><br>';
echo 'Anime déjà ajouté à la liste des animes vus <br>';
?>
<form  action="liste_animes/modifier_note.php" method="post" autocomplete="off">
<p>
<input type="hidden" name="id_anime" value="<?php echo $id_anime ?>"/>
</p>
<p>
Modifier ma note : 
<input type="number" name="note" step="0.5" min="0" max="10"/>
</p>

<p>
<input type="submit" value="Valider la modification">

</p>
</form>

<?php
}


$verif_a_voir = $bdd->query('SELECT id_anime from liste_a_voir where id_anime='.$id_anime.' and id_utilisateur='.$id);
	$ligne_a_voir = $verif_a_voir->fetch();
	$test_anime1=$ligne_a_voir['id_anime'];
	$verif_a_voir -> closeCursor();
if(empty($test_anime1) || $test_anime1==""){
?>

<form  action="liste_animes/ajouter_anime_a_voir.php" method="post" autocomplete="off">
<p>
<input type="hidden" name="id_anime" value="<?php echo $id_anime ?>"/>
</p>

<p>
<input type="submit" value="Ajouter à ma liste des animes à voir">

</p>
</form>


<?php } 
else{
echo 'Anime déjà ajouté à la liste des animes à voir';
}

}
?>


</div>

<div class="bandeau"> 
<object data="bandeau.php" width="100%" height="100%">
</object>
</div>
</body>



</html>