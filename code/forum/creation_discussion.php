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
    Bonjour, voici les informations nécéssaires pour créer une discussion : <br>
</p>
    
    <form action="valider_discussion.php" method="post" autocomplete="off" >
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
    
    </form><br>


<div class="bandeau"> 
<object data="../bandeau.php" width="100%" height="100%">
</object>
</div>
</body>




</html>

    