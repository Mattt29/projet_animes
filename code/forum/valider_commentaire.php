<?php 
session_start();
?>
<!DOCTYPE html>
	<html>
	<head>
		<link rel="stylesheet" href="../styles/main.css" type="text/css" media="screen" />
		<meta http-equiv="content-type" content="text/html; charset=utf-8" /> 
        <script src="https://kit.fontawesome.com/c6c76fd424.js" crossorigin="anonymous"></script>      

		<title>Bienvenue sur list'animes</title>
        <?php
        //include("bd.php") ;
        //$bdd = getBD();
        ?>
        
	</head>

<body>




<?php 
        include ("../bd.php");
        function enregistrercom($message,$id_discussion,$id_utilisateur){
                
            $bdd1=getBD();
            //$id_discussion =$bdd -> query('Select id_discusson from discussion');
            $totol = 'INSERT INTO `commentaires`(`message`, `id_discussion`, `id_utilisateur`) VALUES ("'.$message.'","'.$id_discussion.'","'.$id_utilisateur.'")';
            
            $bdd1 -> query($totol);
            
        }
                  
        $id_util=$_SESSION['utilisateur']['id_utilisateur'];
        $texte=$_POST['adr'];

        $bdd3 = getBD();
        $id_discu=$_POST['id_discussion'];

        echo $id_util;
        echo $texte;
        echo $id_discu;
        
        enregistrercom($texte,$id_discu,$id_util);   
        ?>

<p>
Votre commentaire a bien été enregistré, vous allez être redirigé vers le forum.
</p>

<?php
echo '<meta http-equiv="refresh" content="5; url=forum.php"/>';
?>

<div class="bandeau"> 
<object data="../bandeau.php" width="100%" height="100%">
</object>
</div>

</body>



</html>

    