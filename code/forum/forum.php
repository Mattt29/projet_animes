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


<table>
    
    <tbody>
        <tr>
            <th>FORUM : discussions récentes</th>
        </tr>
        
       <tr>
        <?php
        
        
        $rep = $bdd->query('select * from discussion');


        
        
        while( $ligne = $rep -> fetch() ){ 
        
        echo "<tr><td> <a href ="."discussions.php?id_discussion=".$ligne['id_discussion'].">".$ligne['titre_discussion']."</a></td>";
        } 

        $rep -> closeCursor();
        ?> 
        
        </tr>
        <?php  
        if(isset($_SESSION['client'])) {
        echo" <tr>";

        echo "<td>";

        echo  "vous pouvez créer une discussion <a href="."discussion.php".">  ici </a>
        </td>
        </tr>";
        }?>
        
    </tbody>
</table>
<div class="bandeau"> 
<object data="../bandeau.php" width="100%" height="100%">
</object>
</div>
</body>


</html>

    