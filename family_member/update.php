<?php
  include_once '../config/db.php';
  include_once '../objects/family_member.php';
  if (isset($_POST['submit'])) {
   
    try{
      $database = new Database();
      $db = $database->getConnection();
       
      $family_member = new FamilyMember($db);
 
      $family_member->id = $_POST['id'];
      $family_member->name = $_POST['name'];
      $family_member->age = $_POST['age'];
      $family_member->created = date('Y-m-d H:i:s');
       
      if($family_member->update()){
        echo 'Family member was updated successfully';
      }else{
        echo 'Unable to update the family member';
      }
    }
    catch(PDOException $error){
      echo $error->getMessage();
    }
  }

  if(isset($_GET['id'])) {
    try{   
      $database = new Database();
      $db = $database->getConnection();
       
      $family_member = new FamilyMember($db);
      $family_member->id = $_GET['id'];
       
      $family_member->readOne();
    }
    catch(PDOException $error){
      echo $error->getMessage();
    }
  }
?>

<?php include "../templates/header.php"; ?>

<h2>Add a Member</h2>

<form method="post">
  <input type="hidden" name="id" value="<?php echo $family_member->id ?>">
  <label for="name">Name</label>
  <input type="text" name="name" id="name" value="<?php echo $family_member->name ?>">
  <label for="age">Age</label>
  <input type="text" name="age" id="age" value="<?php echo $family_member->age ?>">
  <input type="submit" name="submit" value="Submit">
</form>

<a href="index.php">Back</a>

<?php include "../templates/footer.php"; ?>