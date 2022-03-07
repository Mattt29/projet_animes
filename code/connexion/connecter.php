<html>
<head>
<meta http-equiv="Content-Type"
content="text/html; charset=UTF-8" />
<link rel="stylesheet" href="../styles/main.css"
type="text/css" media="screen" />
<title>Se connecter</title>
</head>
<body>

<?php
$mail=$_POST['mail'];

$mdp=$_POST['mdp'];

echo $mail.'<br />';
echo $mdp.'<br />';

include('../bd.php');
	$bdd =getBD();
	$sql = $bdd->query('SELECT * from utilisateur where mail="'.$mail.'"');
	while ($ligne = $sql ->fetch()) {
	$id_utilisateur=$ligne['id_utilisateur'];
	$pseudo=$ligne['pseudo'];
	#$mdptest=$ligne['mdp'];
	}  
	$sql-> closeCursor();
	
if($mail=="" || $mdp=="" || !isset($id_utilisateur) || $id_utilisateur=="" || !isset($pseudo) || $pseudo=="" ) {
	echo 'Erreur de saisie, retour à la page de connexion';
	echo '<meta http-equiv="Refresh" content="3; 
	url=connexion.php?mail='.$mail.'"/>' ;
		
	} 
	
else {
echo 'Connexion réussie, redirection'.'<br />';

session_start();
$_SESSION['utilisateur']=array();
$_SESSION['utilisateur']['id_utilisateur']=$id_utilisateur;
$_SESSION['utilisateur']['pseudo']=$pseudo;
echo 'utilisateur  :';
echo $_SESSION['utilisateur']['pseudo'];

echo '<meta http-equiv="Refresh" content="4; 
	url=../index.php"/>' ;	
}	

	/* 
echo $mail.'<br />';
echo $mdp.'<br />';
echo $id_client.'<br />';
echo $nom.'<br />';
echo $prenom.'<br />';
 
*/
	


	?>


</body>
</html>