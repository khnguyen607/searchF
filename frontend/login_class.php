<?php
include_once "database.php";
?>  
<?php
class user
{
    private $db;
    public function __construct()
    {
        $this->db = new Database();
    }

    public function show_user()
    {
        $query = "SELECT user_name, user_email, user_phone
                 FROM tbl_user ";
        $result = $this->db->select($query);
        return $result;
    }
}
?> 
