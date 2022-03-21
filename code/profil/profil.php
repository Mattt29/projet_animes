<?php 
session_start();
?>

<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="../styles/main.css" type="text/css" media="screen" />
        <meta http-equiv="content-type" content="text/html; charset=utf-8" /> 
        <script src="https://kit.fontawesome.com/c6c76fd424.js" crossorigin="anonymous"></script>
        <img src=../img/background.png id=fondecran class=fondecran alt=""/>
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
      <div class="acceuilhaut">
		<div id="profil">
		<div class="homepage"> 
			<a href="../index.php"> <i class="fa-solid fa-house"></i> </a>
		</div>

		<div id = "connexion" >
			<?php
				if(!isset($_SESSION['utilisateur'])){ ?>
			   <p id="Se_connecter"> <a href="../connexion/connexion.php"> Se connecter </a> </p>
    			<?php }
    			else {
    				echo  '<br />';
					echo "Bonjour ".$_SESSION['utilisateur']['pseudo'];
				?>	

	<p id="Se_deconnecter"> <a href="../connexion/deconnexion.php"> Se déconnecter </a> </p>

	

    <?php }?>
</div>

</div>

<form method="GET" action="../recherche.php" autocomplete="on">
    
    <input type="search" name="recherche"  placeholder="Recherche anime.." id="barre_recherche"  />
    <input type="submit" value="Valider" id="bouton_validé" />
</form>

</div>
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
        <p id="photo"> <a href="pp.php"> Changer de pp </a></p>
<?php } ?>

</div>

    </body>

</html><?php 
session_start();
?>

<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="../styles/main.css" type="text/css" media="screen" />
        <meta http-equiv="content-type" content="text/html; charset=utf-8" /> 
        <script src="https://kit.fontawesome.com/c6c76fd424.js" crossorigin="anonymous"></script>
        <img src=../img/background.png id=fondecran class=fondecran alt=""/>
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
            	position: absolute;
            	left: 70%;
            	top: 25%;
					text-align: center;
            }
        </style>
    </head>



    <body>
      <div class="acceuilhaut">
		<div id="profil">
		<div class="homepage"> 
			<a href="../index.php"> <i class="fa-solid fa-house"></i> </a>
		</div>

		<div id = "connexion" >
			<?php
				if(!isset($_SESSION['utilisateur'])){ ?>
			   <p id="Se_connecter"> <a href="../connexion/connexion.php"> Se connecter </a> </p>
    			<?php }
    			else {
    				echo  '<br />';
					echo "Bonjour ";
					echo $_SESSION['utilisateur']['pseudo'];
				?>	

	<p id="Se_deconnecter"> <a href="../connexion/deconnexion.php"> Se déconnecter </a> </p>

	

    <?php }?>
</div>

</div>

<form method="GET" action="../recherche.php" autocomplete="on">
    
    <input type="search" name="recherche"  placeholder="Recherche anime.." id="barre_recherche"  />
    <input type="submit" value="Valider" id="bouton_validé" />
</form>

</div>
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
        <p id="photo"> <a href="pp.php"> Changer de pp </a></p>
<?php } ?>

</div>

    </body>

</html>