<?php
class Album {
 
  private $conn;
  private $table_name = "albums";

  public $id;
  public $title;
  public $artist;
  public $num_of_tracks;
  public $release_year;
  public $created;

  public function __construct($db){
      $this->conn = $db;
  }

  function read() {

    $query = "SELECT id, title, artist, num_of_tracks, release_year, created FROM " . $this->table_name . " ORDER BY id";

    $stmt = $this->conn->prepare($query);

    $stmt->execute();

    return $stmt;
  }

  function readOne() {
    $query = "SELECT id, title, artist, num_of_tracks, release_year, created FROM " . $this->table_name . " WHERE id = ? LIMIT 0,1";
 
    $stmt = $this->conn->prepare( $query );
    $stmt->bindParam(1, $this->id);
    $stmt->execute();

    $row = $stmt->fetch(PDO::FETCH_ASSOC);
 
    $this->title = $row['title'];
    $this->artist = $row['artist'];
    $this->num_of_tracks = $row['num_of_tracks'];
    $this->release_year = $row['release_year'];
    $this->created = $row['created'];
  }

  function update(){
    $query = "UPDATE " . $this->table_name . " SET title=:title, artist=:artist, num_of_tracks=:num_of_tracks, release_year=:release_year WHERE id = :id";
    $stmt = $this->conn->prepare($query);
 
    $this->title=htmlspecialchars(strip_tags($this->title));
    $this->artist=htmlspecialchars(strip_tags($this->artist));
    $this->num_of_tracks=htmlspecialchars(strip_tags($this->num_of_tracks));
    $this->release_year=htmlspecialchars(strip_tags($this->release_year));
    $this->id=htmlspecialchars(strip_tags($this->id));
 
    $stmt->bindParam(":title", $this->title);
    $stmt->bindParam(":artist", $this->artist);
    $stmt->bindParam(":num_of_tracks", $this->num_of_tracks);
    $stmt->bindParam(":release_year", $this->release_year);
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
}

?>