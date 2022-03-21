<!DOCTYPE html>
	<html>
	<head>
		<link rel="stylesheet" href="styles/main.css" type="text/css" media="screen" />
		<meta http-equiv="content-type" content="text/html; charset=utf-8" /> 
        <script src="https://kit.fontawesome.com/c6c76fd424.js" crossorigin="anonymous"></script>      
		<img src=img/background.png id=fondecran class=fondecran alt=/>
		<title>Bienvenue sur list'animes</title>
        <?php
        //include("bd.php") ;
        //$bdd = getBD();
        ?>
     
	</head>

<body>

<div class=acceuilhaut>
<div id=profila>
 

   <div class="homepage"> <a href="index.php"> <i class="fa-solid fa-house"></i> </a>
 </div>
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

    ?>	
	<p id="Se_deconnecter"> <a href="connexion/deconnexion.php"> Se déconnecter </a> </p>
	
    <?php } ?>
    
      

</div>
</div>


<form method="GET">
    
    <input type="search" name="titre_anime" placeholder="Recherche anime.." id="barre_recherche" />
    <input type="submit" value="Valider" id="bouton_validé" />
</form>

</div>


<?php 
        include ("bd.php");
        session_start();
        function enregistrercom($message,$id_discussion,$id_utilisateur){
                
            $bdd1=getBD();
            //$id_discussion =$bdd -> query('Select id_discusson from discussion');
            $totol = 'INSERT INTO `commentaires`(`message`, `id_discussion`, `id_utilisateur`) VALUES ("'.$message.'","'.$id_discussion.'","'.$id_utilisateur.'")';
            
            $bdd1 -> query($totol);
            
        }
                  
        $id_util=$_SESSION['utilisateur']['id_utilisateur'];
        $texte=$_POST['adr'];

        $bdd3 = getBD();
        $id_discu=$_GET['id_discussion'];

        echo $id_util;
        echo $texte;
        echo $id_discu;
        
        enregistrercom($texte,$id_discu,$id_util);   
        ?>

<p>
Votre commentaire a bien été enregistrée, vous allez être rediriger vers le forum.
</p>

<?php
//echo '<meta http-equiv="refresh" content="0; url=forum.php"/>';
?>

</body>



</html>

    