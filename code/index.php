<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="styles/main.css" type="text/css" media="screen" />
        <meta http-equiv="content-type" content="text/html; charset=utf-8" /> 
        <script src="https://kit.fontawesome.com/c6c76fd424.js" crossorigin="anonymous"></script>
        <img src=img/background.png id=fondecran class=fondecran alt=""/>
        <title>Bienvenue sur list'animes</title>
        <?php
        include("bd.php") ;
        $bdd = getBD();
        ?>
    </head>



    <body>
   
<div class="acceuilhaut">
<div id="profila">
 




<div id = "connexion" >
<?php
    session_start();
    if(!isset($_SESSION['utilisateur']))
    { ?>

    <p id="Se_connecter"> <a href="connexion/connexion.php"> Se connecter </a> </p>

    <?php }

    else {
    echo  '<br />';

 
 	 		$pp=$bdd->query('SELECT url_pp FROM utilisateur, photo_de_profil WHERE id_utilisateur='.$_SESSION['utilisateur']['id_utilisateur'].' and utilisateur.id_photo_de_profil=photo_de_profil.id_photo_de_profil');
 			$lignepp=$pp->fetch();
   ?> <a href="profil/profil.php" ><?php echo "<img class='pp' src='".$lignepp['url_pp']."' width='150' height='200'";?></a>    
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



<div class= "tableau" >
<table >
    
    
        <tr>
            <th> Top 3 animes</th>
            <th> Notes </th>
            <th> Titre </th>
        </tr>
        <tr>
        
        
        <?php
        
        
        $rep = $bdd->query('select * from anime');


        
        $i=0;
        while( $i<3 && $ligne = $rep -> fetch() ){ 
        echo "<tr> <td> <img src='".$ligne['image_url_anime']."'</td>
        <td>".$ligne['note_generale_anime']."</td><td>"
        ."<a href ="."fiche_anime.php?id_anime=".$ligne['id_anime'].">".$ligne['titre_anime']."</a>"."</td>";
        $i=$i+1;
        }   
        
     $rep ->closeCursor();
    

            ?>
        
        </tr>
      
    
</table>
</div>

<div class= "tableau">
<table>
    
    <tbody>
        <tr>
            <th>FORUM : discussions récentes</th>
        </tr>
        
       <tr>
        <?php
        
        
        $rep = $bdd->query('select * from discussion');


        
        
        while( $i<4 && $ligne = $rep -> fetch() ){ 
            
        echo "<tr><td> <a href ="."discussions.php?id_discussion=".$ligne['id_discussion'].">".$ligne['titre_discussion']."</a></td>";
        $i=$i+1;
        } 

        $rep -> closeCursor();
        ?> 
        
        </tr>
         <tr>

        <td>
<?php
        if(isset($_SESSION['utilisateur']))
        { ?>
         <tr>

        <td>
        vous pouvez créer une discussion <a href="discussion.php">  ici </a>
        
         </td>
        </tr>
        <?php } ?>
        </td>
        </tr>
      
        
    </tbody>
</table>
</div>




</body>


</html>

