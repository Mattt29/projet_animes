<!DOCTYPE html>
	<html>
	<head>
		<link rel="stylesheet" href="styles/main.css" type="text/css" media="screen" />
		<meta http-equiv="content-type" content="text/html; charset=utf-8" /> 
        <script src="https://kit.fontawesome.com/c6c76fd424.js" crossorigin="anonymous"></script>      
		<img src=img/background.png id=fondecran class=fondecran alt=/>
		<title>Bienvenue sur list'animes</title>
        <?php
        include("bd.php") ;
        $bdd = getBD();
        ?>
     
	</head>

<body>

<div class=acceuilhaut>
<div id=profila>
 

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
<table>
    
    <tbody>
        <tr>
            <th>FORUM : discussions récentes</th>
        </tr>
        
       <tr>
        <?php
        
        
        $rep = $bdd->query('select * from discussion');


        
        
        while( $ligne = $rep -> fetch() ){ 
        echo $ligne['id_discussion'];
        echo "<tr><td> <a href ="."discussions.php?id_discussion=".$ligne['id_discussion'].">".$ligne['titre_discussion']."</a></td>";
        } 

        $rep -> closeCursor();
        ?> 
        
        </tr>
        <?php  
        if(isset($_SESSION['client'])) {
        echo" <tr>";

        echo "<td>";

        echo  "vous pouvez créer une discussion <a href="."discussion.php".">  ici </a>
        </td>
        </tr>";
        }?>
        
    </tbody>
</table>



</html>

    