<?php
// required header
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: access");
header("Access-Control-Allow-Methods: GET");
header("Access-Control-Allow-Credentials: true");
header('Content-Type: application/json');
 
// get database connection
include_once '../../config/Database.php';
 
// instantiate product object
include_once '../../models/Klant.php';
 
$database = new Database();
$db = $database->getConnection();
 
// Instantiate blog post object
$klant = new Klant($db);

// set klant_id property of record to read
$klant->klant_id = isset($_GET['klant_id']) ? $_GET['klant_id'] : die();
 
// read the details of klant to be edited
$klant->read_one();
 
if($klant->naam!=null){
    // create array
    $klant_arr = array(
        "klant_id" =>  $klant->klant_id,
        "type_id" => $klant->type_id,
        "gebruikersnaam" => $klant->gebruikersnaam,
        "naam" => $klant->naam,
        "voornaam" => $klant->voornaam,
        "email" => $klant->email,
        "mobiel" => $klant->mobiel,
        "adres" => $klant->adres,
        "woonplaats" => $klant->woonplaats
    );
 
    // set response code - 200 OK
    http_response_code(200);
 
    // make it json format
    echo json_encode($klant_arr);
}
 
else{
    // set response code - 404 Not found
    http_response_code(404);
 
    // tell the user klant does not exist
    echo json_encode(array("message" => "klant does not exist."));
}
?>