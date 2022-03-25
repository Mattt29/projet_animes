<!DOCTYPE html>
	<html>
	<head>
		<link rel="stylesheet" href="../styles/main.css" type="text/css" media="screen" />
		<meta http-equiv="content-type" content="text/html; charset=utf-8" /> 
        <script src="https://kit.fontawesome.com/c6c76fd424.js" crossorigin="anonymous"></script>      

		<title>Bienvenue sur list'animes</title>
        <?php
        include("../bd.php") ;
        $bdd = getBD();
        ?>
     
	</head>

<body>


<p>
    Bonjour, voici les informations nécéssaires pour créer un commentaire : </br>
</p>

<p>
            Titre de la discussion : 
            <?php echo $_GET['id_discussion'];
            $popo =$_GET['id_discussion'] ;
            echo $popo;?>
</p>

    <form action="valider_commentaire.php" method="post" autocomplete="off" >
        <p>
            Contenu du commentaire :
            <textarea type="text" name="adr" value="" size="250" id="discussion"></textarea>
        </p>
       
        <p>
            <input type="hidden" name="id_discussion" value="<?php echo $_GET['id_discussion'];?>" >
        </p>

        <p>
            <input type="submit" value="Envoyer" id="boutonnouveau">
        </p>
    </form></br>

    <p>
        <?php echo"<a href="."valider_commentaire.php?id_discussion=".$popo."> Envoyer</a>"?>
    </p>

<div class="bandeau"> 
<object data="../bandeau.php" width="100%" height="100%">
</object>
</div>

</body>



</html>

    