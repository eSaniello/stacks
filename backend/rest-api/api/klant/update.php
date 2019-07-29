<?php
// required headers
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: UPDATE");
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

// get id of klant to be edited
$data = json_decode(file_get_contents("php://input"));

// set ID property of klant to be edited
$klant->klant_id = $data->klant_id;

// set klant property values
$klant->klant_id = $data->klant_id;
$klant->type_id = $data->type_id;
$klant->gebruikersnaam = $data->gebruikersnaam;
$klant->naam = $data->naam;
$klant->voornaam = $data->voornaam;
$klant->email = $data->email;
$klant->mobiel = $data->mobiel;
$klant->adres = $data->adres;
$klant->woonplaats = $data->woonplaats;

// update the klant
if ($klant->update()) {

    // set response code - 200 ok
    http_response_code(200);

    // tell the user
    echo json_encode(array("message" => "klant was updated."));
}

// if unable to update the klant, tell the user
else {

    // set response code - 503 service unavailable
    http_response_code(503);

    // tell the user
    echo json_encode(array("message" => "Unable to update klant."));
}
