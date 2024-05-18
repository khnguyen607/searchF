<?php
include "header_backend.php";
include_once "article_class.php";
ob_start();
?>
<?php
$article = new article;
$show_article = $article->show_article();

$total_article = $article->count_article();
$result_total_article = $total_article->fetch_assoc();
?>
<style>
    th.stt,
    td.stt {
        width: 7%;
    }

    th.id,
    td.id {
        width: 7%;
    }

    button[type="submit"] {
        outline: none;
        border: none;
        border-radius: 6px;
        cursor: pointer;
        padding: 10px;
        color: #ffffff;
        background-color: #0298cf;
    }

    .button {
        display: inline-block;
        padding: 10px 20px;
        background-color: #0298cf;
        color: #fff;
        text-decoration: none;
        border: none;
        border-radius: 6px;
        cursor: pointer;
        font-size: 16px;
        font-weight: bold;
        transition: background-color 0.3s ease;
    }

    .button:hover {
        background-color: #0272a4;
    }

    .dialog-close {
        font-size: 30px;
    }
</style>
<link rel="stylesheet" href="../css/sticky_table.css" />
<link rel="stylesheet" href="../css/dialog_final.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" />
<div class="table">
    <div class="table_header">
        <p><b>Danh sách bài viết</b> | Tổng số bản ghi: <?php echo $result_total_article['COUNT(*)']; ?></p>
        <div>
            <input placeholder="Tìm kiếm" />
            <a href="#my-dialog" class="button">+ Thêm mới</a>
            <div class="dialog overlay" id="my-dialog">
                <a href="#" class="overlay-close"></a>
                <div class="dialog-body">
                    <a class="dialog-close" href="#">&times;</a>
                    <h3 align="center" style="font-size: 30px;">Thêm bài viết</h3>
                    <?php include "article_add.php"; ?>
                </div>
            </div>
        </div>
    </div>
    <div class="table_section">
        <table>
            <thead>
                <tr>
                    <th class="stt">STT</th>
                    <th class="id">ID</th>
                    <th>Danh mục</th>
                    <th>Tiêu đề</th>
                    <th>Tóm tắt</th>
                    <th>Ảnh nổi bật</th>
                    <th>Nội dung</th>
                    <th>Tác giả</th>
                    <th>Ngày đăng</th>
                    <th>Thao tác</th>
                </tr>
            </thead>
            <tbody>
                <?php
                if ($show_article) {
                    $i = 0;
                    while ($result = $show_article->fetch_assoc()) {
                        $i++;
                ?>
                        <tr>
                            <td class="stt"><?php echo $i; ?></td>
                            <td class="id"><?php echo $result['baiviet_id']; ?></td>
                            <td><?php echo $result['ten_danhmuc']; ?></td>
                            <td><?php echo $result['tieude']; ?></td>
                            <td><?php echo substr($result['content'], 0, 100) . (strlen($result['tomtat']) > 100 ? "..." : ""); ?></td>
                            <td>
                                <?php if (isset($result['anh']) && !empty($result['anh'])) : ?>
                                    <img src="./uploads/<?php echo $result['anh']; ?>" alt="">
                                <?php endif; ?>
                            </td>
                            <td><?php echo substr($result['content'], 0, 100) . (strlen($result['content']) > 100 ? "..." : ""); ?></td>
                            <td><?php echo $result['author_name']; ?></td>
                            <td><?php echo date('d-m-Y', strtotime($result['Ngaytao'])); ?></td>
                            <td>
                                <a href="article_update.php?baiviet_id=<?php echo $result['baiviet_id']; ?>" class="btn btn-update">
                                    <i class=" fa-solid fa-pen-to-square"></i>
                                </a>
                                <a href="article_delete.php?baiviet_id=<?php echo $result['baiviet_id']; ?>" class="btn btn-delete">
                                    <i class="fa-solid fa-trash"></i>
                                </a>
                            </td>
                        </tr>
                <?php
                    }
                }
                ?>
            </tbody>
        </table>
    </div>
</div>