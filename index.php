<?php require_once('init.php'); ?>

<!doctype html>
<html lang="ru">
  <head>
   
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    
    
    <title>registry</title>
    </head>
    
  <nav class="navbar navbar-dark navbar-expand-md" style="background-color: #0c0c0c;">
    <a class="navbar-brand" href="#"></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarText">
      <ul class="navbar-nav mr-auto">
        <li class="nav-item active">
          <a class="nav-link" href="index.php">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Features</a>
        </li>
      </ul>
      <span class="navbar-text">
        <?php 
          $user = new User;
          if($user->isLoggedIn()) {
            echo "Hello, {$user->data()->username}";
            echo "<a href='logout.php'>Logout</a>";
        } else {
          echo "<a href='login.php'>Login</a> or <a href='register.php'>Register</a>";
        } ?>
      </span>
    </div>
</nav>




  </body>
</html>

<?php

$user = new User;

//$user->data()->username; // получить текущего пользователя

$anotherUser = new User(3); // получить любого пользователя
//$anotherUser->data()->username;

if($user->isLoggedIn()) {
  echo "Hello, {$user->data()->username}";
  echo "<a href='logout.php'>Logout</a>";
} else {
  echo "<a href='login.php'>Login</a> or <a href='register.php'>Register</a>";
}


