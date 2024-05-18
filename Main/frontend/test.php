<?php
include 'header.php';
include_once "../backend/article_class.php";
include_once "../backend/category_class.php";
$article = new article;
$show_test = $article->show_test();
if ($show_test) {
    while ($item = $show_test->fetch_assoc()) {
?>
        <p><?php echo $item['tieude']; ?></p>
        <p><?php echo $item['content']; ?></p>
        <p><img src="../backend/uploads/<?php echo $item['anh']; ?>" alt=""></p>
<?php
    }
}
?>