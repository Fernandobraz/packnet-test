<?php include "../templates/header.php"; ?>
<?php
  header("Access-Control-Allow-Origin: *");
   
  include_once '../config/db.php';
  include_once '../objects/genres.php';
   
  $database = new Database();
  $db = $database->getConnection();
   
  $genre = new Genre($db);
   
  $stmt = $genre->read();
  $num = $stmt->rowCount();
   
  if($num>0) { ?>
    <h2>Genres</h2>

    <table>
      <thead>
        <tr>
          <th>#</th>
          <th>Name</th>
        </tr>
      </thead>
      <tbody>
        <?php foreach ($stmt as $row) { ?>
          <tr>
            <td><?php echo $row["id"]; ?></td>
            <td><?php echo $row["name"]; ?></td>
          </tr>
        <?php } ?>
      </tbody>
    </table>
  <?php }else{ ?>
    <blockquote>No results found.</blockquote>
  <?php } ?> 

<?php include "../templates/footer.php"; ?>