<?php
// required headers
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: UPDATE");
header("Access-Control-Max-Age: 3600");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");
 
// include database and object files
include_once '../../config/Database.php';
include_once '../../models/Post.php';
 
// instantiate database and post object
$database = new Database();
$db = $database->getConnection();
 
// Instantiate blog post object
$post = new Post($db);

// get id of post to be edited
$data = json_decode(file_get_contents("php://input"));
 
// set ID property of post to be edited
$post->post_id = $data->post_id;
 
// set post property values
$post->klant_id = $data->klant_id;
$post->titel = $data->titel;
$post->inhoud = $data->inhoud;
$post->categorie_id = $data->categorie_id;
  
// update the post
if($post->update()){
 
    // set response code - 200 ok
    http_response_code(200);
 
    // tell the user
    echo json_encode(array("message" => "post was updated."));
}
 
// if unable to update the post, tell the user
else{
 
    // set response code - 503 service unavailable
    http_response_code(503);
 
    // tell the user
    echo json_encode(array("message" => "Unable to update post."));
}
?>

