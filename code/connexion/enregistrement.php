<html>
<head>
 <?php 
 
function enregistrer(string $nom,string $prenom,string $pseudo,string $mail, string $mdp1) {
	$sql='INSERT INTO utilisateur (nom, prenom, pseudo, mail, mdp) VALUES ('.$nom.','.$prenom.','.$pseudo.','.$mail.','.$mdp1.')';
	return $sql;
} ;
  
if($_POST['n']=="" || $_POST['p']=="" || $_POST['pseudo']=="" || $_POST['mail2']=="" || 
	$_POST['mdp1']=="" || $_POST['mdp1']!=$_POST['mdp2']) {

	echo '<meta http-equiv="Refresh" content="0; 
	url=connexion.php?n='.$_POST["n"].'&p='.$_POST["p"].'&pseudo='.$_POST["pseudo"].'&mail2='.$_POST["mail2"]. '"/>' ;
	
}

else {
	include('../bd.php');
	$bdd =getBD();
	$rep = $bdd->query(enregistrer('"'.$_POST['n'].'"','"'.$_POST['p'].'"','"'.$_POST['pseudo'].'"','"'.$_POST['mail2'].
	'"','"'.$_POST['mdp1'].'"' ));
	/* $rep-> closeCursor(); */
	$ad = enregistrer($_POST['n'].'"','"'.$_POST['p'].'"','"'.$_POST['pseudo'].'"','"'.$_POST['mail2'].
	'"','"'.$_POST['mdp1'].'"' );
	echo 'yo';
	echo $ad;
 	echo '<meta http-equiv="Refresh" content="3; url=../index.php"/>';
}
?>

<title>Enregistrement</title>
</head>


<body>


</body>

</html>
