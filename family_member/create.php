<?php
  if (isset($_POST['submit'])) {
   
    try{
      include_once '../config/db.php';
      include_once '../objects/family_member.php';
       
      $database = new Database();
      $db = $database->getConnection();
       
      $family_member = new FamilyMember($db);
       
      $family_member->name = $_POST['name'];
      $family_member->age = $_POST['age'];
      $family_member->created = date('Y-m-d H:i:s');
       
      if($family_member->create()){
        echo 'Family member was created successfully';
      }else{
        echo 'Unable to create the family member';
      }
    }
    catch(PDOException $error){
      echo $error->getMessage();
    }
  }
?>

<?php include "../templates/header.php"; ?>

<h2>Add a Member</h2>

<form method="post">
  <label for="name">Name</label>
  <input type="text" name="name" id="name">
  <label for="age">Age</label>
  <input type="text" name="age" id="age">
  <input type="submit" name="submit" value="Submit">
</form>

<a href="index.php">Back</a>

<?php include "../templates/footer.php"; ?>