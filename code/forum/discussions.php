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
    border-spacing: 15px 1rem;
    padding-bottom:30px;
    margin-left:150px;
    text-align:left ;
    border: none;
}


#message{
    width:900px;


}

td{
    margin:auto;
    border: 3px #4C7DC3 groove;
    border-radius:5px;
    text-align: left;
   
    padding : 20px;
    margin-bottom:30px;
}

#pseudo{
    
    background-color:#4C7DC3;
    color: white;
    font-size: 20px;
    text-align:center;
    width:300px;
    font-size:25px;
    
    

}

#Titrearticle{
    
    font-size: 70px;
    margin-bottom: 10px;
    text-align:center;
    color:#4C7DC3;

}

spkan{
background:#4C7DC3;

padding:0 40px;
}
</style>





<body>
    

<p id="Titrearticle"><span>



<?php      
$mat1 =  $rep1 -> fetch();
echo $mat1['titre_discussion'];
?>
</span>
</p>


<div id=tablefor>

  <table>
  <?php
    $i=1;
    while( $mat =  $rep -> fetch()){
    
    


      
    echo "<tr><td id="."pseudo".">"."<img class='pp' src='../".$mat['url_pp']."' width='150' height='150'>"." ".$mat['pseudo']."</td>";

    echo "<td><div id="."message".">".$mat['message'].'</div></td></tr>';
    
        
    }
    echo "</table></br>";?>
 </div>
    <?php
    
    if(isset($_SESSION['utilisateur']))
    { 
    echo "Pour ajouter un commentaire vous pouvez le faire  <a href ="."creation_commentaire.php?id_discussion=".$_GET['id_discussion']."> ici </a>"; 
    }
    $rep -> closeCursor();
    ?>

   



<div class="bandeau"> 
<object data="../bandeau.php" width="100%" height="100%">
</object>
</div>


    </body>
</html>
