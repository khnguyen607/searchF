<?php
include 'header.php';
include_once "../backend/article_class.php";
?>
<?php
$article = new article;
if (isset($_GET['danhmuc_id']) && $_GET['danhmuc_id'] != NULL) {
    $category_id = $_GET['danhmuc_id'];
}
?>
<style>
    a {
        text-decoration: none;
        color: #000
    }

    hr {
        border-bottom: 3px solid #000;
    }

    .square-image {
        width: 100%;
        height: 0;
        padding-top: 66.67%;
        position: relative;
        overflow: hidden;
    }

    .square-image img {
        position: absolute;
        width: 100%;
        height: auto;
        top: 0;
        left: 0;
    }
</style>

<body id="top">
    <!-- nội dung  -->
    <div class="container pb-sm-5 pb-0" style="margin-top: 3rem;">
        <ul class="breadcrumb">
            <li class="breadcrumb-item"><a href="home.php">TRANG CHỦ</a></li>
            <?php
            $category = new category;
            $get_category = $category->get_category($category_id);
            if ($get_category) {
                $i = 0;
                while ($result = $get_category->fetch_assoc()) {
                    $i++;
            ?>
                    <li class="breadcrumb-item">
                        <a href="#" style="color:blue">
                            <?php echo $result['ten_danhmuc']; ?>
                        </a>
                    </li>
            <?php
                }
            }
            ?>
        </ul>
        <div class="row">
            <!-- bài viết_khối lớn -->
            <div class="col-lg-8">
                <?php
                $show_article_onCat = $article->show_article_onCat($category_id);
                if ($show_article_onCat) {
                    $article_onCat_array = [];
                    while ($row = $show_article_onCat->fetch_assoc()) {
                        $article_onCat_array[] = $row;
                    }
                    $article_onCat_length = count($article_onCat_array);
                    for ($i = 0; $i < $article_onCat_length; $i++) {
                        $article_onCat_data = $article_onCat_array[$i];
                        if ($i === 0) {
                ?>
                            <div class="first-post-list">
                                <h1><a class="post-list" href=" detail.php?baiviet_id=<?php echo $article_onCat_data['baiviet_id']; ?>"><?php echo $article_onCat_data['tieude']; ?></a></h1>
                                <div class="row">
                                    <div class="col-lg-6">
                                        <a href="detail.php?baiviet_id=<?php echo $article_onCat_data['baiviet_id']; ?>" class="zoom-img">
                                            <img src="../backend/uploads/<?php echo $article_onCat_data['anh']; ?>" class="img-fluid" alt="Những điểm vui chơi thú vị" />
                                        </a>
                                    </div>
                                    <div class="col-lg-6">
                                        <p><?php echo $article_onCat_data['tomtat']; ?></p>
                                        <a href="detail.php?baiviet_id=<?php echo $article_onCat_data['baiviet_id']; ?>" class="btn btn-primary">Xem thêm</a>
                                    </div>
                                </div>
                            </div>
                <?php
                        } else {
                            break;
                        }
                    }
                } ?>
                <hr>
                <!--bài con -->
                <div class="row">
                    <?php
                    for ($i = 1; $i < $article_onCat_length; $i++) {
                        $article_onCat_data = $article_onCat_array[$i];
                    ?>
                        <div class="col-lg-6">
                            <div class="first-post post-list">
                                <div class="square-image">
                                    <a href="detail.php?baiviet_id=<?php echo $article_onCat_data['baiviet_id']; ?>" class="zoom-img">
                                        <img src="../backend/uploads/<?php echo $article_onCat_data['anh']; ?>" class="img-fluid" alt="Những địa điểm du lịch thú vị ở quận 1 Đà Nẵng không nên bỏ qua">
                                    </a>
                                </div>
                                <h3><a class="post_link" href="detail.php?baiviet_id=<?php echo $article_onCat_data['baiviet_id']; ?>"><?php echo $article_onCat_data['tieude']; ?></a></h3>
                                <div class="date-meta"><?php echo date('d/m/Y', strtotime($article_onCat_data['Ngaytao'])); ?></div>
                                <p><?php echo $article_onCat_data['tomtat']; ?></p>
                            </div>
                            <hr>
                        </div>
                    <?php
                    }
                    ?>
                </div>
                <!---------------------PAGINATION--------------------------------->
                <div class="text-center">
                    <div class="pagination-container">
                        <ul class="pagination">
                            <li class="active"><a>1</a></li>
                            <li><a href="/diem-den?page=2">2</a></li>
                            <li><a href="/diem-den?page=3">3</a></li>
                            <li><a href="/diem-den?page=4">4</a></li>
                            <li class="PagedList-skipToNext"><a href="/diem-den?page=2" rel="next">»</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- Phần thanh tìm kiếm -->
            <?php
            include 'search.php';
            ?>
        </div>
        <!-- Đóng lại khối nội dung+search -->
    </div>

    <?php
    include 'footer.php';
    ?>
    <script>
        window.fbAsyncInit = function() {
            FB.init({
                appId: '967645383416316',
                xfbml: true,
                version: 'v3.1'
            });
            FB.AppEvents.logPageView();
        };

        (function(d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) {
                return;
            }
            js = d.createElement(s);
            js.id = id;
            js.src = "https://connect.facebook.net/en_US/sdk.js";
            fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));
    </script>
    <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-4db588be49b74587"></script>
    <script>
        document.addEventListener("DOMContentLoaded", function() {
            var navbarLeftItems = document.querySelectorAll('.zoom-img, .btn , .post_link');
            navbarLeftItems.forEach(function(item) {
                item.addEventListener('click', function(event) {
                    event.preventDefault();
                    window.location.href = item.getAttribute('href');
                });
            });
        });
    </script>
</body>