<?php
// required headers
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: UPDATE");
header("Access-Control-Max-Age: 3600");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");
 
// include database and object files
include_once '../../config/Database.php';
include_once '../../models/Categorie.php';
 
// get database connection
$database = new Database();
$db = $database->getConnection();
 
// prepare categorie object
$categorie = new Categorie($db);
 
// get id of categorie to be edited
$data = json_decode(file_get_contents("php://input"));
 
// set ID property of categorie to be edited
$categorie->categorie_id = $data->categorie_id;
 
// set categorie property values
$categorie->naam = $data->naam;
$categorie->omschrijving = $data->omschrijving;
$categorie->categorie_id = $data->categorie_id;
 
// update the categorie
if($categorie->update()){
 
    // set response code - 200 ok
    http_response_code(200);
 
    // tell the user
    echo json_encode(array("message" => "categorie was updated."));
}
 
// if unable to update the categorie, tell the user
else{
 
    // set response code - 503 service unavailable
    http_response_code(503);
 
    // tell the user
    echo json_encode(array("message" => "Unable to update categorie."));
}
?>
