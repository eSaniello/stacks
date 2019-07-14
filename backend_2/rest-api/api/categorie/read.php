<?php
// required header
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
 
// include database and object files
include_once '../../config/Database.php';
include_once '../../models/Categorie.php';
 
// instantiate database and category object
$database = new Database();
$db = $database->getConnection();
 
// Instantiate blog post object
$categorie = new Categorie($db);


// Blog categorie query
$result = $categorie->read();
// Get row count
$num = $result->rowCount();

// Check if any categories 
if($num > 0){
    // categorie array
    $categories_arr = array();
    $categories_arr['data'] = array();

    while($row = $result->fetch(PDO::FETCH_ASSOC)){
        extract($row);

        $categorie_item = array(
            'categorie_id' => $categorie_id,
            'naam' => $naam,
            'omschrijving' => $omschrijving
        );
        // Push to "data
        array_push($categories_arr['data'], $categorie_item);
    }
    // turn to JSON & output
    echo json_encode($categories_arr);


}else{
// no categories
echo json_encode(
    array('message' => 'No categories Found')
);
}
