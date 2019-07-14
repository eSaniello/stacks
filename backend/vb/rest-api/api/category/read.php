<?php
// Headers
header('Access-Control-Allow-Origin: *');
header('Content-Type:application/json');

include_once '../../config/Database.php';
include_once '../../models/Category.php';

// Instantiate DB & Connect
$database = new Database();
$db = $database->connect();

// Instantiate Category object
$Category = new Category($db);
// STOPPED HERE AT 13:43 CONTINUE WITH IT LATER ___________________________________________THIS IS IMPORTANT

// Get ID
$post->id = isset($_GET['id']) ? $$_GET['id'] : die();


// Get post
$post->read_single();

// Create array
$post_arr = array(
    'id' => $post->id,
    'title' => $post->title,
    'body' => $post->body,
    'author' => $post->author,
    'category_id' => $post->category_id,
    'category_name' => $post->category_name
);

// Make JSON
print_r(json_encode($post_arr));