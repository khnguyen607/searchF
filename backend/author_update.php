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
        echo "<script>alert('Sửa thông tin thành công');</script>";
    }
}
?>
<link rel="stylesheet" href="../css/update.css" />
<div>
    <form id="Form" class="my-form" action="" method="post">
        <a href="author_list.php" class="rollback">Quay lại</a> <br> <br>
        <h2>Sửa tác giả: <?php echo $result['author_name']; ?></h2>
        <br>
        <div>
            <input required type="text" class="form-control" name="author_name" value="<?php echo $result['author_name']; ?>" />
            <br>
            <input required type="email" class="form-control" name="author_mail" value="<?php echo $result['author_mail']; ?>" />
            <br>
            <input type="hidden" name="author_id" value="<?php echo $author_id; ?>">

            <input type="submit" class="btn btn-primary" value="Cập nhật" />
        </div>
    </form>
</div>
<script src="js/confirm_update.js"></script>