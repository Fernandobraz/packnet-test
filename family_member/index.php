<?php include "../templates/header.php"; ?>
<?php
  header("Access-Control-Allow-Origin: *");
   
  include_once '../config/db.php';
  include_once '../objects/family_member.php';
   
  $database = new Database();
  $db = $database->getConnection();
   
  $family_member = new FamilyMember($db);
   
  $stmt = $family_member->read();
  $num = $stmt->rowCount();
   
  if($num>0) { ?>
    <h2>Family Members</h2>
    <a href="create.php">Create New Member</a>

    <table>
      <thead>
        <tr>
          <th>#</th>
          <th>Name</th>
          <th>Age</th>
          <th>Created</th>
        </tr>
      </thead>
      <tbody>
        <?php foreach ($stmt as $row) { ?>
          <tr>
            <td><?php echo $row["id"]; ?></td>
            <td><?php echo '<a href="read_one.php?id=' . $row['id'] . '">' . $row["name"] . '</a>' ?></td>
            <td><?php echo $row["age"]; ?></td>
            <td><?php echo $row["created"]; ?></td>
          </tr>
        <?php } ?>
      </tbody>
    </table>
  <?php }else{ ?>
    <blockquote>No results found.</blockquote>
  <?php } ?>

<?php include "../templates/footer.php"; ?>