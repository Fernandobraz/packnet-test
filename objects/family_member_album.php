<?php
class FamilyMemberAlbum {
 
  private $conn;
  private $table_name = "family_member_album";

  public $id;
  public $family_member_id;
  public $album_id;
  public $price;
  public $purchase_date;
  public $created;

  public function __construct($db){
      $this->conn = $db;
  }

  function create(){
    $query = "INSERT INTO " . $this->table_name . " SET family_member_id=:family_member_id, album_id=:album_id, price=:price, purchase_date=:purchase_date, created=:created";
 
    $stmt = $this->conn->prepare($query);

    $this->family_member_id=htmlspecialchars(strip_tags($this->family_member_id));
    $this->album_id=htmlspecialchars(strip_tags($this->album_id));
    $this->price=htmlspecialchars(strip_tags($this->price));
    $this->purchase_date=htmlspecialchars(strip_tags($this->purchase_date));
    $this->created=htmlspecialchars(strip_tags($this->created));
 
    $stmt->bindParam(":family_member_id", $this->family_member_id);
    $stmt->bindParam(":album_id", $this->album_id);
    $stmt->bindParam(":price", $this->price);
    $stmt->bindParam(":purchase_date", $this->purchase_date);
    $stmt->bindParam(":created", $this->created);
 
    if($stmt->execute()){
        return true;
    }else{
        return false;
    }
  }
}

?>