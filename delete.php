<?php
	// Process delete operation after confirmation
	if(isset($_POST["id"]) && !empty($_POST["id"])){
	    // Include config file
	    require_once "../stacks-backend/backend/config/data.php";
	    
	    // Prepare a delete statement
	    $sql = "DELETE FROM freelancers WHERE freelancer_id = ?";
	    
	    if($stmt = mysqli_prepare($conn, $sql)){
	        // Bind variables to the prepared statement as parameters
	        mysqli_stmt_bind_param($stmt, "i", $param_id);
	        
	        // Set parameters
	        $param_id = trim($_POST["id"]);
	        
	        // Attempt to execute the prepared statement
	        if(mysqli_stmt_execute($stmt)){
	            // Records deleted successfully. Redirect to landing page
	            header("location:freelancer.php?succ");
	            exit();
	        } else{
	            echo "Oops! Something went wrong. Please try again later.";
	        }
	    }
	     
	    // Close statement
	    mysqli_stmt_close($stmt);
	    
	    // Close connection
	    mysqli_close($conn);
	} else{
	    // Check existence of id parameter
	    if(empty(trim($_GET["id"]))){
	        // URL doesn't contain id parameter. Redirect to error page
	        header("location:freelancer.php?error");
	        exit();
	    }
	}
?>
<!DOCTYPE html>
<html>
<head>
	<title>Klant verwijderen</title>
	<!--Import Google Icon Font-->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Anton|Merriweather|Open+Sans+Condensed:300|Roboto+Condensed" rel="stylesheet"> 

    <!--Import materialize.css-->
    <link type="text/css" rel="stylesheet" href="../lib/materialize/css/materialize.css"  media="screen,projection"/>

    <!--Let browser know website is optimized for mobile-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
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
	<div class="center-align">
    	<div class="row, container">
	    	<form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post"> 
	    		<div class="row">
                <div class="modfont">Bent u zeker dat uw record verwijderd moet worden? <br> Deze actie kan niet ongedaan worden!</div>
    	            
	    		        </div>
	    		        <div class="row">
                        <br><br><span style="padding: -40px;"></span>
                        <button style="width: 100px; background: black;" class="btn waves-effect waves-light" type="submit" name="action"><div class="texth">Ja</div></button>
	    			<span style="padding-left: 30px;"></span>
	    			<a href="freelancer.php">
		    			<button style="width: 100px; background: black;" class="btn waves-effect waves-light" type="button"><div class="texth">Nee</div></button>
		    		</a>
		    		<input type="hidden" name="id" value="<?php echo trim($_GET["id"]); ?>"/>
                </div>
            
	    	</form>
    	</div>
    </div>

    <script type="text/javascript" src="materialize/js/materialize.min.js"></script>
<script type="text/javascript">
    M.AutoInit();
</script>
</body>
</html>