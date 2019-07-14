<?php
class Category {
// DB
private $conn;
private $table = 'categories';

// properties
public $id;
public $name;
public $created_at;

// Constructor with DB
    public function __construct($db){
        $this->conn = $db;
    }
// Get categories
public function read(){
    // create query
    $$query = 'SELECT
    id,
    name 
    FROM' . $this->table . '
    ORDER BY
    created_at DESC';

    // Prepare statement
    $stmt = $this->conn->prepare($query);

    // Execute query
    $stmt->execute();

    return $stmt;
}

} 