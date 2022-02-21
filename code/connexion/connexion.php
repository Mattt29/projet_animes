<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type"
content="text/html; charset=UTF-8" />


<title>Connexion</title>
<style> 
* {
border : 1px dotted red;
}
.inscription {
	
}

.conteneur_connexion{
   display: flex;
}
.inscription,.connexion{
   flex-grow: 1;
   margin-right: :300px;
	margin-top:200px;
	margin-bottom: auto;
}

</style>


</head>

<body> 
<div class="conteneur_connexion">
 
<div class="connexion"> 
<p> Connexion </p>
<form  method="post" autocomplete="off">
<p>
Adresse e-mail :
<input type="string" name="mail" value="<?php if(isset($_GET['mail'])){ echo $_GET['mail'] ;}  ?>" />
</p>

<p>
Mot de passe :
<input type="password" name="mdp1" value="<?php if(isset($_GET['mdp1'])){ echo $_GET['mdp1'] ;}  ?>"/>
</p>

<p>
<input type="submit" value="Valider">
</form>

</div>






<div class="inscription"> 
<p> Inscription </p> 
<form action="enregistrement.php" method="post" autocomplete="off">
<p>
Nom :
<input type="string" name="n" value="<?php if(isset($_GET['n'])){ echo $_GET['n'] ;}  ?>" />
</p>

<p>
Prénom :
<input type="string" name="p" value="<?php if(isset($_GET['p'])){ echo $_GET['p'] ;}  ?>"/>
</p>

<p>
Pseudo : 
<input type="string" name="pseudo" value="<?php if(isset($_GET['pseudo'])){ echo $_GET['pseudo'] ;}  ?>"/>
</p>

<p>
Adresse mail :
<input type="string" name="mail2" value="<?php if(isset($_GET['mail2'])){ echo $_GET['mail2'] ;}  ?>"/>
</p>

<p>
Mot de passe :
<input type="password" name="mdp1" value="<?php if(isset($_GET['mdp1'])){ echo $_GET['mdp1'] ;}  ?>"/>
</p>

<p>
Confirmer mot de passe : 
<input type="password" name="mdp2" value="<?php if(isset($_GET['mdp2'])){ echo $_GET['mdp2'] ;}  ?>"/>
</p>

<p>
<input type="submit" value="Valider">
</form>
</p>
</div>

</div>



</body>
</html>
