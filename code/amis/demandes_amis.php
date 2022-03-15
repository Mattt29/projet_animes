<?php
session_start();
?>
<html>
<head>

  <link rel="stylesheet" href="../styles/main.css" type="text/css" media="screen" />
        <meta http-equiv="content-type" content="text/html; charset=utf-8" /> 
        <script src="https://kit.fontawesome.com/c6c76fd424.js" crossorigin="anonymous"></script>
        <img src=../img/background.png id=fondecran class=fondecran alt=/>

<title>Demandes d'amis</title>
		  <?php
        include('../bd.php') ;
        $bdd = getBD();
        ?>
</head>

<body>
<p id='profil'>
<div class="homepage"> <a href="../index.php"> <i class="fa-solid fa-house"></i> </a>
</div>
</p>
<?php 

		if(isset($_SESSION['utilisateur'])) {
		$id=$_SESSION['utilisateur']['id_utilisateur'];
		?><table>
<th colspan="4"> Demandes d'amis </th>	
		<?php
		$demande = $bdd->query('SELECT * from etre_ami where id_utilisateur1='.$id); 
				 									
		while($ligne=$demande->fetch()) {		
					
		$ami=$bdd->query('SELECT * from etre_ami where id_utilisateur1='.$ligne['id_utilisateur'].' and id_utilisateur='.$id); 		
 		$isami=$ami->fetch();		
 			if(empty($isami)) {	
 			
 		$profil=$bdd->query('SELECT id_utilisateur, pseudo, url_pp  FROM utilisateur, photo_de_profil WHERE id_utilisateur='.$ligne['id_utilisateur'].' and utilisateur.id_photo_de_profil=photo_de_profil.id_photo_de_profil');
 		$ligneprofil=$profil->fetch();	
 		?> <tr><td><?php echo "<img class='pp' src='../".$ligneprofil['url_pp']."' width='150' height='200'";?></td>
 		<td><?php echo $ligneprofil['pseudo'];?></td>
<td>
<form  action="ajout_ami.php" method="post" autocomplete="off">
<p>
<input type="hidden" name="id_utilisateur" value="<?php echo $ligneprofil['id_utilisateur'] ?>"/>
</p>

<p>
<input type="submit" value="Accepter la demande">

</p>
</form>
</td> 		
 		
 		<td>
<form  action="rejet_ami.php" method="post" autocomplete="off">
<p>
<input type="hidden" name="id_utilisateur" value="<?php echo $ligneprofil['id_utilisateur'] ?>"/>
</p>

<p>
<input type="submit" value="Rejeter la demande">

</p>
</form>
</td>

 							
 							<?php }
 			$ami->closeCursor();
 												  }
 				  $demande -> closeCursor();

?> </table> <?php
														}
?>



</body>

</html>






