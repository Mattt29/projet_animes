<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="jolie.css" type="text/css" media="screen" />
        <meta http-equiv="content-type" content="text/html; charset=utf-8" /> 
        <title>Bienvenue sur list'animes</title>
        
    </head>



    <body>
 
<div class=acceuilhaut>
<div id=profil>
<img src="../img/profil.png" alt="some_text" style="opacity:0.4;filter:alpha(opacity=40);" id="imgprofile"/>

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



<div id= "barre_recherche">
                <form action="" class="formulaire">
                <input class="champ" type="text" value="rechercher un anime, un profil..." />
                
                     
                </form>
</div>
</div>



<div class= "tableau" >
<table >
    
    
        <tr>
            <th>top 3 animes</th>
            <th> Notes </th>
        </tr>
        <tr>
        
        
        <?  
        include("bd.php") ;
        $bdd = getBD();
        
        $rep = $bdd->query('select * from anime');


        //echo "<img src= url(".$ligne['note_generale_anime'].")";
        $i=0;
        while( $i<4 && $ligne = $rep -> fetch() ){ 
        echo "<tr> <td> <img src='".$ligne['image_url_anime']."'</td>
        <td>".$ligne['note_generale_anime']."</td>";
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
        include("bd.php") ;
        $bdd = getBD();
        
        $rep = $bdd->query('select titre_discussion from discussion');


        
        echo $i;
        while( $i<4 && $ligne = $rep -> fetch() ){ 
        echo "<tr><td>".$ligne['titre_discussion']."</td>";
        $i=$i+1;
        } 
        ?> 
        </tr>
    </tbody>
</table>
</div>




</body>


</html>

