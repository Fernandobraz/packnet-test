<?php
class Genre {
 
  private $conn;
  private $table_name = "genres";

  public $id;
  public $name;
  public $created;

  public function __construct($db){
      $this->conn = $db;
  }

  function read() {

    $query = "SELECT id, name, created FROM " . $this->table_name . " ORDER BY id";

    $stmt = $this->conn->prepare($query);

    $stmt->execute();

    return $stmt;
  }
}

?>