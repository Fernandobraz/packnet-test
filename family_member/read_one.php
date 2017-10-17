<?php include "../templates/header.php"; ?>
<?php
include_once '../config/db.php';
include_once '../objects/family_member.php';
 
$database = new Database();
$db = $database->getConnection();
 
$family_member = new FamilyMember($db);
$family_member->id = isset($_GET['id']) ? $_GET['id'] : die();
 
$family_member->readOne();

$albums_list = $family_member->albums_owned();
?>

<h2>Family Member</h2>

<table>
  <thead>
    <tr>
      <th>#</th>
      <th>Name</th>
      <th>Age</th>
      <th>Created</th>
      <th></th>
      <th></th>
      <th></th>
    </tr>
  </thead>
  <tbody>
      <tr>
        <td><?php echo $family_member->id; ?></td>
        <td><?php echo $family_member->name; ?></td>
        <td><?php echo $family_member->age; ?></td>
        <td><?php echo $family_member->created; ?></td>
        <td><?php echo '<a href="update.php?id=' . $family_member->id . '">Update</a>' ?></td>
        <td><?php echo '<a href="delete.php?id=' . $family_member->id . '" onclick="return confirm(\'Are you sure?\')">Delete</a>' ?></td>
      </tr>
  </tbody>
</table>

<h3>Albuns owned</h3>

<table>
  <thead>
    <tr>
      <th>Title</th>
      <th>Artist</th>
      <th>Price</th>
      <th>Purchased at</th>
    </tr>
  </thead>
  <tbody>
      <?php foreach($albums_list as $album) {?>
      <tr>
        <td><?php echo $album[0]; ?></td>
        <td><?php echo  $album[1]; ?></td>
        <td><?php echo  $album[2]; ?></td>
        <td><?php echo  $album[3]; ?></td>
      </tr>
      <?php } ?> 
  </tbody>
</table>

<a href="index.php">Back</a>
<?php include "../templates/footer.php"; ?>