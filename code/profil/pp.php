<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="../styles/main.css" type="text/css" media="screen" />
        <meta http-equiv="content-type" content="text/html; charset=utf-8" /> 
        <script src="https://kit.fontawesome.com/c6c76fd424.js" crossorigin="anonymous"></script>
        <img src=../img/background.png id=fondecran class=fondecran alt=""/>
        <title>Bienvenue sur list'animes</title>
        <?php
        include("../bd.php") ;
        $bdd = getBD();
        ?>
        <style type="text/css">
				.pp+.pp{
					position: relative;
					left: 10px;
					top: -10px;				
				}   
       </style>
    </head>



    <body>
    	
		 <?php
        
        
        $rep = $bdd->query('select * from photo_de_profil');
        
        while($ligne = $rep -> fetch() ){
        //echo "<a href ="."profil.php?id_photo_de_profil=".$ligne['url.pp']."><img src=".$ligne['url_pp']."width='150' height='150' </br></a>";
       ?>
<?php
        //echo "<img src='../".$ligne['url_pp']."' width='150' height='150'"."</br>";
		  echo '<a href =enregistrement_pp.php?id_photo_de_profil='.$ligne['id_photo_de_profil'].'> <img src="../'.$ligne['url_pp'].'"></a>';
        }   
                //echo "<a href=profil.php>Sélectionner</a>";

        
     $rep ->closeCursor();
    

            ?>
        
    




	</body>


</html>
