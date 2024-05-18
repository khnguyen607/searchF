<?php
include_once 'database.php';
?>  
<?php
class article
{
    private $db;
    public function __construct()
    {
        $this->db = new Database();
    }
    public function insert_article()
    {
        $category_id = $_POST['danhmuc_id'];
        $author_id = $_POST['author_id'];
        $title = $_POST['article_name'];
        $content = $_POST['article_content'];
        $tomtat = $_POST['article_tomtat'];
        //ảnh tiêu đề
        $file_path =  basename($_FILES['article_img']['name']);
        $upload_image = "uploads/" . $file_path;
        move_uploaded_file($_FILES["article_img"]["tmp_name"], $upload_image);
        $query = "INSERT INTO baiviet (
            danhmuc_id,
            author_id,
            tieude,
            content,
            Ngaytao,
            tomtat,
            anh )
        VALUES(
            '$category_id', 
            '$author_id', 
            '$title', 
            '$content', 
             NOW(), 
            '$tomtat',
            '$file_path' ) ";
        $result = $this->db->insert($query);
        return ($result);
    }
    public function show_category()
    {
        $query = "SELECT * FROM danhmuc ORDER BY danhmuc_id";
        $result = $this->db->select($query);
        return $result;
    }
    public function show_author()
    {
        $query = "SELECT * FROM author ORDER BY author_id";
        $result = $this->db->select($query);
        return $result;
    }
    public function show_article()
    {
        $query = "SELECT baiviet.*,author.author_name,danhmuc.ten_danhmuc
                  FROM baiviet INNER JOIN author ON baiviet.author_id=author.author_id
                  INNER JOIN danhmuc ON baiviet.danhmuc_id=danhmuc.danhmuc_id 
                  ORDER BY baiviet_id";
        $result = $this->db->select($query);
        return $result;
    }

    public function get_article($article_id)
    {
        $query = "SELECT * FROM baiviet WHERE baiviet_id = '$article_id'";
        $result = $this->db->select($query);
        return $result;
    }
    public function delete_article($article_id)
    {
        $query = "DELETE FROM baiviet WHERE baiviet_id = '$article_id'";
        $result = $this->db->delete($query);
        header('Location:article_list.php');
        return $result;
    }
    public function update_article($article_id, $category_id, $author_id, $title, $content, $tomtat, $file_path)
    {
        $query = "UPDATE baiviet 
        SET danhmuc_id= '$category_id', 
            author_id= '$author_id', 
            tieude = '$title', 
            content = '$content', 
            Ngaytao = NOW(), 
            tomtat = '$tomtat',
            anh = '$file_path'
         WHERE baiviet_id = '$article_id'";
        $result = $this->db->update($query);
        header('Location:article_list.php');
        return $result;
    }
    public function count_article()
    {
        $query = "SELECT COUNT(*) FROM baiviet";
        $result = $this->db->select($query);
        return $result;
    }
    public function show_top_article($top_article)
    {
        $query = "SELECT baiviet.* 
        FROM baiviet JOIN danhmuc ON baiviet.danhmuc_id = danhmuc.danhmuc_id
        WHERE danhmuc.ten_danhmuc = '$top_article'
        ORDER BY baiviet_id
        LIMIT 5 ";
        $result = $this->db->select($query);
        return $result;
    }
    public function show_article_onCat($category_id)
    {
        $query = "SELECT baiviet.*,author.author_name,danhmuc.ten_danhmuc
                  FROM baiviet INNER JOIN author ON baiviet.author_id=author.author_id
                  INNER JOIN danhmuc ON baiviet.danhmuc_id=danhmuc.danhmuc_id 
                  WHERE baiviet.danhmuc_id = '$category_id'
                  ORDER BY baiviet_id";
        $result = $this->db->select($query);
        return $result;
    }
    public function detail_article($article_id)
    {
        $query = "SELECT baiviet.*,author.author_name,danhmuc.ten_danhmuc
        FROM baiviet JOIN author ON baiviet.author_id=author.author_id
        JOIN danhmuc ON baiviet.danhmuc_id=danhmuc.danhmuc_id 
        WHERE baiviet_id = '$article_id' ";
        $result = $this->db->select($query);
        return $result;
    }
    public function article_view($article_id)
    {
        $query = "UPDATE baiviet SET luotxem = luotxem+1
        WHERE baiviet_id= '$article_id'";
        $result = $this->db->update($query);
        return $result;
    }
}
?>