<?php
// required header
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: POST");
header("Access-Control-Max-Age: 3600");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

// get database connection
include_once '../../config/Database.php';

// instantiate product object
include_once '../../models/Freelancers.php';

$database = new Database();
$db = $database->getConnection();

// Instantiate blog post object
$freelancer = new Freelancers($db);

// get posted data
$data = json_decode(file_get_contents("php://input"));

// make sure data is not empty
if (
    !empty($data->type_id) &&
    !empty($data->gebruikersnaam) &&
    !empty($data->naam) &&
    !empty($data->voornaam) &&
    !empty($data->email) &&
    !empty($data->mobiel) &&
    !empty($data->adres) &&
    !empty($data->woonplaats) &&
    !empty($data->opleiding) &&
    !empty($data->werkervaring)

) {

    // set freelancer property values
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

    // create the freelancer
    if ($freelancer->create()) {

        // set response code - 201 created
        http_response_code(201);

        // tell the user
        echo json_encode(array("message" => "freelancer was created."));
    }

    // if unable to create the freelancer, tell the user
    else {

        // set response code - 503 service unavailable
        http_response_code(503);

        // tell the user
        echo json_encode(array("message" => "Unable to create freelancer."));
    }
}

// tell the user data is incomplete
else {

    // set response code - 400 bad request
    http_response_code(400);

    // tell the user
    echo json_encode(array("message" => "Unable to create freelancer. Data is incomplete."));
}
