<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf8">
    <link rel="stylesheet" media="screen" type="text/css" href="css/reset.css">
    <link rel="stylesheet" media="screen" type="text/css" href="css/styles.css">
    <link rel="stylesheet" media="screen" type="text/css" href="css/header.css">
    <link rel="stylesheet" media="screen" type="text/css" href="css/footer.css">
<script src="js/scripts.js"></script>
  </head>

  <body>


    <main>
    <!-- header-->
  <?php include("include/header.php") ?>
  <!-- end header-->

  <!-- carousel-->
  <div class="container">
    <div class="rotator-wrap">
      <ul class="rotator">
        <li> <div><a href="films/ca1.php"><img src="img/affiche1.jpg" class="carousel" alt="" width="300px" height="450px"/></a></div> </li>
          <li> <div><a href="films/im1.php"><img src="img/affiche2.jpg" class="carousel" alt="" width="200px" height="3100px"/></a></div> </li>
          <li> <div><a href="films/im2.php"><img src="img/affiche3.jpeg" class="carousel" alt="" width="200px" height="300px"/></a></div> </li>
          <li> <div><a href="films/thor1.php"><img src="img/affiche4.jpg" class="carousel" alt="" width="200px" height="300px" /></a></div> </li>
          <li> <div><a href="films/hulk.php"><img src="img/affiche5.jpg"  class="carousel" alt="" width="200px" height="300px"/></a></div> </li>
          <li> <div><a href="films/avengers.php"><img src="img/affiche6.jpeg" class="carousel" alt="" width="200px" height="300px"/></a></div> </li>
          <li> <div><a href="films/im3.php"><img src="img/affiche7.jpeg" class="carousel" alt="" width="200px" height="300px"/></a></div> </li>
          <li> <div><a href="films/thor2.php"><img src="img/affiche8.jpg" class="carousel" alt="" width="200px" height="300px" /></a></div> </li>
      </ul>
    </div>
  </div>

<H2>DERNIERS FILMS</H2>
  <div id="derniers_ajout">
      <a href="films/ca2.php"><img src="img/affiche9.jpg" alt=""  width="200px" height="300px"/></a>
      <a href="films/gog.php"><img src="img/affiche10.jpg" alt="" width="200px" height="300px"/></a>
      <a href="films/am.php"> <img src="img/affiche12.jpg" alt=""  width="200px" height="300px"/></a>
      <a href="films/avengers2.php"> <img src="img/affiche11.jpg" alt=""  width="200px" height="300px"/></a>
      <a href="films/ca3.php"><img src="img/affiche13.jpg" alt=""  width="200px" height="300px"/></a>
      <a href="films/spiderman.php"> <img src="img/affiche14.jpg" alt=""  width="200px" height="300px"/></a>
  </div>

    </main>


  </body>
    <?php include("include/footer.php")?>
 </html>
