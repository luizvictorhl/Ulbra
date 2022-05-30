<?php
    class ContactsController {
        var $ContactModel;

        public function __construct() {
            require_once("models/ContactsModel.php");
            $this -> ContactModel = new ContactsModel();

        }

        public function insert() {
            $contactsJson = json_decode(file_get_contents('php://input'));
            $arrayContact = array(
                'name'=> $contactsJson -> name,
                'email' => $contactsJson -> email,
                'message' => $contactsJson -> message
            );

            $id = $this -> ContactModel -> insert($arrayContact);

                header("Content-Type: application/json");
                echo('{"message": "Contato cadastrado!"}');
        }

        public function get() {
            $result = $this -> ContactModel -> get();
            $arrayContact = array();
            while($line = $result -> fetch_assoc()){
                array_push($arrayContact, $line);
            }
                header ('Content-Type: application/json');
                echo json_encode($arrayContact);
            }

        public function getById($id) {
            $result = $this -> ContactModel -> getById($id);
            if($contactsJson = $result ->fetch_assoc()){
                header ('Content-Type: application/json');
                echo json_encode($contactsJson);
            }else{
                header ('Content-Type: application/json');
                echo('{error: 01, "message": "Contato não encontrado!"}');
            }
    
        }
    }
?>