<!DOCTYPE html>
	<html>
	<head>
		<link rel="stylesheet" href="../styles/main.css" type="text/css" media="screen" />
		<meta http-equiv="content-type" content="text/html; charset=utf-8" /> 
        <script src="https://kit.fontawesome.com/c6c76fd424.js" crossorigin="anonymous"></script>      

		<title>Bienvenue sur list'animes</title>
        <?php
        session_start();
        include("../bd.php") ;
        $bdd = getBD();
        ?>
     
	</head>

<body>
<style>


::before, ::after{
    box-sizing:border-box;
    margin:0;
    padding:0;

}    

.tableau-style{
    width:700px;
    border-collapse: collapse;
    box-shadow: 0 5px 50px rgba(0,0,0,0.15);
    cursor: pointer;
    margin: 0px auto;
    border: 2px solid #1d3557;
    border-spacing: 15px;
    
}

thead tr {

    
    background-color: #4C7DC3;
    border: 5px solid #4C7DC3;
    
    text-align: left;
}

th, td {
    padding: 15px 20px;
    text-align: center;
    color:white;
    
}
td{
    color:#4C7DC3;
}
tbody tr, td, th {
    font-family: tahoma;    
    
    border: 1px solid #4C7DC3;
}
tbody tr:nth-child(even){
    background-color: #E3E9F7;
}

@media screen and (max-width: 550px) {
  body {
    
    align-items: flex-start;
  }
  .table-style  {
    width: 100%;
    margin: 0px;
    font-size: 10px;
  }
  th, td {
    padding: 10px 7px;
    
}

}
/*
table{
    border:none;
    border-spacing: 15px;

}

#titre{
    background-color:#E9F6FE;
    
}
th{
    border-radius:20px;
}
td{
    
    border-radius:20px;
}*/
</style>

<table class="tableau-style">
    
    <thead> 
        <tr id="titre">
            <th>FORUM : discussions récentes</th>
        </tr>
    </thead>    

    <tbody>
        
        
       
        <?php
        
        
        $rep = $bdd->query('select * from discussion');


        
        
        while( $ligne = $rep -> fetch() ){ 
        
        echo "<tr><td> <a href ="."discussions.php?id_discussion=".$ligne['id_discussion'].">".$ligne['titre_discussion']."</a></td>";
        } 
        echo"</tr>";
        $rep -> closeCursor();
        ?> 
        
        
        <tr>

    <td>
    <?php
    if(isset($_SESSION['utilisateur']))
    { ?>

    vous pouvez créer une discussion <a href="creation_discussion.php">  ici </a>
    </td>
    </tr>
    <?php } ?>
</td>
</tr>
    </tbody>
</table>
<div class="bandeau"> 
<object data="../bandeau.php" width="100%" height="100%">
</object>
</div>
</body>


</html>

    