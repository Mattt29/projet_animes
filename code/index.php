<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="jolie.css" type="text/css" media="screen" />
        <meta http-equiv="content-type" content="text/html; charset=utf-8" /> 
        <script src="https://kit.fontawesome.com/c6c76fd424.js" crossorigin="anonymous"></script>
        <title>Bienvenue sur list'animes</title>
        <?php
        include("bd.php") ;
        $bdd = getBD();
        ?>
    </head>



    <body>
 
<div class=acceuilhaut>
<div id=profila>
 

<div class="iconesize"> <i class="fa-solid fa-user-large"></i></div>


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



<form method="GET">
    
    <input type="search" name="titre_anime" placeholder="Recherche anime.." id="barre_recherche" />
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
        
        
        <?  
        
        
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
            <td>FORUM : discussions récentes</td>
        </tr>
        <tr>
        <?php
        
        
        $rep = $bdd->query('select titre_discussion from discussion');


        
        
        while( $i<4 && $ligne = $rep -> fetch() ){ 
        echo "<tr><td>".$ligne['titre_discussion']."</td>";
        $i=$i+1;
        } 

        $rep -> closeCursor();
        ?> 
        </tr>
    </tbody>
</table>
</div>




</body>


</html>

