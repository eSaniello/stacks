<?php
class Klant
{

    // database connection and table naam
    private $conn;
    private $table_naam = "klant";

    // object properties
    public $klant_id;
    public $type_id;
    public $gebruikersnaam;
    public $naam;
    public $voornaam;
    public $email;
    public $mobiel;
    public $adres;
    public $woonplaats;


    public function __construct($db)
    {
        $this->conn = $db;
    }

    //  Get klants
    public function read()
    {
        //create query
        $query = "SELECT
                klant_id, type_id, gebruikersnaam, naam, voornaam, email, mobiel, adres, woonplaats 
            FROM
                " . $this->table_naam . "
            ORDER BY
                naam";

        $stmt = $this->conn->prepare($query);
        $stmt->execute();

        return $stmt;
    }

    // create klant
    function create()
    {

        // query to insert record
        $query = "INSERT INTO
                " . $this->table_naam . "
            SET
            type_id=:type_id,
            gebruikersnaam=:gebruikersnaam,
            naam=:naam, 
            voornaam=:voornaam,
            email=:email,
            mobiel=:mobiel,
            adres=:adres,
            woonplaats=:woonplaats";

        // prepare query
        $stmt = $this->conn->prepare($query);

        // sanitize
        $this->type_id = htmlspecialchars(strip_tags($this->type_id));
        $this->gebruikersnaam = htmlspecialchars(strip_tags($this->gebruikersnaam));
        $this->naam = htmlspecialchars(strip_tags($this->naam));
        $this->voornaam = htmlspecialchars(strip_tags($this->voornaam));
        $this->email = htmlspecialchars(strip_tags($this->email));
        $this->mobiel = htmlspecialchars(strip_tags($this->mobiel));
        $this->adres = htmlspecialchars(strip_tags($this->adres));
        $this->woonplaats = htmlspecialchars(strip_tags($this->woonplaats));


        // bind values
        $stmt->bindParam(":type_id", $this->type_id);
        $stmt->bindParam(":gebruikersnaam", $this->gebruikersnaam);
        $stmt->bindParam(":naam", $this->naam);
        $stmt->bindParam(":voornaam", $this->voornaam);
        $stmt->bindParam(":email", $this->email);
        $stmt->bindParam(":mobiel", $this->mobiel);
        $stmt->bindParam(":adres", $this->adres);
        $stmt->bindParam(":woonplaats", $this->woonplaats);



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
                klant_id, type_id, gebruikersnaam, naam, voornaam, email, mobiel, adres, woonplaats 
            FROM
                " . $this->table_naam . "
            WHERE
            klant_id =" . $this->klant_id;
        // Prepare statement
        // Prepare statement
        $stmt = $this->conn->prepare($query);
        // Bind ID
        $stmt->bindParam(1, $this->klant_id);
        // Execute query
        $stmt->execute();

        $row = $stmt->fetch(PDO::FETCH_ASSOC);

        // Set properties
        $this->klant_id = $row['klant_id'];
        $this->type_id = $row['type_id'];
        $this->gebruikersnaam = $row['gebruikersnaam'];
        $this->naam = $row['naam'];
        $this->voornaam = $row['voornaam'];
        $this->email = $row['email'];
        $this->mobiel = $row['mobiel'];
        $this->adres = $row['adres'];
        $this->woonplaats = $row['woonplaats'];
    }
    // update the klant
    function update()
    {
        // update query
        $query = "UPDATE
                " . $this->table_naam . "
            SET
                type_id = :type_id,
                gebruikersnaam = :gebruikersnaam,
                naam = :naam,
                voornaam = :voornaam,
                email = :email,
                mobiel = :mobiel,
                adres = :adres,
                woonplaats = :woonplaats
                
                
            WHERE
                klant_id = :klant_id";

        // prepare query statement
        $stmt = $this->conn->prepare($query);

        // sanitize
        $this->klant_id = htmlspecialchars(strip_tags($this->klant_id));
        $this->type_id = htmlspecialchars(strip_tags($this->type_id));
        $this->gebruikersnaam = htmlspecialchars(strip_tags($this->gebruikersnaam));
        $this->naam = htmlspecialchars(strip_tags($this->naam));
        $this->voornaam = htmlspecialchars(strip_tags($this->voornaam));
        $this->email = htmlspecialchars(strip_tags($this->email));
        $this->mobiel = htmlspecialchars(strip_tags($this->mobiel));
        $this->adres = htmlspecialchars(strip_tags($this->adres));
        $this->woonplaats = htmlspecialchars(strip_tags($this->woonplaats));

        // bind new values
        $stmt->bindParam(':klant_id', $this->klant_id);
        $stmt->bindParam(':type_id', $this->type_id);
        $stmt->bindParam(':gebruikersnaam', $this->gebruikersnaam);
        $stmt->bindParam(':naam', $this->naam);
        $stmt->bindParam(':voornaam', $this->voornaam);
        $stmt->bindParam(':email', $this->email);
        $stmt->bindParam(':mobiel', $this->mobiel);
        $stmt->bindParam(':adres', $this->adres);
        $stmt->bindParam(':woonplaats', $this->woonplaats);

        // execute the query
        if ($stmt->execute()) {
            return true;
        }

        return false;
    }
}
