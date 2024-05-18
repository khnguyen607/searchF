<?php
include "header_backend.php";
include "author_class.php";

$author = new author;
if (isset($_GET['search_author'])) {
    $search = $_GET['search_author'];
    $search_author = $author->show_author_search($search);
    if ($search_author === false) {
        $num_results = 0;
    } else {
        $num_results = $search_author->num_rows;
    }
} else {
    $num_results = 0;
}
?>
<style>
    div.table {
        font-size: 20px;
    }
</style>
<link rel="stylesheet" href="../css/sticky_table.css" />
<link rel="stylesheet" href="../css/update.css" />
<link rel="stylesheet" href="../css/dialog_final.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" />
<div class="table">
    <div class="table_header">
        <a href="author_list.php" class="rollback">Quay lại</a> <br> <br>
        <p><?php echo "Tìm thấy $num_results kết quả với: " . "<b>$search</b>" ?></p>
        <br>
        <div class="right-conner">
            <input type="text" id="searchInput" name="search_author" placeholder="Tìm kiếm" />
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
                // Kiểm tra
                if ($num_results > 0) {
                    $i = 0;
                    while ($result = $search_author->fetch_assoc()) {
                        $i++;
                ?>
                        <tr>
                            <td> <?php echo $i ?></td>
                            <td><?php echo $result['author_id'] ?></td>
                            <td><?php echo $result['author_name'] ?></td>
                            <td><?php echo $result['author_mail'] ?></td>
                            <td><?php echo $result['COUNT(baiviet.baiviet_id)'] ?></td>
                            <td>
                                <a href="author_update.php?author_id=<?php echo $result['author_id']; ?>" class="btn btn-update"><i class=" fa-solid fa-pen-to-square"></i></a>
                                <a href="author_delete.php?author_id=<?php echo $result['author_id'] ?>" class="btn btn-delete"><i class="fa-solid fa-trash"></i></a>
                            </td>
                        </tr>
                <?php
                    }
                } else {
                    echo "<tr><td colspan='8'>Không tìm thấy kết quả phù hợp.</td></tr>";
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