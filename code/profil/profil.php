<?php 
session_start();
?>

<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="../styles/main.css" type="text/css" media="screen" />
        <meta http-equiv="content-type" content="text/html; charset=utf-8" /> 
        <script src="https://kit.fontawesome.com/c6c76fd424.js" crossorigin="anonymous"></script>

        <title>Profil</title>
        <?php
        include("../bd.php") ;
        $bdd = getBD();
        ?>
        <style>
            #profil{
            	font-size: 100%;
            }
            #photo{
            	position: fixed;
            	left: 70%;
            	top: 25%;
					text-align: center;
            }
        </style>
    </head>



    <body>
     
<div id="page_profil">
        <?php if(isset($_SESSION['utilisateur'])) {
		
		$id=$_SESSION['utilisateur']['id_utilisateur'];
	 	$profil = $bdd->query('SELECT * from utilisateur where id_utilisateur='.$id); 		
			$ligne =$profil->fetch();
				echo 'Nom : '.$ligne['nom'].'<br>';				
				echo 'Prénom : '.$ligne['prenom'].'<br>';	
				echo 'Pseudo : '.$ligne['pseudo'].'<br>';	
				echo 'Adresse mail : '.$ligne['mail'].'<br>';	
				
				$profil->closeCursor();
				?>
        <p> <a href="../amis/liste_amis.php"> Liste d'amis </a> </p>
        <p> <a href="../amis/demandes_amis.php"> Demandes d'amis </a> </p>
        <p> <a href="pp.php"> Changer de pp </a></p>
<?php } ?>

</div>
<div class="bandeau"> 
<object data="../bandeau.php" width="100%" height="100%">
</object>
</div>
    </body>

</html>