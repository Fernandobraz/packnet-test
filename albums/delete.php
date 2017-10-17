<?php
  try{
    include_once '../config/db.php';
    include_once '../objects/albums.php';
     
    $database = new Database();
    $db = $database->getConnection();
     
    $album = new Album($db);
    $album->id = isset($_GET['id']) ? $_GET['id'] : die();
     
    if($album->delete()){
      header("Location: index.php", true, 301);
      exit();
    }
  }
  catch(PDOException $error){
    echo $error->getMessage();
  }
?>