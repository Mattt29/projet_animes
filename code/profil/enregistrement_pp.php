<html>
<head>

  <link rel="stylesheet" href="../styles/main.css" type="text/css" media="screen" />
        <meta http-equiv="content-type" content="text/html; charset=utf-8" /> 
        <script src="https://kit.fontawesome.com/c6c76fd424.js" crossorigin="anonymous"></script>
        <img src=../img/background.png id=fondecran class=fondecran alt=/>

  
 <?php 
 
	include('../bd.php');
	$bdd =getBD();
	$id=$_GET['id_photo_de_profil'];
	$rep = $bdd->query('UPDATE utilisateur SET id_photo_de_profil='.$id.' WHERE '.$_SESSION["utilisateur"].'=utilisateur.id_photo_de_profil)');

	echo 'yo';

 	echo '<meta http-equiv="Refresh" content="5; url=profil.php"/>';

?>

<title>Enregistrement</title>
</head>


<body>


</body>

</html>
