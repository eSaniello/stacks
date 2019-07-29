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
include_once '../../models/Post.php';
 
$database = new Database();
$db = $database->getConnection();
 
// Instantiate blog post object
$post = new Post($db);

// set post_id property of record to read
$post->post_id = isset($_GET['post_id']) ? $_GET['post_id'] : die();
 
// read the details of post to be edited
$post->read_one();
 
if($post->titel!=null){
    // create array
    $post_arr = array(
        "post_id" =>  $post->post_id,
        "klant_id" => $post->klant_id,
        "tijd" => $post->tijd,
        "titel" => $post->titel,
        "inhoud" => $post->inhoud,
        "categorie_id" => $post->categorie_id
    );
 
    // set response code - 200 OK
    http_response_code(200);
 
    // make it json format
    echo json_encode($post_arr);
}
 
else{
    // set response code - 404 Not found
    http_response_code(404);
 
    // tell the user post does not exist
    echo json_encode(array("message" => "post does not exist."));
}
?>