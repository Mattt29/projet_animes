<?php
session_start();
?>
<html>
<head>

  <link rel="stylesheet" href="../styles/main.css" type="text/css" media="screen" />
        <meta http-equiv="content-type" content="text/html; charset=utf-8" /> 
        <script src="https://kit.fontawesome.com/c6c76fd424.js" crossorigin="anonymous"></script>
        <img src="../img/background.png" id="fondecran" class="fondecran" alt=""/>

<title>liste d'amis</title>
</head>

<body>
<?php 

		if(isset($_SESSION['utilisateur'])) {
		$id=$_SESSION['utilisateur']['id_utilisateur'];
		?><table>
		
		<?php
		$ami = $bdd->query('SELECT * from etre_ami where id_utilisateur='.$id); 
				 									
		while($ligne=$ami->fetch()) {					
		$demande=$bdd->query('SELECT * from etre_ami where id_utilisateur='.$ligne['id_utilisateur1'].' and id_utilisateur1='.$id); 		
 		$lignedemande=$demande->fetch();		
 			if(!empty($lignedemande)) {	?>
 		
 		<td>
<?php
 											}
 			else { 
 			?>
 			<td><?php echo "Demande d'ami déjà envoyée"?></td></tr>
 		<?php 
 				  }
 				  $demande -> closeCursor();
 	}
?> </table> <?php
}
?>
</body>

</html>


