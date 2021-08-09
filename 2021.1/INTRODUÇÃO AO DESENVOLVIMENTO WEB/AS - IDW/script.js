function redirecaoBuscar(){
    window.location.href = "https://ge.globo.com/busca/?q=";
}

function validar(){
    var nome = formuser.nome.value;
    var email = formuser.email.value;

    if(nome ==""){
        alert("Preencha o campo nome.");
        formuser.nome.focus();
        return false;
    }
    if(email==""){
        alert("Preencha o campo E-mail");
        formuser.email.focus();
        return false;
    }
    else{
        alert("Dados enviados com sucesso. Você recebera notícias em até 24 horas!");
    }
}

function times(){
    document.getElementById('apresentacao').innerHTML = ("<a href=https://ge.globo.com/futebol/brasileirao-serie-a/>SÉRIE A</a>"+" / " + "<a href=https://ge.globo.com/futebol/brasileirao-serie-b/>SÉRIE B</a>"+" / " + 
    "<a href=https://ge.globo.com/futebol/brasileirao-serie-c/>SÉRIE C</a>")
}
