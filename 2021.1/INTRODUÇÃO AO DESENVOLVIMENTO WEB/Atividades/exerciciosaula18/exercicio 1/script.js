function Calculadora(){
    var v1 = document.getElementById("valor1").value;
    var v2 = document.getElementById("valor2").value;

    var oper = document.getElementById("oper").value;

    if(oper == "somar"){
        document.getElementById('res').innerHTML=(parseInt(v1) + parseInt(v2));
    }else if(oper == "subtrair"){
        document.getElementById('res').innerHTML=(parseInt(v1) - parseInt(v2));
    }else if(oper == "multiplicar"){
        document.getElementById('res').innerHTML=(parseInt(v1) * parseInt(v2));
    }else{
        document.getElementById('res').innerHTML=(parseInt(v1) / parseInt(v2));
    }
}