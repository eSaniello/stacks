<?php
// required headers
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: POST");
header("Access-Control-Max-Age: 3600");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");
 
// get database connection
include_once '../../config/Database.php';
 
// instantiate product object
include_once '../../models/Categorie.php';
 
$database = new Database();
$db = $database->getConnection();
 
$categorie = new Categorie($db);
 
// get posted data
$data = json_decode(file_get_contents("php://input"));
 
// make sure data is not empty
if(
    !empty($data->naam) &&
    !empty($data->omschrijving)
  
){
 
    // set categorie property values
    $categorie->naam = $data->naam;
    $categorie->omschrijving = $data->omschrijving;
 
    // create the categorie
    if($categorie->create()){
 
        // set response code - 201 created
        http_response_code(201);
 
        // tell the user
        echo json_encode(array("message" => "categorie was created."));
    }
 
    // if unable to create the categorie, tell the user
    else{
 
        // set response code - 503 service unavailable
        http_response_code(503);
 
        // tell the user
        echo json_encode(array("message" => "Unable to create categorie."));
    }
}
 
// tell the user data is incomplete
else{
 
    // set response code - 400 bad request
    http_response_code(400);
 
    // tell the user
    echo json_encode(array("message" => "Unable to create categorie. Data is incomplete."));
}
?>