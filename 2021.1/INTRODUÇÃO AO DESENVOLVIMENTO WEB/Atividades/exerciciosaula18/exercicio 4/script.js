function verificarIdades(){

    var idades = document.getElementById("txtIdades").value;
    idades = idades.split(",");

    var maior = 0;
    var menor = 0;
    var iguais = 0;

    for(i=0;i<idades.length;i++){
        if(parseInt(idades[i]) >18){
            maior++;

        }else if(idades[i]==18){
            iguais++
        }
        else{
            menor++;
        }
    }
    document.getElementById('resultado').innerHTML=
        'Maiores que 18: ' +maior + '<br>' +
        'Iguais a 18: ' + iguais + '<br>' +
        'Menores que 18: ' + menor;
}