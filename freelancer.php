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
                    <li class="tab col s6"><a class="waves-effect" href="index.php"><i class="material-icons">person_add</i> Aanvraag</a></li>
                    <li class="tab col s6"><a class="waves-effect active" href="freelancer.php"><i class="material-icons">people</i> Freelancer</a></li>
                  </ul>
              </div>
    </div>
  </div>
</div>
</nav>
<br><br>
<div style="height: 40em; overflow:auto;">
        <table class="highlight">
            <thead>
        <tr>
        <th>Freelancer ID</th>
        <th>Type</th>
        <th>Naam</th>
        <th>Voornaam</th>
        <th></th>
        </tr>
</thead>
         <tbody> 
            <?php 
            include "../stacks-backend/backend/config/data.php"; 
            //$var = "Database->conn";
                $freelsql = mysqli_query($conn, "SELECT * FROM freelancers WHERE status = 'approved'");
                $typesql = mysqli_query($conn, "SELECT * FROM type_user ORDER BY type_id ASC");
                while($type = mysqli_fetch_array($typesql)){
                while($row = mysqli_fetch_array($freelsql)){
                                echo "<tr>";
                                echo "<td>". $row['freelancer_id'] ."</td>";
                                echo "<td>". $type['naam'] ."</td>";
                                echo "<td>". $row['naam'] ."</td>";
                                echo "<td>". $row['voornaam'] ."</td>";
                                echo "<td>";
                                echo "<a href='delete.php?id=". $row['freelancer_id'] ."' title='Verwijderen' data-toggle='tooltip'><i class='small1 material-icons'>delete</i></a>";
                                echo "</td>";
                                echo "</tr>";
                }         
            }       
            ?>
            </tbody>
            </table>
            </div>

<script type="text/javascript">
       M.AutoInit();
      </script>
</body>
</html>