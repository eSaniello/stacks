<?php
// required header
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: GET");
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


// Blog klant query
$result = $klant->read();
// Get row count
$num = $result->rowCount();

// Check if any klant 
if ($num > 0) {
    // klant array
    $klant_arr = array();
    $klant_arr['data'] = array();

    while ($row = $result->fetch(PDO::FETCH_ASSOC)) {
        extract($row);

        $klant_item = array(
            'klant_id' => $klant_id,
            'type_id' => $type_id,
            'gebruikersnaam' => $gebruikersnaam,
            'naam' => $naam,
            'voornaam' => $voornaam,
            'email' => $email,
            'mobiel' => $mobiel,
            'adres' => $adres,
            'woonplaats' => $woonplaats

        );
        // Push to "data
        array_push($klant_arr['data'], $klant_item);
    }
    // turn to JSON & output
    echo json_encode($klant_arr);
} else {
    // no klant
    echo json_encode(
        array('message' => 'No klant Found')
    );
}
