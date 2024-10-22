class Entrada{
    valorEntrada = 0;
    peso = 0;
}


const entradas_pesos = [
    {entrada: -1, peso: 0}, //entrada 0 -1 = entrada, 0 = peso
    {entrada: 1, peso: -1}, //entrada 1 1 = entrada, -1 = peso
    {entrada: 1, peso: 2} //entrada 2 1 = entrada, 2 = peso
];

let p1=-1, p2=-1, p3=-1

const treinamento = [
    [0, 0, 0, 0], //laranja
    [0, 0, 1, 0], //abacaxi
    [0, 1, 0, 0], //morango
    [0, 1, 1, 0], //kiwi
    [1, 0, 0, 1], //mamão
    [1, 0, 1, 1], //pera
    [1, 1, 0, 1], //melão
    [1, 1, 1, 1], //mirtilo

];

let funcaoEscolhida = 'FS'

let y 

switch(funcaoEscolhida){
    case 'LR':
        y = limiteRapido(soma(entradas_pesos))
        console.log("Saída: " + y + ", Função utilizada: " +funcaoEscolhida)
        break;
    case 'FR':
        y = funcaoRampa(soma(entradas_pesos))
        console.log("Saída: " + y + ", Função utilizada: " +funcaoEscolhida)
        break;
    case 'FS':
        y = funcaoSigmoide(soma(entradas_pesos))
        console.log("Saída: " + y + ", Função utilizada: " +funcaoEscolhida)
        break;
    default:
        console.log("A operação não é valida!")
        break;
}

function soma(entradas_pesos){
    var soma = 0;

    for (let i = 0; i < entradas_pesos.length; i++) {
        soma = soma + (entradas_pesos[i].entrada * entradas_pesos[i].peso)
        
    }
    console.log("Soma: " + soma);
    return soma;
}

function limiteRapido(soma){
    return soma <= 0 ? -1 : 1;
}

function funcaoRampa(soma){
    if(soma < 0){
        return 0;
    }
    else if(soma >= 0 && soma <= 1){
        return soma;
    }
    else if(soma > 1) {
        return 1;
    }
}

function funcaoSigmoide(soma){
    if(soma >= 0){
        return 1 - 1 / (1 + soma);
    } else{
        return -1 + 1 / (1 - soma);
    }
}