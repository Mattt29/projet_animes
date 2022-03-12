<!DOCTYPE html>
	<html>
	<head>
		<link rel="stylesheet" href="styles/main.css" type="text/css" media="screen" />
		<meta http-equiv="content-type" content="text/html; charset=utf-8" /> 
        <script src="https://kit.fontawesome.com/c6c76fd424.js" crossorigin="anonymous"></script>      
		<img src=img/background.png id=fondecran class=fondecran alt=/>
		<title>Bienvenue sur list'animes</title>
     
	</head>

<body>

<div class="acceuilhaut">
<div id="profila">
 

   <div class="homepage"> <a href="index.php"> <i class="fa-solid fa-house"></i> </a>
 </div>
<div id = "connexion" >
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


$id_anime=$_GET["id_anime"];


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

<div  class="genre_anime">
<?php
if($ligne['genre_anime']!="") {
	echo 'Genres de l anime : '.$ligne['genre_anime']."<br /> <br />"; 
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

<?php
$rep-> closeCursor(); 
?>

<div class="formulaire">



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


<form  action="liste_animes/ajouter_anime_a_voir.php" method="post" autocomplete="off">
<p>
<input type="hidden" name="id_anime" value="<?php echo $id_anime ?>"/>
</p>

<p>
<input type="submit" value="Ajouter à ma liste des animes à voir">

</p>
</form>


Ajouter à ma liste des animes à voir <br>
Ajouter une note
</div>

</body>



</html>

    