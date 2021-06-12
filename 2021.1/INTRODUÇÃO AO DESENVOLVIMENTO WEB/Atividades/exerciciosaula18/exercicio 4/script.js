function verificarIdades(){

    var idades = document.getElementById("txtIdades").value;
    idades = idades.split(",");

    var maior = 0;
    var menor = 0;

    for(i=0;i<idades.length;i++){
        if(parseInt(idades[i]) >=18){
            maior++;
        }else{
            menor++;
        }
    }
    document.getElementById('resultado').innerHTML=('Maiores: ' +maior + ' Menores: ' +menor );
}