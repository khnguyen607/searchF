<?php
include_once "database.php";
?>  
<?php
class author
{
    private $db;
    public function __construct()
    {
        $this->db = new Database();
    }
    public function insert_author($author_name, $author_mail)
    {
        $query = "INSERT INTO author (author_name, author_mail) 
                  VALUES('$author_name', '$author_mail')";
        $result = $this->db->insert($query);
        return $result;
    }
    public function show_author()
    {
        $query = "SELECT author.*, COUNT(baiviet.baiviet_id)
                 FROM author LEFT JOIN baiviet ON author.author_id = baiviet.author_id
                 GROUP BY author_name, author_id, author_mail
                 ORDER BY COUNT(baiviet.baiviet_id) DESC";
        $result = $this->db->select($query);
        return $result;
    }
    public function get_author($author_id)
    {
        $query = "SELECT * FROM author WHERE author_id = '$author_id'";
        $result = $this->db->select($query);
        return $result;
    }
    public function update_author($author_mail, $author_name, $author_id)
    {
        $query = "UPDATE author 
                  SET author_mail = '$author_mail', author_name = '$author_name'
                  WHERE author_id = '$author_id'";
        $result = $this->db->update($query);
        header('Location:author_list.php');
        return $result;
    }
    public function delete_author($author_id)
    {
        $query = "DELETE FROM author WHERE author_id='$author_id'";
        $result = $this->db->delete($query);
        header('Location:author_list.php');
        return $result;
    }
    public function show_author_search($search)
    {
        $query = "SELECT author.*, COUNT(baiviet.baiviet_id)
                  FROM author LEFT JOIN baiviet ON author.author_id = baiviet.author_id
                  WHERE author_name LIKE '%$search%'
                  GROUP BY  author_name, author_id, author_mail
                  ORDER BY COUNT(baiviet.baiviet_id) DESC";
        $result = $this->db->select($query);
        return $result;
    }
    public function count_author()
    {
        $query = "SELECT COUNT(*) FROM author";
        $result = $this->db->select($query);
        return $result;
    }
}
?>