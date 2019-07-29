<?php
// required header
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: POST");
header("Access-Control-Max-Age: 3600");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");
 
// include database and object files
include_once '../../config/Database.php';
include_once '../../models/Post.php';
 
// instantiate database and category object
$database = new Database();
$db = $database->getConnection();
 
// Instantiate blog post object
$post = new Post($db);


// get posted data
$data = json_decode(file_get_contents("php://input"));
 
// make sure data is not empty
if(
    !empty($data->klant_id) &&
    !empty($data->titel) &&
    !empty($data->inhoud) &&
    !empty($data->categorie_id)
  
){
 
    // set post property values
    $post->klant_id = $data->klant_id;
    $post->titel = $data->titel;
    $post->inhoud = $data->inhoud;
    $post->categorie_id = $data->categorie_id;
 
    // create the post
    if($post->create()){
 
        // set response code - 201 created
        http_response_code(201);
 
        // tell the user
        echo json_encode(array("message" => "post was created."));
    }
 
    // if unable to create the post, tell the user
    else{
 
        // set response code - 503 service unavailable
        http_response_code(503);
 
        // tell the user
        echo json_encode(array("message" => "Unable to create post."));
    }
}
 
// tell the user data is incomplete
else{
 
    // set response code - 400 bad request
    http_response_code(400);
 
    // tell the user
    echo json_encode(array("message" => "Unable to create post. Data is incomplete."));
}
?>

