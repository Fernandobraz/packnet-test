<?php
class FamilyMember {
 
  private $conn;
  private $table_name = "family_member";

  public $id;
  public $name;
  public $age;
  public $created;

  public function __construct($db){
      $this->conn = $db;
  }

  function read() {

    $query = "SELECT id, name, age, created FROM " . $this->table_name . " ORDER BY id";

    $stmt = $this->conn->prepare($query);

    $stmt->execute();

    return $stmt;
  }

  function create() {
 
    $query = "INSERT INTO " . $this->table_name . " SET name=:name, age=:age, created=:created";
 
    $stmt = $this->conn->prepare($query);

    $this->name=htmlspecialchars(strip_tags($this->name));
    $this->age=htmlspecialchars(strip_tags($this->age));
    $this->created=htmlspecialchars(strip_tags($this->created));
 
    $stmt->bindParam(":name", $this->name);
    $stmt->bindParam(":age", $this->age);
    $stmt->bindParam(":created", $this->created);
 
    if($stmt->execute()){
        return true;
    }else{
        return false;
    }
  }

  function readOne() {
    $query = "SELECT id, name, age, created FROM " . $this->table_name . " WHERE id = ? LIMIT 0,1";
 
    $stmt = $this->conn->prepare( $query );
    $stmt->bindParam(1, $this->id);
    $stmt->execute();

    $row = $stmt->fetch(PDO::FETCH_ASSOC);
 
    $this->name = $row['name'];
    $this->age = $row['age'];
    $this->created = $row['created'];
  }

  function update(){
    $query = "UPDATE " . $this->table_name . " SET name = :name, age = :age WHERE id = :id";
    $stmt = $this->conn->prepare($query);
 
    $this->name=htmlspecialchars(strip_tags($this->name));
    $this->age=htmlspecialchars(strip_tags($this->age));
    $this->id=htmlspecialchars(strip_tags($this->id));
 
    $stmt->bindParam(':name', $this->name);
    $stmt->bindParam(':age', $this->age);
    $stmt->bindParam(':id', $this->id);
 
    if($stmt->execute()){
        return true;
    }else{
        return false;
    }
  }

  function delete(){
    $query = "DELETE FROM " . $this->table_name . " WHERE id = ?";
    $stmt = $this->conn->prepare($query);
 
    $this->id=htmlspecialchars(strip_tags($this->id));

    $stmt->bindParam(1, $this->id);

    if($stmt->execute()){
        return true;
    }
 
    return false;
  }

  function albums_owned(){
    $query = "SELECT
                  a.title, a.artist, fma.price, fma.purchase_date
              FROM
                  albums a
                  LEFT JOIN
                      family_member_album fma
                          ON fma.album_id = a.id
                  WHERE
                      fma.family_member_id = ?";
 
    $stmt = $this->conn->prepare( $query );
    $stmt->bindParam(1, $this->id);
    $stmt->execute();
     
    return $stmt;
  }
}
?>