<?php
class Categorie
{

    // database connection and table naam
    private $conn;
    private $table_naam = "categorie";

    // object properties
    public $categorie_id;
    public $naam;
    public $omschrijving;


    public function __construct($db)
    {
        $this->conn = $db;
    }
    //  Get categories
    public function read()
    {
        //create query
        $query = "SELECT
                categorie_id, naam, omschrijving
            FROM
                " . $this->table_naam . "
            ORDER BY
                naam";

        $stmt = $this->conn->prepare($query);
        $stmt->execute();

        return $stmt;
    }
    // create categorie
    function create()
    {

        // query to insert record
        $query = "INSERT INTO
                " . $this->table_naam . "
            SET
                naam=:naam, omschrijving=:omschrijving";

        // prepare query
        $stmt = $this->conn->prepare($query);

        // sanitize
        $this->naam = htmlspecialchars(strip_tags($this->naam));
        $this->omschrijving = htmlspecialchars(strip_tags($this->omschrijving));

        // bind values
        $stmt->bindParam(":naam", $this->naam);
        $stmt->bindParam(":omschrijving", $this->omschrijving);

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
                categorie_id, naam, omschrijving
            FROM
                " . $this->table_naam . "
            WHERE
            categorie_id =" . $this->categorie_id;
        // Prepare statement
        // Prepare statement
        $stmt = $this->conn->prepare($query);
        // Bind ID
        $stmt->bindParam(1, $this->categorie_id);
        // Execute query
        $stmt->execute();

        $row = $stmt->fetch(PDO::FETCH_ASSOC);

        // Set properties
        $this->categorie_id = $row['categorie_id'];
        $this->omschrijving = $row['omschrijving'];
        $this->naam = $row['naam'];
    }
    // update the categorie
    function update()
    {
        // update query
        $query = "UPDATE
                " . $this->table_naam . "
            SET
                categorie_id = :categorie_id,
                naam = :naam,
                omschrijving = :omschrijving
                
            WHERE
                categorie_id = :categorie_id";

        // prepare query statement
        $stmt = $this->conn->prepare($query);

        // sanitize
        $this->naam = htmlspecialchars(strip_tags($this->naam));
        $this->omschrijving = htmlspecialchars(strip_tags($this->omschrijving));
        $this->categorie_id = htmlspecialchars(strip_tags($this->categorie_id));

        // bind new values
        $stmt->bindParam(':naam', $this->naam);
        $stmt->bindParam(':omschrijving', $this->omschrijving);
        $stmt->bindParam(':categorie_id', $this->categorie_id);

        // execute the query
        if ($stmt->execute()) {
            return true;
        }

        return false;
    }

    #DOES NOT WORK YET
    // Delete post
    // public function delete(){
    // // create query
    // $query = 
    // "DELETE FROM" . $this->table . "WHERE categorie_id = :categorie_id"; 
    // // prepare statement
    //     $stmt = $this->conn->prepare($query);

    //     // clean data
    //     $this->categorie_id = htmlspecialchars(strip_tags($this->categorie_id));

    //     // bind data
    //     $stmt->bindParam(':categorie_id', $this->categorie_id);

    //     // Execute query
    //     if($stmt->execute()){
    //         return true;
    //     }
    //     // print error if something goes wrong
    //     printf("Error: %s.\n", $stmt->error);

    //     return false;
    // }

    #DOES NOT WORK YET
    // search products 
    // function search($keywords){

    //     // select all query
    //     $query = "SELECT
    //                 c.naam as naam, p.categorie_id, p.naam, p.omschrijving, p.price, p.categorie_id, p.created
    //             FROM
    //                 " . $this->table_naam . " p
    //                 LEFT JOIN
    //                     categories c
    //                         ON p.categorie_id = c.id
    //             WHERE
    //                 p.naam LIKE ? OR p.omschrijving LIKE ? OR c.naam LIKE ?
    //             ORDER BY
    //                 p.created DESC";

    //     // prepare query statement
    //     $stmt = $this->conn->prepare($query);

    //     // sanitize
    //     $keywords=htmlspecialchars(strip_tags($keywords));
    //     $keywords = "%{$keywords}%";

    //     // bind
    //     $stmt->bindParam(1, $keywords);
    //     $stmt->bindParam(2, $keywords);
    //     $stmt->bindParam(3, $keywords);

    //     // execute query
    //     $stmt->execute();

    //     return $stmt;
    // }


}
