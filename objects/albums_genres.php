<?php
class AlbumsGenres {
 
  private $conn;
  private $table_name = "albums_genres";

  public $id;
  public $album_id;
  public $genre_id;
  public $created;

  public function __construct($db){
      $this->conn = $db;
  }

  function create() {
 
    $query = "INSERT INTO " . $this->table_name . " SET album_id=:album_id, genre_id=:genre_id, created=:created";
 
    $stmt = $this->conn->prepare($query);

    $this->album_id=htmlspecialchars(strip_tags($this->album_id));
    $this->genre_id=htmlspecialchars(strip_tags($this->genre_id));
    $this->created=htmlspecialchars(strip_tags($this->created));
 
    $stmt->bindParam(":album_id", $this->album_id);
    $stmt->bindParam(":genre_id", $this->album_id);
    $stmt->bindParam(":created", $this->created);
 
    if($stmt->execute()){
        return true;
    }else{
        return false;
    }
  }
}

?>