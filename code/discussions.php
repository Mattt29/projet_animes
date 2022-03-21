<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="styles/main.css" type="text/css" media="screen" />
        <meta http-equiv="content-type" content="text/html; charset=utf-8" /> 
        <script src="https://kit.fontawesome.com/c6c76fd424.js" crossorigin="anonymous"></script>
        <img src=img/background.png id=fondecran class=fondecran alt=""/>
           <?php
            
            include ("bd.php");
            $bdd=getBD();
        
            $id=$_GET["id_discussion"];
            
           
            $rep = $bdd -> query("select * from discussion,commentaires where discussion.id_discussion=commentaires.id_discussion
            AND discussion.id_discussion='$id'");
            $mat =  $rep -> fetch();
            ?> 
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


<?php

  
 $rep = $bdd->query('select * from anime');
 
 if(isset($_GET['titre_anime']) AND !empty($_GET['titre_anime'])) {
    $q = htmlspecialchars($_GET['titre_anime']);
    $articles = $bdd->query('SELECT titre_anime FROM anime WHERE titre_anime LIKE "%'.$q.'%" ORDER BY id_anime DESC');
    if($articles->rowCount() == 0) {
       $articles = $bdd->query('SELECT titre_anime FROM anime WHERE CONCAT(titre_anime, contexte_anime) LIKE "%'.$q.'%" ORDER BY id_anime DESC');
    }
 }
    $rep -> closeCursor();           

    ?>



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
    
  
    echo $mat['message'].'<br/>';

    echo "Pour ajouter un commentaire vous pouvez le faire  <a href ="."creation_commentaire.php?id_discussion=".$_GET['id_discussion']."> ici </a>"; 
    
    $mat -> closeCursor();
    ?>
  
    
 

    

    <?php
    /*
        session_start();

        if(isset($_SESSION['client'])) {
            echo "<form action="."../ajouter.php"." method="."post".">";  
            echo "<p>";
            echo  "<input type="."hidden"." name="."idart"." value="."$id".">";
            echo "</p>";
            echo "<p>";
            echo "Combien d'exemplaires souhaitez vous ?";
            echo  "<input type="."number"." name="."nbart"." value="."".">";
            echo "</p>";
            echo "<p>";
            echo "<input type="."submit"." value="."valider panier"." >";
            echo "</p>";

            echo"</form>";
           
        }*/
    ?>
    </div>


    <div>
    <?php
    echo "Pour ajouter un commentaire vous pouvez le faire  <a href ="."discussions.php"."> ici </a>"; 
    echo "rrhjtekjrhtekrj";
    ?>
    


    </div>



    </body>

    </html>
