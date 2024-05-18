<?php
include_once "author_class.php";
ob_start();
?>
<?php
$author = new author;
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $author_name = $_POST['author_name'];
    $author_mail = $_POST['author_mail'];
    $insert_author = $author->insert_author($author_name, $author_mail);
    if ($insert_author) {
        echo "<script>alert('Thêm tác giả thành công');</script>";
        header('Location: http://localhost/Bai_Tap_Lon_BE/backend/author_list.php');

        exit();
    }
}
?>
<link rel="stylesheet" href="../css/add_category.css" />
<form id="Form" class="my-form" action="" method="post">
    <div>
        <input required type="text" class="form-control" id="name" name="author_name" placeholder="Nhập tên tác giả" />
        <br>
        <input required type="email" class="form-control" id="email" name="author_mail" placeholder="Email liên hệ" />
        <br>
        <input type="submit" class="btn btn-primary" value='Thêm'>
    </div>
</form>