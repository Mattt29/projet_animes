<?php
session_start();
?>
<html>
<head>
       <!-- <img src=img/background.png id=fondecran class=fondecran alt=""/> -->
        <script src="https://kit.fontawesome.com/c6c76fd424.js" crossorigin="anonymous"></script>
<meta charset="UTF-8"/>
<style>
.profil{
	margin-right: 200px;
	margin-left: auto;
	width: 150px;
	margin-top: -150px;
	margin-bottom: 50px;
}
ul {
	height: 50px;
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #333;
}

li {
    float: left;

}

li a {
    display: block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
    widfth: 50px;
    height: 25px;
}

/* Change the link color to #111 (black) on hover */
li a:hover {
    background-color: #e1e7f5;
    color:#111;
}
.active {
    background-color: #4CAF50;
}



#barre_recherche{
    position:relative; 
    widtfh:200px;
    height:30px; 
    floaft:top;
	font-size: 20px;
	top:9px;
	right:50px;
    
}
#bouton_valide{
	 position:relative; 
    width:80px;
    height:30px; 
    floaft:top;
	font-size: 20px;
	top:9px;
	right: 50px;

}

.titre { padding-left: 10px;
display: inline-block;
margin-bottom: 30px;

}

h2 {
font-size: 50px;

}

#fondecran {
		/* Fixe l'image en haut à gauche de la page */
		position: fixed; 
		z-index: -4;
		top: 0; 
		left: 0; 
		/* Préserve le ratio de l'image */
		min-width: 100%;
		min-height: 100%;
	   }	

body{

widtdh:1000px;
margin-left: auto;
margin-right: auto;}

</style>
</head>
<body>
<div class="titre">
<h2>
List'Animes
</h2>
</div>
<div class="profil" >
			<?php
			include ("bd.php");
            $bdd=getBD();
        
				if(!isset($_SESSION['utilisateur'])){ ?>
			   <p id="Se_connecter"> <a href="connexion/connexion.php" target="_parent"> Se connecter </a> </p>
    			<?php }
    			else {
	echo  '<br />';
					    echo "Bonjour ";
    echo $_SESSION['utilisateur']['pseudo']; 
	
    			
				?>	
		
	<p id="Se_deconnecter"> <a href="connexion/deconnexion.php" target="_parent"> Se déconnecter </a> </p>

	

    <?php 
echo  '<br />';$pp=$bdd->query('SELECT url_pp FROM utilisateur, photo_de_profil WHERE id_utilisateur='.$_SESSION['utilisateur']['id_utilisateur'].' and utilisateur.id_photo_de_profil=photo_de_profil.id_photo_de_profil');
 			$lignepp=$pp->fetch();
   ?> 
   <a href="profil/profil.php" style="position: absolute;top:20px;right:20px;" target="_parent"><?php echo "<img class='pp' src='".$lignepp['url_pp']."' width='150' height='150'";?></a>   
	<?php $pp->closeCursor();    
    }?>
</div>



<ul>
<li>
			<a href="index.php" target="_parent"> <i class="fa-solid fa-house"></i> </a>
			</li>

			<li>
			<a href="forum/forum.php" target="_parent">Forum</a>
			</li>
	<?php 
		if(isset($_SESSION['utilisateur'])) {		?>	
			<li>
			<a href="liste_animes/liste_animes.php" target="_parent">Liste animes</a>
			</li>
		 	
			<li>
			<a href="profil/profil.php" target="_parent"> Profil</a>
			</li>
			
			
			<li>
			<a href="amis/liste_amis.php" target="_parent">Liste d'amis</a>
			</li>
			
			<li>
			<a href="amis/demandes_amis.php" target="_parent">Demandes d'amis</a>
			</li>
 <?php } ?>

 <li style="float:right">
<form method="GET" action="recherche.php" target="_parent" autocomplete="on">
    
    <input type="search" name="recherche"  placeholder="Recherche anime.." id="barre_recherche"  />
    <input type="submit" value="Valider" id="bouton_valide" />
</form>
 </li>
</ul>

</body>
</html>