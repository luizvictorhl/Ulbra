function CalculadoraImc(){
    var valor1 = parseFloat (document.getElementById("valor1").value);
    var valor2 = parseFloat (document.getElementById("valor2").value);

    var oper = document.getElementById("oper").value;
    var resultado;

    switch(oper){
        
        case 'somar':
            resultado = valor1 + valor2;
            break;

        case 'subtrair':
            resultado = valor1 - valor2;
            break;
        case 'multiplicar':
            resultado = valor1 * valor2;
            break;
        case 'dividir':
            resultado = valor1 / valor2;
            break;
    }
    document.getElementById('resultado').innerHTML = resultado;
}