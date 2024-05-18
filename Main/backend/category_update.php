<?php
include "header_backend.php";
include_once "category_class.php";
?>

<?php
$category = new category;
if (isset($_GET['danhmuc_id']) || $_GET['danhmuc_id'] != NULL) {
    $category_id = $_GET['danhmuc_id'];
}
$get_category = $category->get_category($category_id);
if ($get_category) {
    $result = $get_category->fetch_assoc();
}
?>

<?php
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $category_name = $_POST['category_name'];
    $update_category = $category->update_category($category_name, $category_id);
}
?>
<link rel="stylesheet" href="../css/update.css" />
<div>
    <form id="Form" class="my-form" action="" method="post">
        <a href="category_list.php" class="rollback">Quay lại</a> <br> <br>
        <h2>Cập nhật danh mục</h2>
        <br> <br>
        <div>
            <input required class="form-control" required type="text" name="category_name" placeholder="Nhập tên danh mục" value="<?php echo $result['ten_danhmuc'] ?>" />
            <br>
            <input type="submit" class="btn btn-primary" value="Cập nhật">
        </div>
    </form>
</div>
<script src="js/confirm_update.js"></script>