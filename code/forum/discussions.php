<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="../styles/main.css" type="text/css" media="screen" />
        <meta http-equiv="content-type" content="text/html; charset=utf-8" /> 
        <script src="https://kit.fontawesome.com/c6c76fd424.js" crossorigin="anonymous"></script>

           <?php
            session_start();
            include ("../bd.php");
            $bdd=getBD();
        
            $id=$_GET["id_discussion"];
    
           
            $rep = $bdd -> query("SELECT DISTINCT * FROM discussion,commentaires,photo_de_profil,utilisateur WHERE commentaires.id_discussion=discussion.id_discussion             and utilisateur.id_utilisateur=commentaires.id_utilisateur
            and utilisateur.id_photo_de_profil=photo_de_profil.id_photo_de_profil
            and commentaires.id_discussion='$id'");

            $rep1 = $bdd -> query("select * from discussion,commentaires where discussion.id_discussion=commentaires.id_discussion
            AND discussion.id_discussion='$id'");
            ?> 
    </head>

   
<style>

table{
    
    width:700px;
    
    text-align:left ;
    border: none
}

td{
    
    border-radius:5px;
    text-align: left;
    padding : 20px;

}

#pseudo{
    color: #2e2e2e;
    font-size: 20px;
    text-align:center;
    
}

#Titrearticle{
    text-decoration:underline;
    font-size: 70px;
    margin-bottom: 10px;
    text-align: center;
    font-style: bold;

}

</style>





<body>
    

<p id="Titrearticle">



<?php      
$mat1 =  $rep1 -> fetch();
echo $mat1['titre_discussion'];
?>
</p>


<div id=tablefor>

  <table>
  <?php
    while( $mat =  $rep -> fetch()){
    
    

    echo "<tr><td id="."pseudo".">"."<img class='pp' src='../".$mat['url_pp']."' width='150' height='150'>"." ".$mat['pseudo']."</td>";

    echo "<td>".$mat['message'].'</td></tr>';
    }
    echo "</table></br>";?>
 </div>
    <?php
    echo "Pour ajouter un commentaire vous pouvez le faire  <a href ="."creation_commentaire.php?id_discussion=".$_GET['id_discussion']."> ici </a>"; 
    
    $rep -> closeCursor();
    ?>

   



<div class="bandeau"> 
<object data="../bandeau.php" width="100%" height="100%">
</object>
</div>


    </body>
</html>