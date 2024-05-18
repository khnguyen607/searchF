<?php
include "header_backend.php";
include_once "author_class.php";
ob_start();
?>
<?php
$author = new author;
$show_author = $author->show_author();
$total_author = $author->count_author();
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
        <?php
        $result_total_author = $total_author->fetch_assoc();
        ?>
        <p><b>Danh sách tác giả</b> | Tổng số bản ghi: <?php echo $result_total_author['COUNT(*)']; ?></p>
        <div class="right-conner">
            <input type="text" id="searchInput" name="search_author" placeholder="Tìm kiếm" />
            <a href="#my-dialog-add" class="button">+ Thêm mới</a>
            <div class="dialog overlay" id="my-dialog-add">
                <a href="#" class="overlay-close"></a>
                <div class="dialog-body">
                    <a class="dialog-close" href="#">&times;</a>
                    <h3 align="center" style="font-size: 30px;">Thêm tác giả</h3>
                    <?php include "author_add.php"; ?>
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
                    <th>Tên tác giả</th>
                    <th>Email liên hệ</th>
                    <th>Số bài đăng</th>
                    <th>Thao tác</th>
                </tr>
            </thead>
            <tbody>
                <?php

                if ($show_author) {
                    $i = 0;
                    while ($result = $show_author->fetch_assoc()) {
                        $i++;
                ?>
                        <tr>
                            <td><?php echo $i; ?></td>
                            <td><?php echo isset($result['author_id']) ? $result['author_id'] : ''; ?></td>
                            <td><?php echo $result['author_name']; ?></td>
                            <td><?php echo $result['author_mail']; ?></td>
                            <td><?php echo $result['COUNT(baiviet.baiviet_id)']; ?></td>
                            <td>
                                <a href="author_update.php?author_id=<?php echo $result['author_id']; ?>" class="btn btn-update"><i class=" fa-solid fa-pen-to-square"></i></a>
                                <a href="author_delete.php?author_id=<?php echo $result['author_id'] ?>" class="btn btn-delete"><i class="fa-solid fa-trash"></i></a>
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
<script>
    document.addEventListener("DOMContentLoaded", function() {
        var searchInput = document.getElementById("searchInput");
        searchInput.addEventListener("keypress", function(event) {
            if (event.key === "Enter") {
                var searchValue = searchInput.value;
                window.location.href = "search_result.php?search_author=" + encodeURIComponent(searchValue);
            }
        });
    });
</script>