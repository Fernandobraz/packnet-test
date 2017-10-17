<?php include "../templates/header.php"; ?>
<?php
include_once '../config/db.php';
include_once '../objects/albums.php';
 
$database = new Database();
$db = $database->getConnection();
 
$album = new Album($db);
$album->id = isset($_GET['id']) ? $_GET['id'] : die();
 
$album->readOne();
?>

<h2>Album - <?php echo $album->title; ?></h2>

<table>
  <thead>
    <tr>
      <th>#</th>
      <th>Artist</th>
      <th>Number of tracks</th>
      <th>Release year</th>
      <th>Created</th>
      <th></th>
      <th></th>
    </tr>
  </thead>
  <tbody>
      <tr>
        <td><?php echo $album->id; ?></td>
        <td><?php echo $album->artist; ?></td>
        <td><?php echo $album->num_of_tracks; ?></td>
        <td><?php echo $album->release_year; ?></td>
        <td><?php echo $album->created; ?></td>
        <td><?php echo '<a href="update.php?id=' . $album->id . '">Update</a>' ?></td>
        <td><?php echo '<a href="delete.php?id=' . $album->id . '" onclick="return confirm(\'Are you sure?\')">Delete</a>' ?></td>
      </tr>
  </tbody>
</table>

<a href="index.php">Back</a>
<?php include "../templates/footer.php"; ?>