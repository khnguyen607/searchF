<?php
include 'header.php';
include_once "../backend/article_class.php";
include_once "../backend/category_class.php";
?>
<?php
$category = new category;
$show_category = $category->show_category();
$show_name_category = $category->show_name_category();
$article = new article;
?>
<style>
    a {
        text-decoration: none;
        color: #000;
        font-weight: 600;
    }
</style>

<body id="top">
    <div class="container mt-4 pb-sm-5 pb-0">
        <div class="row">
            <div class="col-lg-8 col-md-12">
                <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
                    <div class="carousel-indicators">
                        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
                        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
                    </div>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="https://cdn.tgdd.vn/Files/2021/07/03/1365413/luu-ngay-10-dia-diem-du-lich-cuc-lang-man-danh-cho-cac-cap-doi-tai-viet-nam-202107031634549718.jpg" class="d-block w-100" alt="ảnh">
                        </div>
                        <div class="carousel-item">
                            <img src="https://cdn.tgdd.vn/Files/2021/07/03/1365413/luu-ngay-10-dia-diem-du-lich-cuc-lang-man-danh-cho-cac-cap-doi-tai-viet-nam-202107031634549718.jpg" class="d-block w-100" alt="ảnh">
                        </div>
                        <div class="carousel-item">
                            <img src="https://cdn.tgdd.vn/Files/2021/07/03/1365413/luu-ngay-10-dia-diem-du-lich-cuc-lang-man-danh-cho-cac-cap-doi-tai-viet-nam-202107031634549718.jpg" class="d-block w-100" alt="ảnh">
                        </div>
                    </div>
                    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Previous</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Next</span>
                    </button>
                </div>
            </div>
            <div class="col-lg-4 col-md-12 pl-lg-0">
                <div class="fixed-article">
                    <a href="/" class="item-overlay-text">
                        <img src="/" class="img-fluid" alt="anh" />
                        <div class="caption">
                            <span>Điểm đến</span>
                            <div>Điều thú vị khi bạn đi du lịch Đà Nẵng vào tháng 3</div>
                        </div>
                    </a>
                </div>
                <div class="fixed-article">
                    <a href="/" class="item-overlay-text">
                        <img src="" class="img-fluid" alt="ảnh" />
                        <div class="caption">
                            <span>Kinh nghiệm</span>
                            <div>Kinh nghiệm du lịch Nhật Bản tháng 5 dễ áp dụng cho tất cả mọi người</div>
                        </div>
                    </a>
                </div>
            </div>
        </div>
        <div class="row mt-4">
            <!-- PHẦN ĐẨY DATA col-8 -->
            <!-- Đẩy lần 1 -->
            <?php
            if ($show_name_category) {
                $first_category = false;
                foreach ($show_name_category as $result_danhmuc) {
                    if (!$first_category) {
            ?>
                        <div class="col-lg-8">
                            <!-- Chủ đề 1 -->
                            <div class="blog-box-title mt-4">
                                <h2><a href="/"><?php echo $result_danhmuc['ten_danhmuc']; ?></a></h2>
                                <p></p>
                            </div>
                            <div class="row">
                                <!-- Bài nổi bật nhất -->
                                <div class="col-md-6">
                                    <?php
                                    $top_article = $result_danhmuc['ten_danhmuc'];
                                    $show_top_article = $article->show_top_article($top_article);
                                    if ($show_top_article) {
                                        $top_article_array = [];
                                        while ($row = $show_top_article->fetch_assoc()) {
                                            $top_article_array[] = $row;
                                        }
                                        $top_article_length = count($top_article_array);
                                        for ($i = 0; $i < $top_article_length; $i++) {
                                            $article_data = $top_article_array[$i];
                                            if ($i === 0) {
                                    ?>
                                                <div class="first-post">
                                                    <a href="/" class="zoom-img">
                                                        <img src="../backend/uploads/<?php echo $article_data["anh"]; ?>" class="img-fluid" alt="ảnh">
                                                    </a>
                                                    <h3><a href="/"><?php echo $article_data["tieude"]; ?></a></h3>
                                                    <div class="date-meta"><?php echo date('d-m-Y', strtotime($article_data['Ngaytao'])); ?></div>
                                                    <p><?php echo $article_data["tomtat"]; ?></p>
                                                </div>
                                    <?php
                                            } else {
                                                break;
                                            }
                                        }
                                    }
                                    ?>
                                </div>
                                <!-- 4 bài nổi bật khác -->
                                <div class="col-md-6 mt-3 mt-md-0">
                                    <?php for ($i = 1; $i < $top_article_length; $i++) {
                                        $article_data = $top_article_array[$i];
                                    ?>
                                        <div class="item-article-list">
                                            <a href="/" class="img-thumb">
                                                <img src="../backend/uploads/<?php echo $article_data['anh']; ?>" alt="ảnh" width="70" height="70" />
                                            </a>
                                            <div class="caption">
                                                <a href="/"><?php echo $article_data['tieude']; ?></a>
                                                <p class="date-meta"><?php echo date('d-m-Y', strtotime($article_data['Ngaytao'])); ?></p>
                                            </div>
                                        </div>
                                    <?php   } ?>
                                </div>
                                <!-- Phần đẩy top4 hết -->
                            </div>
                            <!-- Hết khung bên trái -->

                        </div>
            <?php
                    }
                    $first_category = true;
                }
            }
            ?>
            <?php
            include 'search.php';
            ?>
            <!-- Kết thúc phần Điểm đến và search -->
            <div class="banner-right-slide">
            </div>
            <!-- Đẩy lần 2 -->
            <?php
            if ($show_name_category) {
                foreach ($show_name_category as $result_danhmuc) {
                    if ($result_danhmuc['ten_danhmuc'] != "ĐIỂM ĐẾN") {
            ?>
                        <div class="col-lg-8">
                            <!-- Phần đẩy 1 -->
                            <div class="blog-box-title mt-4">
                                <h2><a href="/"><?php echo $result_danhmuc['ten_danhmuc']; ?></a></h2>
                                <p></p>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <!-- Bài nổi bật nhất -->
                                    <?php
                                    $top_article = $result_danhmuc['ten_danhmuc'];
                                    $show_top_article = $article->show_top_article($top_article);
                                    if ($show_top_article) {
                                        $top_article_array = [];
                                        while ($result = $show_top_article->fetch_assoc()) {
                                            $top_article_array[] = $result;
                                        }
                                        $top_article_length = count($top_article_array);
                                        for ($i = 0; $i < $top_article_length; $i++) {
                                            $article_data = $top_article_array[$i];
                                            if ($i === 0) {
                                    ?>
                                                <div class="first-post">
                                                    <a href="/" class="zoom-img">
                                                        <img src="../backend/uploads/<?php echo $article_data['anh']; ?>" class="img-fluid" alt="ảnh">
                                                    </a>
                                                    <h3><a href="/"><?php echo $article_data['tieude']; ?></a></h3>
                                                    <div class="date-meta"><?php echo date('d-m-Y', strtotime($article_data['Ngaytao'])); ?></div>
                                                    <p><?php echo $article_data["tomtat"]; ?></p>
                                                </div>
                                    <?php
                                            } else {
                                                break;
                                            }
                                        }
                                    }
                                    ?>
                                </div>
                                <div class="col-md-6 mt-3 mt-md-0">
                                    <!-- 4 bài bên phải -->
                                    <?php for ($i = 1; $i < $top_article_length; $i++) {
                                        $article_data = $top_article_array[$i];
                                    ?>
                                        <div class="item-article-list ">
                                            <a href=" " class="img-thumb ">
                                                <img src="../backend/uploads/<?php echo $article_data['anh']; ?> " alt=" ảnh" width="70px" height="70px" />
                                            </a>
                                            <div class="caption ">
                                                <a href=" "><?php echo $article_data['tieude']; ?></a>
                                                <p class="date-meta "><?php echo date('d-m-Y', strtotime($article_data['Ngaytao'])); ?></p>
                                            </div>
                                        </div>
                                    <?php } ?>
                                </div>
                                <!-- Phần đẩy 2 hết -->
                            </div>
                            <!-- Hết khung bên trái -->
                        </div>
            <?php
                    }
                }
            }
            ?>
        </div>
        <?php
        include 'footer.php';
        ?>
        <script src="/bundles/jquery?v=8Oos0avDZyPg-cbyVzvkIfERIE1DGSe3sRQdCSYrgEQ1 "></script>
        <script src="/bundles/bootstrap?v=Gi9rjUU7XC1rCCJ3sM4h-SZd5W_DTj3z0x4RYZlawdY1 "></script>
        <script>
            $(".slide-box ").owlCarousel({
                items: 1,
                loop: true,
                autoplay: true
            })
        </script>
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
                js.src = "https://connect.facebook.net/en_US/sdk.js ";
                fjs.parentNode.insertBefore(js, fjs);
            }(document, 'script', 'facebook-jssdk'));
        </script>
        <script>
            window.dataLayer = window.dataLayer || [];

            function gtag() {
                dataLayer.push(arguments);
            }
            gtag('js', new Date());

            gtag('config', 'UA-127793164-1');
        </script>

</body>

</html>
