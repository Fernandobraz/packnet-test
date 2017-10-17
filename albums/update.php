<?php
  include_once '../config/db.php';
  include_once '../objects/albums.php';
  if (isset($_POST['submit'])) {
   
    try{
      $database = new Database();
      $db = $database->getConnection();
       
      $album = new Album($db);
 
      $album->id = $_POST['id'];
      $album->title = $_POST['title'];
      $album->artist = $_POST['artist'];
      $album->num_of_tracks = $_POST['num_of_tracks'];
      $album->release_year = $_POST['release_year'];
      $album->created = date('Y-m-d H:i:s');
       
      if($album->update()){
        echo 'Album was updated successfully';
      }else{
        echo 'Unable to update album';
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
       
      $album = new Album($db);
      $album->id = $_GET['id'];
       
      $album->readOne();
    }
    catch(PDOException $error){
      echo $error->getMessage();
    }
  }
?>

<?php include "../templates/header.php"; ?>

<h2>Add a Member</h2>

<form method="post">
  <input type="hidden" name="id" value="<?php echo $album->id ?>">
  <label for="name">Title</label>
  <input type="text" name="title" id="title" value="<?php echo $album->title ?>">
  <label for="age">Artist</label>
  <input type="text" name="artist" id="artist" value="<?php echo $album->artist ?>">
  <label for="age">Number of tracks</label>
  <input type="text" name="num_of_tracks" id="num_of_tracks" value="<?php echo $album->num_of_tracks ?>">
  <label for="age">Release year</label>
  <input type="text" name="release_year" id="release_year" value="<?php echo $album->release_year ?>">
  <input type="submit" name="submit" value="Submit">
</form>

<a href="index.php">Back</a>

<?php include "../templates/footer.php"; ?>