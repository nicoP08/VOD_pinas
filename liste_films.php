<!DOCTYPE html>
<html lang="fr">
<head>
	<meta charset="utf-8">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>TITLE</title>
	<link rel="stylesheet" type="text/css" href="css/liste_films.css">
<link rel="stylesheet" type="text/css" href="css/header.css">
<link rel="stylesheet" type="text/css" href="css/footer.css">
</head>

<body>
  <header>
    <?php  include('include/header.php')?>
  </header>



  <main>

  </main>
  <form action="search.php"  method="get">
  <input type="text" placeholder="Votre recherche"><br />
  <select name="genre" size="1">
    <option>genre 1</option>
    <option>genre 2</option>
    <option>genre 3</option>
  </select>
<button name="rechercher">search</button>
  <footer>
  </footer>

  <script src="js/scripts.js"></script>
</body>
</html>
