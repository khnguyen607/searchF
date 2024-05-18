<?php
Class Atabase {
    public $host = "localhost";
    public $user = "root";
    public $pass  = "";
    public $dbname  = "review_dulich";

    public $link;
    public $error;

    public function __construct() {
        $this->connectDB();
    }

    private function connectDB() {
        $this->link = new mysqli($this->host,$this->user,$this->pass,
        $this->dbname);
        if(!$this->link) {
            $this->error="Connection fail".$this->link->connect_error;
            return false;
        }
    }

    //select data
    public function select($query) {
        $result = $this->link->query($query) or
         die($this -> link -> error.__LINE__);
         if($result -> num_rows >0) {
            return $result;
         } else {
            return false;
         }
    }
}
?>
<?php
class Aiviet {
    private $db;
    public function __construct() 
    {
        $this -> db = new Atabase();
    }
    //hashtag có nhiều bài viết nhất 
    public function show_hashtag(){
        $query = "
    SELECT DISTINCT REPLACE(REPLACE(TRIM(UPPER(tag.ten_tag)), ' ', ''), '_', '') AS ten_tag, COUNT(chitiet.baiviet_id) AS num_posts
    FROM tag
    INNER JOIN chitiet ON tag.tag_id = chitiet.tag_id
    GROUP BY REPLACE(REPLACE(TRIM(UPPER(tag.ten_tag)), ' ', ''), '_', '')
    ORDER BY num_posts DESC 
    LIMIT 10 ";
        $result = $this->db->select($query);
        return $result;
    }
    
}
// lấy id của bài viết với biến id được gửi đến 
$baiviet= new Aiviet;
if (isset($_GET['id'])) {
    $baiviet_id = $_GET['id'];
} else {
    $baiviet_id = 1;
}
$show_hashtag = $baiviet -> show_hashtag($baiviet_id)
?>



<div class="col-lg-4">
    <div class="blog-box-title">
        <h2>Tìm bài viết</h2>
    </div>
    <form action="/search" method="get" class="form-group search-article">
        <div class="input-group">
            <input type="text" name="keyword" class="form-control rounded-0" maxlength="40" placeholder="Từ khóa" autocomplete="off" />
            <div class="input-group-append">
                <button type="submit" class="btn btn-primary rounded-0 pr-3 pl-" value="Tìm kiếm"><i class="fa-solid fa-magnifying-glass"></i></button>
            </div>
        </div>
    </form>
    <aside class="bg-light p-3 border mb-4">
        <ul class="nav nav-tabs mt-0" id="tourTab" role="tablist">
            <li class="nav-item">
                <a class="nav-link active" data-toggle="tab" href="#view" role="tab" aria-controls="view" aria-selected="true">
                    <h3 class="font-weight-bold font-roboto-slab">Xem nhiều nhất</h3>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" data-toggle="tab" href="#last" role="tab" aria-controls="last" aria-selected="false">
                    <h3 class="font-weight-bold font-roboto-slab">Bài mới</h3>
                </a>
            </li>
        </ul>
        <div class="tab-content" id="myTabContent">
            <div class="tab-pane fade show active" id="view" role="tabpanel" aria-labelledby="view-tab">
                <div class="row-item-article">
                    <a href="/" class="zoom-img">
                        <img src="" alt="ảnh" />
                    </a>
                    <a href="/" class="font-roboto-slab"> DU LỊCH CAMPUCHIA TỰ MÌNH - TẠI SAO KHÔNG</a>
                    <div class="date-meta">15/10/2018</div>
                </div>
                <div class="row-item-article">
                    <a href="/" class="zoom-img">
                        <img src="" alt="ảnh" />
                    </a>
                    <a href="/" class="font-roboto-slab">Đi Tour Du Lịch Campuchia Bằng Máy Bay - Đơn Giản và Nhanh Chóng</a>
                    <div class="date-meta">15/10/2018</div>
                </div>
            </div>
        </div>
    </aside>
    <div class="blog-box-title mt-3">
        <h2>BẠN QUAN TÂM CHỦ ĐỀ GÌ?</h2>
    </div>
    <div class="tag-cloud">
     <?php $i=0; while ($tag = $show_hashtag -> fetch_assoc()){;
     ?>   
        <a href=""><?php echo $tag['ten_tag'] ?> </a>
    <?php } ?>
    </div>
    <div class="banner-right-slide">
    </div>
</div>
