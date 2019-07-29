<?php
// required headers
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: access");
header("Access-Control-Allow-Methods: GET");
header("Access-Control-Allow-Credentials: true");
header('Content-Type: application/json');
 
// include database and object files
include_once '../../config/Database.php';
include_once '../../models/Categorie.php';
 
// get database connection
$database = new Database();
$db = $database->getConnection();
 
// prepare product object
$categorie = new Categorie($db);
 
// set categorie_id property of record to read
$categorie->categorie_id = isset($_GET['categorie_id']) ? $_GET['categorie_id'] : die();
 
// read the details of categorie to be edited
$categorie->read_one();
 
if($categorie->naam!=null){
    // create array
    $categorie_arr = array(
        "categorie_id" =>  $categorie->categorie_id,
        "naam" => $categorie->naam,
        "omschrijving" => $categorie->omschrijving
    );
 
    // set response code - 200 OK
    http_response_code(200);
 
    // make it json format
    echo json_encode($categorie_arr);
}
 
else{
    // set response code - 404 Not found
    http_response_code(404);
 
    // tell the user categorie does not exist
    echo json_encode(array("message" => "categorie does not exist."));
}
?>