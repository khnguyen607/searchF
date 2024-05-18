<?php
class Database
{
    public $host = "localhost";
    public $user = "root";
    public $pass  = "";
    public $dbname  = "review";

    public $link;
    public $error;

    public function __construct()
    {
        $this->connectDB();
    }

    private function connectDB()
    {
        $this->link = new mysqli(
            $this->host,
            $this->user,
            $this->pass,
            $this->dbname
        );
        if (!$this->link) {
            $this->error = "Connection fail" . $this->link->connect_error;
            return false;
        }
    }

    //select data
    public function select($query)
    {
        $result = $this->link->query($query) or
            die($this->link->error . __LINE__);
        if ($result->num_rows > 0) {
            return $result;
        } else {
            return false;
        }
    }
    //insert data
    public function insert($query)
    {
        $insert_row = $this->link->query($query) or
            die($this->link->error . __LINE__);
        if ($insert_row) {
            return $insert_row;
        } else {
            return false;
        }
    }

    public function update($query)
    {
        $update_row = $this->link->query($query) or
            die($this->link->error . __LINE__);
        if ($update_row) {
            return $update_row;
        } else {
            return false;
        }
    }

    //Delete data
    public function delete($query)
    {
        $delete_row = $this->link->query($query) or
            die($this->link->error . __LINE__);
        if ($delete_row) {
            return $delete_row;
        } else {
            return false;
        }
    }
}
/// insert cmt
    // public function insert_cmt($query, $params = array())
    // {
    //     $stmt = $this->link->prepare($query);
    //     if ($stmt === false) {
    //         throw new Exception("Error preparing query: " . $this->link->error);
    //     }
    //     if (!empty($params)) {
    //         $types = str_repeat('s', count($params)); // Assuming all parameters are strings
    //         $stmt->bind_param($types, ...$params);
    //     }
    //     $result = $stmt->execute();
    //     if ($result === false) {
    //         throw new Exception("Error executing query: " . $stmt->error);
    //     }
    //     $stmt->close();
    //     return $result;
    // }
    //Update data