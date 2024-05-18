<?php
include_once "author_class.php";
$author = new author;
if (!isset($_GET['author_id']) or $_GET['author_id'] == NULL) {
    echo "<script> window.location = 'author_list.php' </script>";
    echo "<script> alert('Xóa thành công'); </script>";
} else {
    $author_id = $_GET['author_id'];
}
$delete_author = $author->delete_author($author_id);
