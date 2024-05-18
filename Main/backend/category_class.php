<?php
include_once "database.php";
?>  
<?php
class category
{
    private $db;
    public function __construct()
    {
        $this->db = new Database();
    }
    public function insert_category($category_name)
    {
        $query = "INSERT INTO danhmuc (ten_danhmuc) VALUES('$category_name')";
        $result = $this->db->insert($query);
        return $result;
    }
    public function show_category()
    {
        $query = "SELECT danhmuc.*, COUNT(baiviet.baiviet_id)
        FROM danhmuc LEFT JOIN baiviet ON danhmuc.danhmuc_id = baiviet.danhmuc_id
        GROUP BY danhmuc_id, ten_danhmuc
        ORDER BY danhmuc_id ASC";
        $result = $this->db->select($query);
        return $result;
    }
    public function get_category($category_id)
    {
        $query = "SELECT * FROM danhmuc WHERE danhmuc_id = '$category_id'";
        $result = $this->db->select($query);
        return $result;
    }
    public function delete_category($category_id)
    {
        $query = "DELETE FROM danhmuc WHERE danhmuc_id='$category_id'";
        $result = $this->db->delete($query);
        header('Location:category_list.php');
        return $result;
    }
    public function update_category($category_name, $category_id)
    {
        $query = "UPDATE danhmuc 
        SET ten_danhmuc = '$category_name' 
        WHERE danhmuc_id = '$category_id'";
        $result = $this->db->update($query);
        header('Location:category_list.php');
        return $result;
    }
    public function count_category()
    {
        $query = "SELECT COUNT(*) FROM danhmuc";
        $result = $this->db->select($query);
        return $result;
    }
    public function show_name_category()
    {
        $query = "SELECT ten_danhmuc FROM danhmuc ORDER BY danhmuc_id ASC";
        $result = $this->db->select($query);
        return $result;
    }
}
?>