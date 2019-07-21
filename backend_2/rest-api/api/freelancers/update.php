<?php
// required headers
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: UPDATE");
header("Access-Control-Max-Age: 3600");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");
 
// include database and object files
include_once '../../config/Database.php';
include_once '../../models/Freelancers.php';
 
// instantiate database and category object
$database = new Database();
$db = $database->getConnection();
 
// Instantiate blog post object
$freelancer = new Freelancers($db);

// get id of freelancer to be edited
$data = json_decode(file_get_contents("php://input"));
 
// set ID property of freelancer to be edited
$freelancer->freelancer_id = $data->freelancer_id;
 
// set freelancer property values
$freelancer->freelancer_id = $data->freelancer_id;
$freelancer->type_id = $data->type_id;
$freelancer->gebruikersnaam = $data->gebruikersnaam;
$freelancer->naam = $data->naam;
$freelancer->voornaam = $data->voornaam;
$freelancer->email = $data->email;
$freelancer->mobiel = $data->mobiel;
$freelancer->adres = $data->adres;
$freelancer->woonplaats = $data->woonplaats;
$freelancer->opleiding = $data->opleiding;
$freelancer->werkervaring = $data->werkervaring;
 
// update the freelancer
if($freelancer->update()){
 
    // set response code - 200 ok
    http_response_code(200);
 
    // tell the user
    echo json_encode(array("message" => "freelancer was updated."));
}
 
// if unable to update the freelancer, tell the user
else{
 
    // set response code - 503 service unavailable
    http_response_code(503);
 
    // tell the user
    echo json_encode(array("message" => "Unable to update freelancer."));
}
?>

