<?php
include_once "category_class.php";
$category = new category;
if (!isset($_GET['danhmuc_id']) or $_GET['danhmuc_id'] == NULL) {
    echo "<script> window.location = 'category_list.php' </script>";
} else {
    $category_id = $_GET['danhmuc_id'];
}
$delete_category = $category->delete_category($category_id);
