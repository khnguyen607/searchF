<?php
include_once "article_class.php";
ob_start();
?>

<?php
$article = new article;
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $insert_article = $article->insert_article($_POST, $_FILES);
    if ($insert_article) {
        echo "<script>alert('Thêm bài viết thành công');</script>";
        header('Location: http://localhost/Bai_Tap_Lon_BE/backend/article_list.php');

        exit();
    }
}

?>
<script src="js/validate_upload_img.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://cdn.ckeditor.com/ckeditor5/41.3.1/classic/ckeditor.js"></script>
<form id="Form" class="my-form" action="" method="post" enctype="multipart/form-data">
    <div>
        <select name="danhmuc_id" class="select_category">
            <option value="#">--Chọn danh mục</option>
            <?php
            $show_category = $article->show_category();
            if ($show_category) {
                while ($result = $show_category->fetch_assoc()) {
            ?>
                    <option value="<?php echo $result['danhmuc_id'] ?>"><?php echo $result['ten_danhmuc'] ?></option>
            <?php
                }
            }
            ?>
        </select>
        <select name="author_id" class="select_author">
            <option value="#">--Tác giả</option>
            <?php
            $show_author = $article->show_author();
            if ($show_author) {
                while ($result = $show_author->fetch_assoc()) {
            ?>
                    <option value="<?php echo $result['author_id'] ?>"><?php echo $result['author_name'] ?></option>
            <?php
                }
            }
            ?>
        </select>
    </div>
    <div>
        <input required type="text" name="article_name" class="form-control" placeholder="Nhập tên bài viết" />
    </div>
    <div>
        <input required type="text" name="article_tomtat" class="form-control" placeholder="Nhập tóm tắt" />
    </div>
    <div>
        Tải lên ảnh: <input required type="file" name="article_img" class="form-control" />
    </div>
    <br>
    <div>
        <textarea name="article_content" id="article_content" placeholder="Nhập nội dung ở đây"></textarea>
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
    <br>
    <input type="submit" class="btn btn-primary" value="Thêm bài viết">
</form>
<style>
    form {
        background: #fff;
        padding: 30px;
        margin: 20px;
        border-radius: 10px;
        max-width: 100%;
    }

    .rollback {
        display: inline-block;
        padding: 10px 20px;
        background-color: #b1b1b1;
        color: #fff;
        text-decoration: none;
        border-radius: 5px;
        transition: background-color 0.3s ease;
    }

    .rollback:hover {
        background-color: #616161;
    }

    h2 {
        font-size: 30px;
        color: #000000;
        margin: 20px 20px;
        text-align: center;
        font-weight: 600;
        text-transform: uppercase;
    }

    select {
        width: calc(50% - 15px);
        display: inline-block;
        justify-content: space-between;
        border: 1px solid #0272a4;
        border-radius: 6px;
        padding: 10px;
        margin-bottom: 15px;
        margin-right: 12px;
        box-sizing: border-box;
        font-size: 20px;
    }

    input[type="text"],
    textarea {
        width: 100%;
        padding: 10px;
        margin-bottom: 15px;
        border: 1px solid #0272a4;
        border-radius: 6px;
        box-sizing: border-box;
        font-size: 20px;
    }

    .row {
        display: flex;
        justify-content: space-between;
        align-items: center;
        margin-bottom: 20px;
    }

    .col_img {
        width: 50%;
    }

    .col_img img {
        max-width: 100px;
        object-fit: cover;
        border: 2px solid #0272a4;
        border-radius: 15px;
    }

    .btn-primary {
        background-color: #0272a4;
        color: #fff;
        padding: 10px 20px;
        border: none;
        border-radius: 6px;
        cursor: pointer;
        font-size: 20px;
    }

    .btn-primary:hover {
        background-color: #026391;
    }
</style>