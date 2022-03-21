<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="../styles/main.css" type="text/css" media="screen" />
        <meta http-equiv="content-type" content="text/html; charset=utf-8" /> 
        <script src="https://kit.fontawesome.com/c6c76fd424.js" crossorigin="anonymous"></script>
        <img src=../img/background.png id=fondecran class=fondecran alt=""/>
           <?php
            
            include ("../bd.php");
            $bdd=getBD();
        
            $id=$_GET["id_discussion"];
            
           
            $rep = $bdd -> query("select * from discussion,commentaires where discussion.id_discussion=commentaires.id_discussion
            AND discussion.id_discussion='$id'");
            
            ?> 
    </head>

   
<body>
    
<div class="acceuilhaut">
<div id="profila">
 

<div class="homepage"> <a href="../index.php"> <i class="fa-solid fa-house"></i> </a>
 </div>


<div id = "connexion" >
<?php
    session_start();
    if(!isset($_SESSION['utilisateur']))
    { ?>

    <p id="Se_connecter"> <a href="connexion/connexion.php"> Se connecter </a> </p>

    <?php }

    else {
    echo  '<br />';$pp=$bdd->query('SELECT url_pp FROM utilisateur, photo_de_profil WHERE id_utilisateur='.$_SESSION['utilisateur']['id_utilisateur'].' and utilisateur.id_photo_de_profil=photo_de_profil.id_photo_de_profil');
 			$lignepp=$pp->fetch();
   ?> 
   <a href="profil/profil.php" ><?php echo "<img class='pp' src='".$lignepp['url_pp']."' width='150' height='200'";?></a>    
	<?php $pp->closeCursor();
	
	    echo "Bonjour ";
    echo $_SESSION['utilisateur']['pseudo'];  ?>
	
	<p id="Se_deconnecter"> <a href="connexion/deconnexion.php"> Se déconnecter </a> </p>
	
<div id="liste_anime">
<?php 
 echo "<a href =liste_animes/liste_animes.php> Liste animes</a>";

?>

</div>	
	 <?php }?>
    
      

</div>
</div>


<form method="GET" action="recherche.php" autocomplete="on">
    
    <input type="search" name="recherche"  placeholder="Recherche anime.." id="barre_recherche" />
    <input type="submit" value="Valider" id="bouton_validé" />
</form>


</div>

<p id="Titrearticle">
<?php 
echo $mat['titre_discussion'];
?>
</p>


<div>

  <?php
    
while( $mat =  $rep -> fetch()){
    echo $mat['message'].'<br/>';
}
    echo "Pour ajouter un commentaire vous pouvez le faire  <a href ="."creation_commentaire.php?id_discussion=".$_GET['id_discussion']."> ici </a>"; 
    
    $rep -> closeCursor();
    ?>

    </div>






    </body>

    </html>
