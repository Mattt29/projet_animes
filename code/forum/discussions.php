<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="../styles/main.css" type="text/css" media="screen" />
        <meta http-equiv="content-type" content="text/html; charset=utf-8" /> 
        <script src="https://kit.fontawesome.com/c6c76fd424.js" crossorigin="anonymous"></script>

           <?php
            
            include ("../bd.php");
            $bdd=getBD();
        
            $id=$_GET["id_discussion"];
            
           
            $rep = $bdd -> query("select * from discussion,commentaires where discussion.id_discussion=commentaires.id_discussion
            AND discussion.id_discussion='$id'");
            
            ?> 
    </head>

   
<body>
    

<p id="Titrearticle">
<?php      
while( $mat =  $rep -> fetch()){
echo $mat['titre_discussion'];
?>
</p>


<div>

  <?php

    echo $mat['message'].'<br/>';
}
    echo "Pour ajouter un commentaire vous pouvez le faire  <a href ="."creation_commentaire.php?id_discussion=".$_GET['id_discussion']."> ici </a>"; 
    
    $rep -> closeCursor();
    ?>

    </div>



<div class="bandeau"> 
<object data="../bandeau.php" width="100%" height="100%">
</object>
</div>


    </body>

    </html>
