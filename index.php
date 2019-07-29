<!doctype html>
<html>

<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Stacks</title>
  <!-- Google Icons -->
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

  <!-- materialize -->
  <link rel="stylesheet" href="lib/materialize/css/materialize.css">
  <script src="lib/materialize/js/materialize.js"></script>
</head>

<body class= "blue lighten-3">
  <div class="row">
    <div class="header">
    </div>
    </div>

            <?php 
            include "../stacks-backend/backend/rest-api/config/Database.php"; 
                $freelsql = mysqli_query($conn, "SELECT * FROM freelancers ORDER BY freelancer_id ASC");
                while($row = mysqli_fetch_array($freelsql)){
                                echo "<tr>";
                                echo "<td>". $row['freelancer_id'] ."</td>";
                                echo "<td>". $row['naam'] ."</td>";
                                echo "<td>";
                                echo "<a href='printvt.php?id=". $row['freelancer_id'] ."' title='Contract' data-toggle='tooltip'><i class='small1 material-icons'>group_add</i></a>";
                                echo "<a href='deletevoert.php?id=". $row['freelancer_id'] ."' title='Verwijderen' data-toggle='tooltip'><i class='small1 material-icons'>cancel</i></a>";
                                echo "<a href='updatevoert.php?id=". $row['freelancer_id'] ."' title='Update' data-toggle='tooltip'><i class='small1 material-icons'>remove_red_eye</i></a>";
                                echo "</td>";
                                echo "</tr>";
                }                
            ?>
              </tbody>
                    </table>
                    </div>
</body>
</html>