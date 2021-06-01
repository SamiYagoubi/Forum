<?php
require_once("functions.php");
?>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
<?php
//session_start();


echo '<body style="background-color: #000">

<nav class="navbar navbar-expand-lg navbar-light bg-light">
     <a class="navbar-brand" href="index.php">
          <img src="images/lg.png" alt="logo" width="100" height="70">
        </a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="index.php">Home <span class="sr-only">(current)</span></a>
      </li>';
      if(verif_auth(INSCRIT))
      {echo'
      <div class=pull-right>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" 
        aria-haspopup="true" aria-expanded="false">
          Profil
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="voirprofil.php?pseudo='.$_SESSION['pseudo'].'&m='.$_SESSION['id'].'&level='.$_SESSION['level'].'$action=consulter">Voir</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="deconnexion.php">Déconnexion</a>
        </div>
      </li>';
      }
        else
    {echo'
            <li class="nav-item">
        <a class="nav-link" href="connexion.php">Connexion</a>
      </li>
      ';
      }echo'
    </ul>
  </div>
</nav>
<div id="menu">        
</div>        
</div>
<div id="corps_forum">';
?>