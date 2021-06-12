function verificarMaior(){

    numeros=document.getElementById("txtNumeros").value;
    numeros=numeros.split(",");

    var maior = parseInt(numeros[0]);
    
    for(i=1;i<numeros.length;i++){
        if(parseInt(numeros[i]) > maior){
            maior = parseInt(numeros[i]);
        }
    }
    document.getElementById('omaior').innerHTML=('O maior número é: ' +maior);
    
    }