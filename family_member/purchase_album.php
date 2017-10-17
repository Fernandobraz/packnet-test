<?php
  if (isset($_POST['submit'])) {
   
    try{
      include_once '../config/db.php';
      include_once '../objects/family_member_album.php';
       
      $database = new Database();
      $db = $database->getConnection();
       
      $family_member_album = new FamilyMemberAlbum($db);

      $family_member_album->family_member_id = $_POST['family_member_id'];
      $family_member_album->album_id = $_POST['album_id'];
      $family_member_album->price = $_POST['price'];
      $family_member_album->purchase_date = $_POST['purchase_date'];
      $family_member_album->created = date('Y-m-d H:i:s');
       
      if($family_member_album->create()){
        echo 'Purchase was created successfully';
      }else{
        echo 'Unable to create the purchase';
      }
    }
    catch(PDOException $error){
      echo $error->getMessage();
    }
  }

  if (isset($_GET['id'])) {
    include_once '../config/db.php';
    include_once '../objects/albums.php';

    $database = new Database();
    $db = $database->getConnection();
     
    $albums = new Album($db);

    $stmt = $albums->read();

    $family_member_id = $_GET['id'];
    $family_member_name = $_GET['name'];
  }
?>

<?php include "../templates/header.php"; ?>

<h2><?php echo $family_member_name; ?> will buy...</h2>

<form method="post">
  <input type="hidden" name="family_member_id" value="<?php echo $family_member_id; ?>">
  <label for="name">Album</label>
  <select name="album_id">
    <?php foreach ($stmt as $row) { ?>
        <option value="<?php echo $row["id"]; ?>"><?php echo $row["title"]; ?></option>
    <?php } ?>
  </select>
  <label for="price">Price</label>
  <input type="text" name="price" id="price">
  <label for="purchase_date">Purchase date</label>
  <input type="date" name="purchase_date" id="purchase_date">
  <input type="submit" name="submit" value="Submit">
</form>

<a href="read_one.php?id=<?php echo $family_member_id ?>">Back</a>

<?php include "../templates/footer.php"; ?>