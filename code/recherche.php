<html>
    <head>
        <link rel="stylesheet" href="styles/main.css" type="text/css" media="screen" />
        <meta http-equiv="content-type" content="text/html; charset=utf-8" /> 
        <script src="https://kit.fontawesome.com/c6c76fd424.js" crossorigin="anonymous"></script>
        <img src=img/background.png id=fondecran class=fondecran alt=""/>
        <style>
        
			body {
			font-size: 20px;			
			}         
        </style>
        <title>Bienvenue sur list'animes</title>
        <?php
        include('bd.php') ;
        $bdd = getBD();
        ?>
    </head>

<body>

<div class="acceuilhaut">
<div id="profila">
 

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
    $id=$_SESSION['utilisateur']['id_utilisateur'];

    ?>	
	<p id="Se_deconnecter"> <a href="connexion/deconnexion.php"> Se déconnecter </a> </p>
	
	  <?php }?>
	  
	  
</div>
</div>
<?php
$recherche=$_GET['recherche'];
?>

<form method="GET" action="recherche.php" autocomplete="on">
    
    <input type="search" name="recherche"  placeholder="Recherche anime.." id="barre_recherche" value="<?php echo $recherche ?>" />
    <input type="submit" value="Valider" id="bouton_validé" />
</form>



<div class= "tableau" >
<?php

  
# $rep = $bdd->query('select * from anime');
# $rep -> closeCursor(); 

 if(isset($_GET['recherche']) AND !empty($_GET['recherche'])) {
    $q = htmlspecialchars($_GET['recherche']);
    
    ### Animes ###
    $articles = $bdd->query('SELECT id_anime,titre_anime,type_anime,note_generale_anime,image_url_anime FROM anime WHERE titre_anime LIKE "%'.$q.'%" ORDER BY note_generale_anime DESC, id_anime DESC LIMIT 10');
    if($articles->rowCount() == 0) {
       $articles = $bdd->query('SELECT id_anime,titre_anime,type_anime,note_generale_anime,image_url_anime FROM anime WHERE CONCAT(titre_anime, contexte_anime) LIKE "%'.$q.'%" ORDER BY note_generale_anime,id_anime DESC LIMIT 10');
    }
    ?> <table>
   
     <?php  
    while($ligne1 =$articles->fetch()) { ?>
    
    	<tr><td><?php echo "<img src='".$ligne1['image_url_anime']."'"?></td>
 		<td><?php echo $ligne1['titre_anime'].'<br> <br>'; 
 		echo $ligne1['type_anime'].'<br> <br>';
 		echo 'note : '.$ligne1['note_generale_anime']; ?></td>
 		<td><?php echo '<a href ="fiche_anime.php?id_anime='.$ligne1['id_anime'].'">Voir la fiche</a>' ?></td></tr>
 		<?php    
    }
       $articles -> closeCursor();   
 ?>
	</table>
	
	
	<!-- ### Utilisateurs ### -->
	<table>
	  <?php  $utilisateurs = $bdd->query('SELECT id_utilisateur, pseudo, url_pp  FROM utilisateur, photo_de_profil WHERE pseudo LIKE "%'.$q.'%" and utilisateur.id_photo_de_profil=photo_de_profil.id_photo_de_profil ORDER BY pseudo LIMIT 10');
	
		while($ligne2 =$utilisateurs->fetch()) { ?>
    
    	<tr><td><?php echo "<img src='".$ligne2['url_pp']."'";?></td>
 		<td><?php echo $ligne2['pseudo'];?></td>
 		<?php  $ami = $bdd->query('SELECT * from etre_ami where (id_utilisateur='.$id.'and id_utilisateur1='.$ligne2['id_utilisateur']') OR (id_utilisateur1='.$id.'and id_utilisateur='.$ligne2['id_utilisateur']')  '); 
		#$ligne3 =$ami->fetch();
		if(empty($ami)) {		 		
 		?>
 		
 		<td><?php echo '<a href ="fiche_utilisateur.php?id_utilisateur='.$ligne2['id_utilisateur'].'">Ajouter en ami</a>'?></td></tr>
 		<?php  
 	}
 	else {
 		?>
 		
 		<td><?php echo '<a href ="fiche_utilisateur.php?id_utilisateur='.$ligne2['id_utilisateur'].'">Ajouter en ami</a>'?></td></tr>
 		<?php 
 	}
 	  
    }
       $utilisateurs -> closeCursor();   
 ?>
	
		
<?php  }  
#rowspan="3"   
# print_r($articles);
    ?>
    
</div>






</body>

</html>
