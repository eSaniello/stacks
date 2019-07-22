<?php
// required header
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: GET");
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

// Blog post query
$result = $post->read();
// Get row count
$num = $result->rowCount();

// Check if any post 
if($num > 0){
    // post array
    $post_arr = array();
    $post_arr['data'] = array();

    while($row = $result->fetch(PDO::FETCH_ASSOC)){
        extract($row);

        $post_item = array(
            'post_id' => $post_id,
            'klant_id' => $klant_id,
            'tijd' => $tijd,
            'titel' => $titel,
            'inhoud' => $inhoud,
            'categorie_id' => $categorie_id
            
        );
        // Push to "data
        array_push($post_arr['data'], $post_item);
    }
    // turn to JSON & output
    echo json_encode($post_arr);


}else{
// no post
echo json_encode(
    array('message' => 'No post Found')
);
}

