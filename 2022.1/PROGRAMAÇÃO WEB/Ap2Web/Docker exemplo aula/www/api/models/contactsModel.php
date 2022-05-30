<?php
    class ContactsModel {
        var $Connection;

        public function __construct(){
            require_once('db/ConnectClass.php');
            $ConnectClass = new ConnectClass();
            $ConnectClass -> openConnect();
            $this -> Connection = $ConnectClass -> getConn();
        }

        public function insert($arrayContact) {
            $sql = "
            INSERT INTO 
            contacts (name, email, message)
                VALUES(
                    '{$arrayContact['name']}', 
                    '{$arrayContact['email']}', 
                    '{$arrayContact['message']}'
                    )
                    ";

            $this -> Connection -> query($sql);
            return $this -> Connection -> insert_id;
        }

        public function get() {
            $sql = 'SELECT * FROM contacts';
            return $this -> Connection -> query($sql);
        }

        public function getById($id) {
            $sql="SELECT * FROM contacts
                WHERE idContact = {$id}";
                
            return $this -> Connection -> query($sql);
        }
    }
?>