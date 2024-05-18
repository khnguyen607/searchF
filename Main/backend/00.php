<?php
include_once "author_class.php";
?>

<?php
$author = new author;
// $author_id = null;
if (isset($_GET['author_id']) && $_GET['author_id'] != NULL) {
  $author_id = $_GET['author_id'];
}
$get_author = $author->get_author($author_id);
if ($get_author) {
  $result = $get_author->fetch_assoc();
}
?>
<?php
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
  $author_name = $_POST['author_name'];
  $author_mail = $_POST['author_mail'];
  $update_author = $author->update_author($author_mail, $author_name, $author_id);
  if ($update_author) {
    exit();
  } else {
    echo "Có lỗi xảy ra khi cập nhật dữ liệu";
  }
}
?>
<link rel="stylesheet" href="../css/add_category.css" />
<form id="Form" class="my-form" action="" method="post">
  <div>
    <input required type="text" class="form-control" name="author_name" value="<?php echo $result['author_name']; ?>" />
    <br>
    <input required type="email" class="form-control" name="author_mail" value="<?php echo $result['author_mail']; ?>" />
    <br>
    <input type="submit" class="btn btn-primary" value="Cập nhật" />
  </div>
</form>


<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<?php
include "header_backend.php";
include_once "author_class.php";
?>

<?php
$author = new author;
$author_id = null;
if (isset($_GET['author_id']) && $_GET['author_id'] != NULL) {
  $author_id = $_GET['author_id'];
}
$get_author = $author->get_author($author_id);
if ($get_author) {
  $result = $get_author->fetch_assoc();
}
?>
<?php
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
  $author_name = $_POST['author_name'];
  $author_mail = $_POST['author_mail'];
  $update_author = $author->update_author($author_mail, $author_name, $author_id);
  if ($update_author) {
    echo json_encode(array("success" => true));
    exit();
  } else {
    echo json_encode(array("success" => false, "message" => "Có lỗi xảy ra khi cập nhật dữ liệu"));
    exit();
  }
}
?>
<link rel="stylesheet" href="../css/add_category.css" />
<form id="Form" class="my-form" action="" method="post">
  <div>
    <input required type="text" class="form-control" name="author_name" value="<?php echo $result['author_name']; ?>" />
    <br>
    <input required type="email" class="form-control" name="author_mail" value="<?php echo $result['author_mail']; ?>" />
    <br>
    <input type="hidden" name="author_id" value="<?php echo $author_id; ?>">

    <input type="submit" class="btn btn-primary" value="Cập nhật" />
  </div>
</form>