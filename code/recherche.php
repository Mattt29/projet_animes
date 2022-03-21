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
<p id='profil'>
<div class="homepage"> <a href="index.php"> <i class="fa-solid fa-house"></i> </a>
</div>
</p> <div id="profila">
 

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
    $articles = $bdd->query('SELECT id_anime,titre_anime,type_anime,note_generale_anime,image_url_anime FROM anime WHERE titre_anime LIKE "%'.$q.'%" ORDER BY popularite_anime ASC ,note_generale_anime DESC, id_anime DESC LIMIT 10');
    if($articles->rowCount() == 0) {
       $articles = $bdd->query('SELECT id_anime,titre_anime,type_anime,note_generale_anime,image_url_anime FROM anime WHERE CONCAT(titre_anime, contexte_anime) LIKE "%'.$q.'%" ORDER BY popularite_anime ASC,note_generale_anime,id_anime DESC LIMIT 10');
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
    
    	<tr><td><?php echo "<img class='pp' src='".$ligne2['url_pp']."' width='150' height='200' >";?></td>
 		<td><?php echo $ligne2['pseudo'];?></td>
		<?php if(isset($_SESSION['utilisateur']))
    {  		
 		
 	  $ami = $bdd->query('SELECT * from etre_ami where (id_utilisateur='.$id.' and id_utilisateur1='.$ligne2['id_utilisateur'].') OR (id_utilisateur1='.$id.' and id_utilisateur='.$ligne2['id_utilisateur'].')  '); 
		$i=0;		
		while($ligne3 =$ami->fetch()){
		$i=$i+1;	
		}
		#echo $i;
		if($i!==2) {		 		
		
		$demande=$bdd->query('SELECT * from etre_ami where id_utilisateur='.$id.' and id_utilisateur1='.$ligne2['id_utilisateur']); 		
 		$lignedemande=$demande->fetch();
 			if(empty($lignedemande)) {
 				
 				?>
 		
 		<td>
<form  action="amis/ajout_ami.php" method="post" autocomplete="off">
<p>
<input type="hidden" name="id_utilisateur" value="<?php echo $ligne2['id_utilisateur'] ?>"/>
</p>

<p>
<input type="hidden" name="recherche_ami" value="<?php echo $q ?>"/>
</p>

<p>
<input type="submit" value="Ajouter en ami">

</p>
</form>
</td>
<?php
 											}
 			else { 
 			?>
 			<td><?php echo "Demande d'ami déjà envoyée"?></td></tr>
 		<?php 
 				  }
 				  $demande -> closeCursor();
 	}
 	
 	else {
 		?>
 		
 		<td><?php echo '<a href ="ami/profil_ami.php?id='.$ligne2['id_utilisateur'].'">Voir le profil</a>'?></td></tr>
 		<?php 
 		  }
 		  $ami -> closeCursor(); 
    }
 	  
    														}
       $utilisateurs -> closeCursor();   
 ?>
	
		
	</table>
	
	
	<!-- ### Forum ### -->
	<table>
	  <?php  $forum = $bdd->query('SELECT id_discussion, titre_discussion, pseudo, discussion.id_utilisateur FROM discussion,utilisateur WHERE CONCAT(titre_discussion, pseudo) LIKE "%'.$q.'%" and discussion.id_utilisateur=utilisateur.id_utilisateur ORDER BY titre_discussion ASC, id_discussion DESC LIMIT 10');
		#echo 
		while($ligne4 =$forum->fetch()) { ?>  
    	<tr><td><?php echo $ligne4['titre_discussion'];?></td>
 		<td><?php echo $ligne4['pseudo'];?></td>
 		<td><?php echo '<a href ="forum.php?id_discussion='.$ligne4['id_discussion'].'">Voir la discussion</a><br>';
 		$messages = $bdd->query('SELECT COUNT(message) as msg from discussion,commentaires where discussion.id_discussion=commentaires.id_discussion and discussion.id_discussion='.$ligne4['id_discussion']); 
		$ligne5 =$messages->fetch();
		echo $ligne5['msg'].'  messages';
		$messages -> closeCursor();   
		?></td>
	
 	  <?php
    }	
		
		$utilisateurs -> closeCursor();   
 ?>
	
		
	</table>
<?php  }  

    ?>
    
</div>






</body>

</html>
