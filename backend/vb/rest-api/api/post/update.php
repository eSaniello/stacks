<?php
// Headers
header('Access-Control-Allow-Origin: *');
header('Content-Type:application/json');
header('Access-Control-Allow-Methods: PUT');
header('Access-Control-Allow-Headers: Access-Control-Allow-Headers, 
Content-Type, Access-Control-Allow-Methods, Authorization, X-Requested-With');


include_once '../../config/Database.php';
include_once '../../models/Post.php';

// Instantiate DB & Connect
$database = new Database();
$db = $database->connect();

// Instantiate blog post object
$post = new Post($db);

// Get rsw posted data
$data = json_decode(file_get_contents("php://input"));

// SET ID TO UPDATE
$post->id = $data->id;

$post->$title = $data->title;
$post->$body = $data->body;
$post->$author = $data->author;
$post->$category_id = $data->category_id;

// update post
if($post->update()){
    echo json_encode(
        array('message' => 'Post Update')
    );
}else{
    echo json_encode(
        array('message' => 'Post Not Update')
    );
}