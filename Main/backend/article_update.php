<?php
include "header_backend.php";
include_once "article_class.php";
ob_start();
?>

<?php
$article = new article;
if (isset($_GET['baiviet_id']) && $_GET['baiviet_id'] != NULL) {
    $article_id = $_GET['baiviet_id'];
}
$get_article = $article->get_article($article_id);
if ($get_article) {
    $result = $get_article->fetch_assoc();
}
?>
<?php
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $category_id = $_POST['category_id'];
    $author_id = $_POST['author_id'];
    $title = $_POST['article_name'];
    $content = $_POST['article_content'];
    $tomtat = $_POST['article_tomtat'];
    //ảnh tiêu đề
    if (!empty($_FILES["article_img"]["name"])) {
        $file_path =  basename($_FILES['article_img']['name']);
        $upload_image = "uploads/" . $file_path;
        move_uploaded_file($_FILES["article_img"]["tmp_name"], $upload_image);
    } else {
        $file_path = $result['anh'];
    }
    $update_article = $article->update_article($article_id, $category_id, $author_id, $title, $content, $tomtat, $file_path);
    if ($update_article) {
        echo "<script>alert('Cập nhật bài viết thành công');</script>";
        header('Location: http://localhost/Bai_Tap_Lon_BE/backend/article_list.php');
    }
}
?>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://cdn.ckeditor.com/ckeditor5/41.3.1/classic/ckeditor.js"></script>
<link rel="stylesheet" href="../css/article_update.css" />
<form id="Form" class="my-form" action="" method="post" enctype="multipart/form-data">
    <a href="article_list.php" class="rollback">Quay lại</a> <br> <br>
    <h2>Cập nhật bài viết</h2><br>
    <div>
        <select name="category_id" class="select_category">
            <option value="#">--Chọn danh mục</option>
            <?php
            $show_category = $article->show_category();
            if ($show_category) {
                while ($result_category = $show_category->fetch_assoc()) {
            ?>
                    <option <?php if ($result['danhmuc_id'] == $result_category['danhmuc_id']) {
                                echo "selected";
                            } ?> value="<?php echo $result_category['danhmuc_id'] ?> "><?php echo $result_category['ten_danhmuc'] ?></option>
            <?php
                }
            }
            ?>
        </select>
        <select required name="author_id" class="select_author">
            <option value="#">--Tác giả</option>
            <?php
            $show_author = $article->show_author();
            if ($show_author) {
                while ($result_author = $show_author->fetch_assoc()) {
            ?>
                    <option <?php if ($result['author_id'] == $result_author['author_id']) {
                                echo "selected";
                            } ?> value="<?php echo $result_author['author_id'] ?> "><?php echo $result_author['author_name'] ?></option>
            <?php
                }
            }
            ?>
        </select>
    </div>
    <div>
        <input required type="text" name="article_name" class="form-control" placeholder="Tiêu đề bài viết" value="<?php echo $result['tieude'] ?>" />
    </div>
    <div>
        <input required type="text" name="article_tomtat" class="form-control" placeholder="Tóm tắt" value="<?php echo $result['tomtat'] ?>" />
    </div>
    <div class="row">
        <div class="col_img">
            <label for="origin" class="form-label">Ảnh hiện tại</label> <br>
            <img src="uploads/<?php echo $result['anh'] ?>" alt="ảnh đại diện" width='100px'>
        </div>
        <div class="col_img">
            <label for="origin" class="form-label">Chọn ảnh mới</label> <br>
            <input name="article_img" type="file" id="article_img" />
        </div>
    </div>
    <div>
        <textarea name="article_content" rows="10" id="article_content"><?php echo $result['content']; ?></textarea>
    </div>
    <script>
        ClassicEditor.create(document.querySelector("#article_content"))
            .then((article_content) => {
                console.log(article_content);
            })
            .catch((error) => {
                console.error(error);
            });
    </script>
    <br> <br>
    <input type="submit" class="btn btn-primary" value="Cập nhật" />
</form>
<script src="js/validate_upload_img.js"></script>
<script src="js/confirm_update.js"></script>