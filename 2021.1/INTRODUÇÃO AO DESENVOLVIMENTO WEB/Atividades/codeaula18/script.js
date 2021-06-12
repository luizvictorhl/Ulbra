
function aloMundo() {
    alert('oi');
}

function clickBotao(){
    var nome = document.getElementById('nome').value;
    var sobreNome = document.getElementById('sobreNome').value;
    var divNome = document.getElementById('divNome').innerHTML;
    document.getElementById('divNome').innerHTML = divNome + ' '+ nome + ' ' +sobreNome;
}

function emCima(){
    alert('em cima do link');
}

function fora(){
    alert('fora do link')
}