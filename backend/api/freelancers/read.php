<?php
// required header
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: GET");
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


// Blog freelancer query
$result = $freelancer->read();
// Get row count
$num = $result->rowCount();

// Check if any freelancers 
if ($num > 0) {
    // freelancer array
    $freelancers_arr = array();
    $freelancers_arr['data'] = array();

    while ($row = $result->fetch(PDO::FETCH_ASSOC)) {
        extract($row);

        $freelancer_item = array(
            'freelancer_id' => $freelancer_id,
            'type_id' => $type_id,
            'gebruikersnaam' => $gebruikersnaam,
            'naam' => $naam,
            'voornaam' => $voornaam,
            'email' => $email,
            'mobiel' => $mobiel,
            'adres' => $adres,
            'woonplaats' => $woonplaats,
            'opleiding' => $opleiding,
            'werkervaring' => $werkervaring

        );
        // Push to "data
        array_push($freelancers_arr['data'], $freelancer_item);
    }
    // turn to JSON & output
    echo json_encode($freelancers_arr);
} else {
    // no freelancers
    echo json_encode(
        array('message' => 'No freelancers Found')
    );
}
