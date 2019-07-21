<?php
// required header
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: POST");
header("Access-Control-Max-Age: 3600");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");
 
// include database and object files
include_once '../../config/Database.php';
include_once '../../models/Klant.php';
 
// instantiate database and category object
$database = new Database();
$db = $database->getConnection();
 
// Instantiate blog post object
$klant = new Klant($db);


// get posted data
$data = json_decode(file_get_contents("php://input"));
 
// make sure data is not empty
if(
    !empty($data->type_id) &&
    !empty($data->gebruikersnaam) &&
    !empty($data->naam) &&
    !empty($data->voornaam) &&
    !empty($data->email) &&
    !empty($data->mobiel) &&
    !empty($data->adres) &&
    !empty($data->woonplaats)
  
){
 
    // set klant property values
    $klant->type_id = $data->type_id;
    $klant->gebruikersnaam = $data->gebruikersnaam;
    $klant->naam = $data->naam;
    $klant->voornaam = $data->voornaam;
    $klant->email = $data->email;
    $klant->mobiel = $data->mobiel;
    $klant->adres = $data->adres;
    $klant->woonplaats = $data->woonplaats;
 
    // create the klant
    if($klant->create()){
 
        // set response code - 201 created
        http_response_code(201);
 
        // tell the user
        echo json_encode(array("message" => "klant was created."));
    }
 
    // if unable to create the klant, tell the user
    else{
 
        // set response code - 503 service unavailable
        http_response_code(503);
 
        // tell the user
        echo json_encode(array("message" => "Unable to create klant."));
    }
}
 
// tell the user data is incomplete
else{
 
    // set response code - 400 bad request
    http_response_code(400);
 
    // tell the user
    echo json_encode(array("message" => "Unable to create klant. Data is incomplete."));
}
?>

