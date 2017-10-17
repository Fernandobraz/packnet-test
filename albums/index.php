<?php include "../templates/header.php"; ?>
<?php
  header("Access-Control-Allow-Origin: *");
   
  include_once '../config/db.php';
  include_once '../objects/albums.php';
   
  $database = new Database();
  $db = $database->getConnection();
   
  $album = new Album($db);
   
  $stmt = $album->read();
  $num = $stmt->rowCount();
   
  if($num>0) { ?>
    <h2>Albums</h2>
    
    <table>
      <thead>
        <tr>
          <th>#</th>
          <th>Title</th>
          <th>Artist</th>
          <th>Number of tracks</th>
          <th>Release year</th>
          <th>Created</th>
        </tr>
      </thead>
      <tbody>
        <?php foreach ($stmt as $row) { ?>
          <tr>
            <td><?php echo $row["id"]; ?></td>
            <td><?php echo '<a href="read_one.php?id=' . $row['id'] . '">' . $row["title"] . '</a>' ?></td>
            <td><?php echo $row["artist"]; ?></td>
            <td><?php echo $row["num_of_tracks"]; ?></td>
            <td><?php echo $row["release_year"]; ?></td>
            <td><?php echo $row["created"]; ?></td>
          </tr>
        <?php } ?>
      </tbody>
    </table>
  <?php }else{ ?>
    <blockquote>No results found.</blockquote>
  <?php } ?> 

<?php include "../templates/footer.php"; ?>