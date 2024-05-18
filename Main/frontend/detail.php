<?php
include 'header.php';
include_once "../backend/article_class.php";
include_once "../backend/category_class.php";
include_once "../backend/author_class.php";
?>
<?php
$article = new article;
if (isset($_GET['baiviet_id']) && $_GET['baiviet_id'] != NULL) {
    $article_id = $_GET['baiviet_id'];
    $article_view = $article->article_view($article_id);
}
?>
<style>
    a {
        text-decoration: none;
        color: #000;
    }
</style>
<div class="container pb-sm-5 pb-0" style="margin-top: 3rem;">
    <ul class="breadcrumb">
        <li class="breadcrumb-item">
            <a href="home.php">Trang chủ</a>
        </li>
        <li class="breadcrumb-item">
            <a href="#" style="color:blue">Điểm đến</a>
        </li>
    </ul>
    <div class="row">
        <div class="col-lg-8">
            <?php
            $detail_article = $article->detail_article($article_id);
            if ($detail_article) {
                $i = 0;
                while ($result_detail = $detail_article->fetch_assoc()) {
                    $i++;
            ?>
                    <h1 class="article-title"><?php echo $result_detail['tieude']; ?></h1>
                    <div class="date-meta"><?php echo date('d/m/Y', strtotime($result_detail['Ngaytao'])); ?></div>
                    <hr />
                    <p>
                        <em><?php echo $result_detail['tomtat']; ?></em>
                    </p>
                    <div class="body-content">
                        <?php echo $result_detail['content']; ?>
                    </div>
                    <p style="font-weight:bold ; text-align: right">Cre: <?php echo $result_detail['author_name']; ?></p>

            <?php
                }
            }
            ?>
        </div>
        <?php
        include 'search.php';
        ?>
        <!-- HẾT NỘI DUNG -->
        <hr />
        <p class="tag-tours">
            <i class="fa fa-tags"></i>
            Xem thêm:
            <a href="">Đà Nẵng</a>
        </p>
        <div class="post-bottom">
            <a href="javascript:window.history.back()">
                <i class="fa fa-reply"></i>
                Quay về trang trước
            </a>
            <a href="#top" class="scroll-action">
                <i class="cattour-icon-top"></i>
                Lên đầu trang
            </a>
        </div>

        <div class="blog-box-title mt-4">
            <h2>BÀI VIẾT KHÁC</h2>
        </div>
        <div class="row">
            <div class="col-lg-6">
                <div class="first-post post-list">
                    <a href="" class="zoom-img">
                        <img src="" class="img-fluid" alt="ảnh">
                    </a>
                    <h3>
                        <a href="">Bái Đính cổ tự - ngôi chùa trứ danh đất Ninh Bình</a>
                    </h3>
                    <div class="date-meta">31/01/2019</div>
                    <p>Bái Đính cổ tự đậm đặc từ vài trăm năm trước và cho đến nay khi khu chùa mới được quy mô hoành tráng cũng không làm mất đi sức hút của nó.</p>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="first-post post-list">
                    <a href="" class="zoom-img">
                        <img src="" class="img-fluid" alt="ảnh">
                    </a>
                    <h3>
                        <a href="">Tham khảo lịch trình du lịch Đà Nẵng bằng ô tô – cẩm nang du lịch</a>
                    </h3>
                    <div class="date-meta">29/01/2019</div>
                    <p>Du lịch Đà Nẵng bằng ô tô đang trở thành vấn đề được nhiều người quan tâm hiện nay. Đà Nẵng được biết tới là một trong những thành phố sạch và đẹp nhất tại Việt Nam hiện nay. Chính vì vậy nơi đây là điểm đến thu hút nhiều khách du lịch tới thăm hàng năm. Việc du lịch bằng ô tô sẽ mang tới cho bạn những trải nghiệm tuyệt vời và tiết kiệm được một khoản chi phí đáng kể.</p>
                </div>
            </div>
        </div>

        <div class="comment-container ">
            <div class="comment-input ">
                <div class="mb-3">
                    <label for="commentMessage" class="form-label" style="font-size: larger;"><strong>Cho chúng tôi biết suy nghĩ của bạn về bài viết nhé</strong></label>
                    <textarea class="form-control" id="commentMessage" rows="3" placeholder="Viết bình luận ở đây"></textarea>
                </div>
                <button type="submit" class="btn btn-primary">Gửi</button>
            </div>
            <hr>
            <div class="comment">
                <div class="d-flex align-items-center mb-6">
                    <img class="avatar" src="https://via.placeholder.com/50" alt="Avatar">
                    <div>
                        <div class="comment-card">
                            <h5 class="card-title">Đức An</h5>
                            <p class="card-text">Bài viết hay quá</p>
                            <!-- Reply Button -->
                            <button class="btn btn-sm btn-primary reply">Trả lời</button>
                        </div>
                    </div>
                </div>

                <!-- Reply Comment -->
                <div class="reply">
                    <div class="d-flex align-items-center">
                        <img class="avatar" src="https://via.placeholder.com/50" alt="Avatar">
                        <div>
                            <div class="reply-card">
                                <h5 class="card-title">Đức Anh</h5>
                                <p class="card-text">Tớ cảm ơn ạ</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <br>
    </div>

    <?php
    include 'footer.php';
    ?>