<!DOCTYPE html>
	<html>
	<head>
		<link rel="stylesheet" href="styles/main.css" type="text/css" media="screen" />
		<meta http-equiv="content-type" content="text/html; charset=utf-8" /> 
        <script src="https://kit.fontawesome.com/c6c76fd424.js" crossorigin="anonymous"></script>      
		<img src=img/background.png id=fondecran class=fondecran alt=/>
		<title>Bienvenue sur list'animes</title>
        <?php
        include("bd.php") ;
        $bdd = getBD();
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
	
    <?php }?>
    
      

</div>
</div>


<form method="GET">
    
    <input type="search" name="titre_anime" placeholder="Recherche anime.." id="barre_recherche" />
    <input type="submit" value="Valider" id="bouton_validé" />
</form>

</div>

<?php
//if(isset($_SESSION['client'])) {
?>

<p>
    Bonjour, voici les informations nécéssaires pour créer une discussion : </br>
</p>
    
    <form action="forum.php" method="post" autocomplete="off" >
        <p>
            Titre de la discussion : 
            <input type="text" name="titre" value=""/>
        </p>
        <p>
            date de la discussion : 
            <input type="date" name="date" value=""/>
        </p>
        <p>
            contenu de l'article :
            <textarea type="text" name="adr" value="" size="250" id="discussion"></textarea>
        </p>
    
        <p>
            <input type="submit" value="Envoyer" id="boutonnouveau">
        </p>
    
    </form></br>

<?php
$rep-> closeCursor(); 
?>

</body>



</html>

    