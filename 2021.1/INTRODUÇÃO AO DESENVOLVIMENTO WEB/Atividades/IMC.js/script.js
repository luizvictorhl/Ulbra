function CalculadoraImc(){
    var peso = parseFloat (document.getElementById("valor1").value);
    var altura = parseFloat (document.getElementById("valor2").value);
    var nome = (document.getElementById ("nome").value);
    
    var abaixo=0;
    var ideal=0;
    var acima=0;
    var obeso=0;

    imc=peso/(altura*altura);

    if(imc <18.5){
        document.getElementById('resultado').innerHTML=(nome+ '<br>'+'Seu imc é: ' +imc+ '<br>'+'Abaixo do peso ideal')
    }else if(imc >18.5 && imc <25){
        document.getElementById('resultado').innerHTML=(nome+ '<br>'+'Seu imc é: ' +imc+ '<br>'+'No peso ideal')
    }else if(imc >25 && imc <30){
        document.getElementById('resultado').innerHTML=(nome+ '<br>'+'Seu imc é: ' +imc+ '<br>'+'Acima do peso ideal')
    }else if(imc >30){
        document.getElementById('resultado').innerHTML=(nome+ '<br>'+ 'Seu imc é: ' +imc+ '<br>'+'Obesidade')
    }
}