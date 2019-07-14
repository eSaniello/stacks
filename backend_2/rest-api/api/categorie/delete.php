<?php
// required headers
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: POST");
header("Access-Control-Max-Age: 3600");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");
 
// include database and object file
include_once '../../config/Database.php';
include_once '../../models/Categorie.php';
 
// get database connection
$database = new Database();
$db = $database->getConnection();
 
// prepare categorie object
$categorie = new Categorie($db);
 
// get categorie categorie_categorie_id
$data = json_decode(file_get_contents("php://input"));
 

// SET ID TO UPDATE
$categorie->categorie_id = $data->categorie_id;

// delete the categorie
if($categorie->delete()){
 
    // set response code - 200 ok
    http_response_code(200);
 
    // tell the user
    echo json_encode(array("message" => "categorie was deleted."));
}
 
// if unable to delete the categorie
else{
 
    // set response code - 503 service unavailable
    http_response_code(503);
 
    // tell the user
    echo json_encode(array("message" => "Unable to delete categorie."));
}

?>