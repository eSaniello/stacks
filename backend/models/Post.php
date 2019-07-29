<?php
class Post
{

    // database connection and table naam
    private $conn;
    private $table_naam = "post";

    // object properties
    public $post_id;
    public $klant_id;
    public $tijd;
    public $titel;
    public $inhoud;
    public $categorie_id;


    public function __construct($db)
    {
        $this->conn = $db;
    }

    //  Get posts
    public function read()
    {
        //create query
        $query = "SELECT
                post_id, klant_id, tijd, titel, inhoud, categorie_id 
            FROM
                " . $this->table_naam . "
            ORDER BY
                tijd";

        $stmt = $this->conn->prepare($query);
        $stmt->execute();

        return $stmt;
    }

    // create post
    function create()
    {

        // query to insert record
        $query = "INSERT INTO
                " . $this->table_naam . "
            SET
            klant_id=:klant_id,
            titel=:titel,
            inhoud=:inhoud, 
            categorie_id=:categorie_id";

        // prepare query
        $stmt = $this->conn->prepare($query);

        // sanitize
        $this->klant_id = htmlspecialchars(strip_tags($this->klant_id));
        $this->titel = htmlspecialchars(strip_tags($this->titel));
        $this->inhoud = htmlspecialchars(strip_tags($this->inhoud));
        $this->categorie_id = htmlspecialchars(strip_tags($this->categorie_id));


        // bind values
        $stmt->bindParam(":klant_id", $this->klant_id);
        $stmt->bindParam(":titel", $this->titel);
        $stmt->bindParam(":inhoud", $this->inhoud);
        $stmt->bindParam(":categorie_id", $this->categorie_id);




        // execute query
        if ($stmt->execute()) {
            return true;
        }

        return false;
    }

    // read one 
    function read_one()
    {
        // query to read single record

        $query = "SELECT
                post_id, klant_id, tijd, titel, inhoud, categorie_id 
            FROM
                " . $this->table_naam . "
            WHERE
            post_id =" . $this->post_id;
        // Prepare statement
        // Prepare statement
        $stmt = $this->conn->prepare($query);
        // Bind ID
        $stmt->bindParam(1, $this->post_id);
        // Execute query
        $stmt->execute();

        $row = $stmt->fetch(PDO::FETCH_ASSOC);

        // Set properties
        $this->post_id = $row['post_id'];
        $this->klant_id = $row['klant_id'];
        $this->tijd = $row['tijd'];
        $this->titel = $row['titel'];
        $this->inhoud = $row['inhoud'];
        $this->categorie_id = $row['categorie_id'];
    }

    // update the post
    function update()
    {
        // update query
        $query = "UPDATE
                " . $this->table_naam . "
            SET
                klant_id =:klant_id,
                titel =:titel,
                inhoud =:inhoud,
                categorie_id =:categorie_id                                
            WHERE
                post_id =:post_id";

        // prepare query statement
        $stmt = $this->conn->prepare($query);

        // sanitize
        $this->klant_id = htmlspecialchars(strip_tags($this->klant_id));
        $this->titel = htmlspecialchars(strip_tags($this->titel));
        $this->inhoud = htmlspecialchars(strip_tags($this->inhoud));
        $this->categorie_id = htmlspecialchars(strip_tags($this->categorie_id));

        // bind new values
        $stmt->bindParam(':klant_id', $this->klant_id);
        $stmt->bindParam(':titel', $this->titel);
        $stmt->bindParam(':inhoud', $this->inhoud);
        $stmt->bindParam(':categorie_id', $this->categorie_id);

        // execute the query
        if ($stmt->execute()) {
            return true;
        }

        return false;
    }
}