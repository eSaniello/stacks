<!doctype html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Stacks</title>
  <!-- Google Icons -->
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

  <!-- materialize -->
  <link rel="stylesheet" href="../lib/materialize/css/materialize.css">
  <script src="lib/materialize/js/materialize.js"></script>
  
</head>

<body class= white>
  <div class = "header">
    
  <img src="../media/logo.png" height="200px" width="200px">
  Stacks
  </div>
  <br><br><br><br><br><br><br><br><br><br><br><br>
<div class="row"
    <div class="row">
            <div class="col s10">
                <ul class="tabs"> 
                <div class="nav-wrapper">
                    <li class="tab col s6"><a class="waves-effect active" href="index.php"><i class="material-icons">person_add</i> Aanvraag</a></li>
                    <li class="tab col s6"><a class="waves-effect" href="freelancer.php"><i class="material-icons">people</i> Freelancer</a></li>
                  </ul>
              </div>
    </div>
  </div>
</div>
</nav>
<br><br>
<?php 
    require_once "../stacks-backend/backend/config/data.php";

        $viewsql = mysqli_query($conn, "SELECT * FROM freelancers WHERE freelancer_id = $_GET[id]"); 
        while($row = mysqli_fetch_array($viewsql)){
            echo "<div style='height: 40em; overflow:auto;'>";
            echo "<div class='texth2'>";
            echo "<div class='texth3'>"."Freelancer ID:"."</div>".$row['freelancer_id']; 
            echo "<br>";
            echo "<div class='texth3'>"."Naam: "."</div>".$row['naam'];
            echo "<br>";
            echo "<div class='texth3'>"."Voornaam: "."</div>".$row['voornaam'];
            echo "<br>";
            echo "<div class='texth3'>"."Email: "."</div>".$row['email'];
            echo "<br>";
            echo "<div class='texth3'>"."Mobielnummer: "."</div>".$row['mobiel'];
            echo "<br>";
            echo "<div class='texth3'>"."Adres: "."</div>".$row['adres'];
            echo "<br>";
            echo "<div class='texth3'>"."Woonplaats: "."</div>".$row['woonplaats'];
            echo "<br>";
            echo "<div class='texth3'>"."Opleiding: "."</div>".$row['opleiding'];
            echo "<br>";
            echo "<div class='texth3'>"."Werkervaring: "."</div>".$row['werkervaring'];
echo "</div>";
echo "</div>";
        }

?>
</body>
</html>