<?php

class ClientesController{
    function insertCadastro(){
        require_once('views/templates/header.php');
        require_once('views/cadastro/insertCadastro.php');
        require_once('views/templates/footer.php');

    }

    function showCadastro(){

        $cadastro = array(
            'nome' => $_POST['nome'],
            'email' => $_POST['email'],
            'senha' => $_POST['senha'],
            'telefone' => $_POST['telefone'],
            'conhecer' => $_POST['conhecer'],
            'voce' => $_POST['voce'],
            'inter' => $_POST['inter'],
            'motivo' => $_POST['motivo']
        );

        require_once('views/templates/header.php');
        require_once('views/cadastro/showCadastro.php');
        require_once('views/templates/footer.php');
    }

    
}

?>
