<?php
  try{
    include_once '../config/db.php';
    include_once '../objects/family_member.php';
     
    $database = new Database();
    $db = $database->getConnection();
     
    $family_member = new FamilyMember($db);
    $family_member->id = isset($_GET['id']) ? $_GET['id'] : die();
     
    $family_member->delete();

    header("Location: index.php", true, 301);
    exit();
  }
  catch(PDOException $error){
    echo $error->getMessage();
  }
?>