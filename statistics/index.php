<?php include "../templates/header.php"; ?>
<?php
  header("Access-Control-Allow-Origin: *");
   
  include_once '../config/db.php';
  include_once '../objects/family_member_album.php';
  include_once '../objects/albums_genres.php';
   
  $database = new Database();
  $db = $database->getConnection();
   
  
  
  if($_GET["id"] == "1"){
    $family_member_album = new FamilyMemberAlbum($db);
    $stmt = $family_member_album->statistics_1();
   }else if($_GET["id"] == "2"){
    $albums_genres = new AlbumsGenres($db);
    $stmt = $albums_genres->statistics_2();
   }
 ?>

<?php if($_GET["id"] == "1"){ ?>
  <h2>Total number of albums purchased in each year and money spent on them.</h2>
  <table>
    <thead>
      <tr>
        <th>Year</th>
        <th>Albums purchased</th>
        <th>Money spent</th>
      </tr>
    </thead>
    <tbody>
      <?php foreach ($stmt as $row) { ?>
        <tr>
          <td><?php echo $row[0]; ?></td>
          <td><?php echo $row[1]; ?></td>
          <td><?php echo $row[2]; ?></td>
          <td></td>
        </tr>
      <?php } ?>
    </tbody>
  </table>
<?php }else if($_GET["id"] == "2"){?>
  <h2>Number of albums in each genres.</h2>
  <table>
    <thead>
      <tr>
        <th>Genre</th>
        <th>Albums</th>
      </tr>
    </thead>
    <tbody>
      <?php foreach ($stmt as $row) { ?>
        <tr>
          <td><?php echo $row[0]; ?></td>
          <td><?php echo $row[1]; ?></td>
          <td></td>
        </tr>
      <?php } ?>
    </tbody>
  </table>
<?php } ?>

<?php include "../templates/footer.php"; ?>