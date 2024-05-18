<?php
include "article_class.php";
$article = new article;
if (!isset($_GET['baiviet_id']) or $_GET['baiviet_id'] == NULL) {
    echo "<script> window.location = 'article_list.php' </script>";
} else {
    $article_id = $_GET['baiviet_id'];
}

$delete_article = $article->delete_article($article_id);
