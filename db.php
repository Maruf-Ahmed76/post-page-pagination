<?php
include "config.php";
/**
 * Database class
 */
class DB{
	public $host = db_host;
	public $dbUser = db_user;
	public $pass = pass;
	public $dbName = db_name;

	public $link;
	public $error;
	
	public function __construct(){
		$this->connection();
	}
	// Database connection
	private function connection(){
		$this->link = new mysqli($this->host,$this->dbUser,$this->pass,$this->dbName);
		if (!$this->link) {
			$this->error = "connection fail".$this->link->connect_error;
			return false;
		}
	}

	// Select data
	public function select($sql){
		$result = $this->link->query($sql) or die ($this->link->error.__LINE__);
		if ($result->num_rows > 0) {
			return $result;
		}else{
			return false;
		}
	}
}