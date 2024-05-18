<?php
include "header_backend.php";
include_once "category_class.php";
ob_start();
?>
<?php
$category = new category;
$show_category = $category->show_category();
$total_category = $category->count_category();
$result_total_category = $total_category->fetch_assoc();
?>

<style>
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
        <p><b>Danh sách danh mục</b> | Tổng số bản ghi: <?php echo $result_total_category['COUNT(*)']; ?></p>
        <div>
            <input placeholder="Tìm kiếm" />
            <a href="#add-category-dialog" class="button">+ Thêm mới</a>
            <div class="dialog overlay" id="add-category-dialog">
                <a href="#" class="overlay-close"></a>
                <div class="dialog-body">
                    <a class="dialog-close" href="#">&times;</a>
                    <h3 align="center" style="font-size: 30px;">Thêm danh mục</h3>
                    <?php include "category_add.php"; ?>
                </div>
            </div>
        </div>
    </div>
    <div class="table_section">
        <table>
            <thead>
                <tr>
                    <th>STT</th>
                    <th>ID</th>
                    <th>Tên danh mục</th>
                    <th>Tổng số bài viết</th>
                    <th>Thao tác</th>
                </tr>
            </thead>
            <tbody>
                <?php
                if ($show_category) {
                    $i = 0;
                    while ($result = $show_category->fetch_assoc()) {
                        $i++;
                ?>
                        <tr>
                            <td><?php echo $i; ?></td>
                            <td><?php echo $result['danhmuc_id']; ?></td>
                            <td><?php echo $result['ten_danhmuc']; ?></td>
                            <td><?php echo $result['COUNT(baiviet.baiviet_id)']; ?></td>
                            <td>
                                <a href="category_update.php?danhmuc_id=<?php echo $result['danhmuc_id'] ?>" class="btn btn-update"><i class="fa-solid fa-pen-to-square"></i></a>
                                <a href="category_delete.php?danhmuc_id=<?php echo $result['danhmuc_id'] ?>" class="btn btn-delete"><i class="fa-solid fa-trash"></i></a>
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