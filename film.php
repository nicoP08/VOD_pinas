<!DOCTYPE html>
<html lang="fr">
<head>
	<meta charset="utf-8">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>TITLE</title>
	<link rel="stylesheet" type="text/css" href="css/film.css">
  <link rel="stylesheet" type="text/css" href="css/header.css">
</head>

<body>
  <header>
    <?php include('include/header.php')?>

  </header>

  <main>
		<div class="container">
		<p class="affiche">
    <img src="img/affiche1.jpg" name="affiche" alt="affiche"/>
	</p>
			<?php

###########################################
############ PDO-Extension #############
###########################################


$host_name = 'localhost';
$database = 'vod';
$user_name = 'root';
$password = '';

$dbh = null;

$dbh = new PDO("mysql:host=$host_name; dbname=$database;", $user_name, $password, array(PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES utf8'));
try {


} catch (PDOException $e) {
  echo "connexion échouée: " . $e->getMessage() . "<br/>";
  die();
}

$reponse = $dbh->query("SELECT nom FROM acteurs NATURAL JOIN joue NATURAL JOIN films WHERE titre='Captain America'");
$reponse2 = $dbh->query("SELECT nom FROM realisateurs NATURAL JOIN realise NATURAL JOIN films WHERE titre='Captain America'");
$reponse3 = $dbh->query('SELECT * FROM films');
$reponse4 = $dbh->query('SELECT * FROM films');

$dbh = new PDO("mysql:host=$host_name; dbname=$database;", $user_name, $password,array(PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES utf8') );

	?>
    <p>

  <p><strong>Acteurs:</strong> <?php while ($donnees = $reponse->fetch())
        {echo $donnees['nom'], " "; }?><br /></p>
  <p> <strong>Réalisateur:</strong> <?php while ($donnees2 = $reponse2->fetch())
	        {echo $donnees2['nom'], " "; }?><br /></p>
	<p> <strong>Année de sortie :</strong> <?php while ($donnees3 = $reponse3->fetch())
					        {echo $donnees3['annee'], " "; }?><br /></p>
  	<strong>Synopsis :</strong> <?php while ($donnees4 = $reponse4->fetch())
		        {echo $donnees4	['synopsis'], " "; }?><br /></p>
</p>


</div>

<div>

    <object type="application/x-shockwave-flash" width="425" height="355" data="	https://www.youtube.com/embed/IsiV9IJieMk">

        <param name="movie" value="url" />

    </object>

</div>
  </main>

  <footer>
  </footer>
  <script src="js/scripts.js"></script>

</body>
</html>
