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
include_once '../../models/Freelancers.php';

$database = new Database();
$db = $database->getConnection();

// Instantiate blog post object
$freelancer = new Freelancers($db);

// set freelancer_id property of record to read
$freelancer->freelancer_id = isset($_GET['freelancer_id']) ? $_GET['freelancer_id'] : die();

// read the details of freelancer to be edited
$freelancer->read_one();

if ($freelancer->naam != null) {
    // create array
    $freelancer_arr = array(
        "freelancer_id" =>  $freelancer->freelancer_id,
        "type_id" => $freelancer->type_id,
        "gebruikersnaam" => $freelancer->gebruikersnaam,
        "naam" => $freelancer->naam,
        "voornaam" => $freelancer->voornaam,
        "email" => $freelancer->email,
        "mobiel" => $freelancer->mobiel,
        "adres" => $freelancer->adres,
        "woonplaats" => $freelancer->woonplaats,
        "opleiding" => $freelancer->opleiding,
        "werkervaring" => $freelancer->werkervaring,
        "wachtwoord" => $freelancer->wachtwoord,
        "status" => $freelancer->status


    );

    // set response code - 200 OK
    http_response_code(200);

    // make it json format
    echo json_encode($freelancer_arr);
} else {
    // set response code - 404 Not found
    http_response_code(404);

    // tell the user freelancer does not exist
    echo json_encode(array("message" => "freelancer does not exist."));
}
