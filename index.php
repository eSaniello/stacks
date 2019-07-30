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
<div style="height: 40em; overflow:auto;">
        <table class="highlight">
            <thead>
        <tr>
        <th>Freelancer ID</th>
        <th>Naam</th>
        <th>Voornaam</th>
        <th>Opleding</th>
        <th>Werkervaring</th>
        <th></th>
        <th></th>
        <th></th>
        </tr>
</thead>
         <tbody> 
            <?php 
            include "../stacks-backend/backend/config/data.php"; 
                //$var = "Database->conn";
                $freelsql = mysqli_query($conn, "SELECT * FROM freelancers WHERE status is null");
                while($row = mysqli_fetch_array($freelsql)){
                                echo "<tr>";
                                echo "<td>". $row['freelancer_id'] ."</td>";
                                echo "<td>". $row['naam'] ."</td>";
                                echo "<td>". $row['voornaam'] ."</td>";
                                echo "<td>". $row['opleiding'] ."</td>";
                                echo "<td>". $row['werkervaring'] ."</td>";
                                echo "<td>"."<a href='addfl.php?id=". $row['freelancer_id'] ."' title='Add' data-toggle='tooltip'><i class='small1 material-icons'>group_add</i></a>"."</td>";
                                echo "<td>"."<a href='delreq.php?id=". $row['freelancer_id'] ."' title='Cancel' data-toggle='tooltip'><i class='small1 material-icons'>cancel</i></a>"."</td>";
                                echo "<td>"."<a href='view.php?id=". $row['freelancer_id'] ."' title='View' data-toggle='tooltip'><i class='small1 material-icons'>remove_red_eye</i></a>"."</td>";
                                echo "</tr>";
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