<?php
class Freelancers
{

    // database connection and table naam
    private $conn;
    private $table_naam = "freelancers";

    // object properties
    public $freelancer_id;
    public $type_id;
    public $gebruikersnaam;
    public $naam;
    public $voornaam;
    public $email;
    public $mobiel;
    public $adres;
    public $woonplaats;
    public $opleiding;
    public $werkervaring;


    public function __construct($db)
    {
        $this->conn = $db;
    }
    //  Get freelancers
    public function read()
    {
        //create query
        $query = "SELECT
                freelancer_id, type_id, gebruikersnaam, naam, voornaam, email, mobiel, adres, woonplaats, opleiding, werkervaring 
            FROM
                " . $this->table_naam . "
            ORDER BY
                naam";

        $stmt = $this->conn->prepare($query);
        $stmt->execute();

        return $stmt;
    }
    // create freelancer
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
            woonplaats=:woonplaats,
            opleiding=:opleiding,
            werkervaring=:werkervaring,
            wachtwoord=:wachtwoord";

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
        $this->opleiding = htmlspecialchars(strip_tags($this->opleiding));
        $this->werkervaring = htmlspecialchars(strip_tags($this->werkervaring));
        $this->wachtwoord = htmlspecialchars(strip_tags(password_hash($this->wachtwoord, PASSWORD_DEFAULT)));



        // bind values
        $stmt->bindParam(":type_id", $this->type_id);
        $stmt->bindParam(":gebruikersnaam", $this->gebruikersnaam);
        $stmt->bindParam(":naam", $this->naam);
        $stmt->bindParam(":voornaam", $this->voornaam);
        $stmt->bindParam(":email", $this->email);
        $stmt->bindParam(":mobiel", $this->mobiel);
        $stmt->bindParam(":adres", $this->adres);
        $stmt->bindParam(":woonplaats", $this->woonplaats);
        $stmt->bindParam(":opleiding", $this->opleiding);
        $stmt->bindParam(":werkervaring", $this->werkervaring);
        $stmt->bindParam(":wachtwoord", $this->wachtwoord);


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
                freelancer_id, type_id, gebruikersnaam, naam, voornaam, email, mobiel, adres, woonplaats, opleiding, werkervaring 
            FROM
                " . $this->table_naam . "
            WHERE
            freelancer_id =" . $this->freelancer_id;
        // Prepare statement
        // Prepare statement
        $stmt = $this->conn->prepare($query);
        // Bind ID
        $stmt->bindParam(1, $this->freelancer_id);
        // Execute query
        $stmt->execute();

        $row = $stmt->fetch(PDO::FETCH_ASSOC);

        // Set properties
        $this->freelancer_id = $row['freelancer_id'];
        $this->type_id = $row['type_id'];
        $this->gebruikersnaam = $row['gebruikersnaam'];
        $this->naam = $row['naam'];
        $this->voornaam = $row['voornaam'];
        $this->email = $row['email'];
        $this->mobiel = $row['mobiel'];
        $this->adres = $row['adres'];
        $this->woonplaats = $row['woonplaats'];
        $this->opleiding = $row['opleiding'];
        $this->werkervaring = $row['werkervaring'];
    }
    // update the freelancer
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
                woonplaats = :woonplaats,
                opleiding = :opleiding,
                werkervaring = :werkervaring
                
                
            WHERE
                freelancer_id = :freelancer_id";

        // prepare query statement
        $stmt = $this->conn->prepare($query);

        // sanitize
        $this->freelancer_id = htmlspecialchars(strip_tags($this->freelancer_id));
        $this->type_id = htmlspecialchars(strip_tags($this->type_id));
        $this->gebruikersnaam = htmlspecialchars(strip_tags($this->gebruikersnaam));
        $this->naam = htmlspecialchars(strip_tags($this->naam));
        $this->voornaam = htmlspecialchars(strip_tags($this->voornaam));
        $this->email = htmlspecialchars(strip_tags($this->email));
        $this->mobiel = htmlspecialchars(strip_tags($this->mobiel));
        $this->adres = htmlspecialchars(strip_tags($this->adres));
        $this->woonplaats = htmlspecialchars(strip_tags($this->woonplaats));
        $this->opleiding = htmlspecialchars(strip_tags($this->opleiding));
        $this->werkervaring = htmlspecialchars(strip_tags($this->werkervaring));

        // bind new values
        $stmt->bindParam(':freelancer_id', $this->freelancer_id);
        $stmt->bindParam(':type_id', $this->type_id);
        $stmt->bindParam(':gebruikersnaam', $this->gebruikersnaam);
        $stmt->bindParam(':naam', $this->naam);
        $stmt->bindParam(':voornaam', $this->voornaam);
        $stmt->bindParam(':email', $this->email);
        $stmt->bindParam(':mobiel', $this->mobiel);
        $stmt->bindParam(':adres', $this->adres);
        $stmt->bindParam(':woonplaats', $this->woonplaats);
        $stmt->bindParam(':opleiding', $this->opleiding);
        $stmt->bindParam(':werkervaring', $this->werkervaring);

        // execute the query
        if ($stmt->execute()) {
            return true;
        }

        return false;
    }
}
