<?php
include_once "category_class.php";
ob_start();
?>
<?php
$category = new category;
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $category_name = $_POST['category_name'];
    $insert_category = $category->insert_category($category_name);
    if ($insert_category) {
        header('Location: http://localhost/Bai_Tap_Lon_BE/backend/category_list.php#add-category-dialog');
        exit();
    }
}
?>
<link rel="stylesheet" href="../css/add_category.css" />
<form id="Form" class="my-form" action="" method="post">
    <div>
        <input required type="text" class="form-control" id="name" name="category_name" placeholder="Tên danh mục" />
        <br>
        <input onclick="send_category()" type="submit" class="btn btn-primary" value='Thêm'>
    </div>
</form>
<script>
    // Validation_category_Add
    function send_category() {
        var arr_category = document.getElementsByClassName("form-control");
        var category_form = arr_category[0].value;
        if (category_form == "") {
            alert("Vui lòng nhập tên chủ đề");
            event.preventDefault();
        }
    }
</script>