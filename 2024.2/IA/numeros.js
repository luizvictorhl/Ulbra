let treinamento = [
    // Número 0
    {
        entrada: [
            [0,0,1,1,1,0],
            [0,1,0,0,0,1],
            [0,1,0,0,0,1],
            [0,1,0,0,0,1],
            [0,1,0,0,0,1],
            [0,1,0,0,0,1],
            [0,1,0,0,0,1],
            [0,0,1,1,1,0]
        ],
        resultadoEsperado: [1,0,0,0,0,0,0,0,0,0]
    },
    // Número 1
    {
        entrada: [
            [0,0,0,1,0,0],
            [0,0,1,1,0,0],
            [0,1,0,1,0,0],
            [0,0,0,1,0,0],
            [0,0,0,1,0,0],
            [0,0,0,1,0,0],
            [0,0,0,1,0,0],
            [0,1,1,1,1,1]
        ],
        resultadoEsperado: [0,1,0,0,0,0,0,0,0,0]
    },
    // Número 2
    {
        entrada: [
            [0,1,1,1,1,0],
            [1,0,0,0,0,1],
            [0,0,0,0,1,0],
            [0,0,0,1,0,0],
            [0,0,1,0,0,0],
            [0,1,0,0,0,0],
            [1,0,0,0,0,0],
            [1,1,1,1,1,1]
        ],
        resultadoEsperado: [0,0,1,0,0,0,0,0,0,0]
    },
    // Número 3
    {
        entrada: [
            [1,1,1,1,1,0],
            [0,0,0,0,0,1],
            [0,0,0,0,1,0],
            [0,0,1,1,1,0],
            [0,0,0,0,0,1],
            [0,0,0,0,0,1],
            [0,0,0,0,0,1],
            [1,1,1,1,1,0]
        ],
        resultadoEsperado: [0,0,0,1,0,0,0,0,0,0]
    },
    // Número 4
    {
        entrada: [
            [0,0,0,0,1,0],
            [0,0,0,1,1,0],
            [0,0,1,0,1,0],
            [0,1,0,0,1,0],
            [1,1,1,1,1,1],
            [0,0,0,0,1,0],
            [0,0,0,0,1,0],
            [0,0,0,0,1,0]
        ],
        resultadoEsperado: [0,0,0,0,1,0,0,0,0,0]
    },
    // Número 5
    {
        entrada: [
            [1,1,1,1,1,1],
            [1,0,0,0,0,0],
            [1,1,1,1,1,0],
            [0,0,0,0,0,1],
            [0,0,0,0,0,1],
            [0,0,0,0,0,1],
            [1,0,0,0,0,1],
            [0,1,1,1,1,0]
        ],
        resultadoEsperado: [0,0,0,0,0,1,0,0,0,0]
    },
    // Número 6
    {
        entrada: [
            [0,0,1,1,1,0],
            [0,1,0,0,0,0],
            [1,0,0,0,0,0],
            [1,1,1,1,1,0],
            [1,0,0,0,0,1],
            [1,0,0,0,0,1],
            [1,0,0,0,0,1],
            [0,1,1,1,1,0]
        ],
        resultadoEsperado: [0,0,0,0,0,0,1,0,0,0]
    },
    // Número 7
    {
        entrada: [
            [1,1,1,1,1,1],
            [0,0,0,0,0,1],
            [0,0,0,0,1,0],
            [0,0,0,0,1,0],
            [0,0,0,1,0,0],
            [0,0,0,1,0,0],
            [0,0,1,0,0,0],
            [0,0,1,0,0,0]
        ],
        resultadoEsperado: [0,0,0,0,0,0,0,1,0,0]
    },
    // Número 8
    {
        entrada: [
            [0,1,1,1,1,0],
            [1,0,0,0,0,1],
            [1,0,0,0,0,1],
            [0,1,1,1,1,0],
            [1,0,0,0,0,1],
            [1,0,0,0,0,1],
            [1,0,0,0,0,1],
            [0,1,1,1,1,0]
        ],
        resultadoEsperado: [0,0,0,0,0,0,0,0,1,0]
    },
    // Número 9
    {
        entrada: [
            [0,1,1,1,1,0],
            [1,0,0,0,0,1],
            [1,0,0,0,0,1],
            [0,1,1,1,1,1],
            [0,0,0,0,0,1],
            [0,0,0,0,0,1],
            [0,0,0,0,0,1],
            [0,1,1,1,1,0]
        ],
        resultadoEsperado: [0,0,0,0,0,0,0,0,0,1]
    }
];

class RedeNeural {
    constructor(tamanhoEntrada, tamanhoOculto, tamanhoSaida) {
        this.tamanhoEntrada = tamanhoEntrada;
        this.tamanhoOculto = tamanhoOculto;
        this.tamanhoSaida = tamanhoSaida;

        
        this.pesosEntradaOculto = this.inicializarPesos(tamanhoEntrada, tamanhoOculto);
        this.pesosOcultoSaida = this.inicializarPesos(tamanhoOculto, tamanhoSaida);
    }

    
    inicializarPesos(linhas, colunas) {
        let pesos = [];
        for (let i = 0; i < linhas; i++) {
            let linhaPesos = [];
            for (let j = 0; j < colunas; j++) {
                linhaPesos.push(Math.random() * 2 - 1); // valores entre -1 e 1
            }
            pesos.push(linhaPesos);
        }
        return pesos;
    }

    
    sigmoide(x) {
        return 1 / (1 + Math.exp(-x));
    }

    derivadaSigmoide(x) {
        return x * (1 - x);
    }

    
    feedforward(entrada) {
        this.entrada = entrada;

        
        this.saidaOculta = this.multiplicarMatriz(entrada, this.pesosEntradaOculto).map(this.sigmoide);

        
        this.saidaFinal = this.multiplicarMatriz(this.saidaOculta, this.pesosOcultoSaida).map(this.sigmoide);

        return this.saidaFinal;
    }

    
    treinar(entrada, saidaEsperada, taxaAprendizagem) {
        this.feedforward(entrada);

       
        let erroSaida = [];
        for (let i = 0; i < saidaEsperada.length; i++) {
            erroSaida.push(saidaEsperada[i] - this.saidaFinal[i]);
        }

       
        let ajustesSaida = [];
        for (let i = 0; i < erroSaida.length; i++) {
            ajustesSaida.push(erroSaida[i] * this.derivadaSigmoide(this.saidaFinal[i]));
        }

        
        for (let i = 0; i < this.pesosOcultoSaida.length; i++) {
            for (let j = 0; j < this.pesosOcultoSaida[i].length; j++) {
                this.pesosOcultoSaida[i][j] += taxaAprendizagem * ajustesSaida[j] * this.saidaOculta[i];
            }
        }

        
        let erroOculto = [];
        for (let i = 0; i < this.pesosOcultoSaida.length; i++) {
            let erro = 0;
            for (let j = 0; j < ajustesSaida.length; j++) {
                erro += ajustesSaida[j] * this.pesosOcultoSaida[i][j];
            }
            erroOculto.push(erro);
        }

       
        let ajustesOculto = [];
        for (let i = 0; i < erroOculto.length; i++) {
            ajustesOculto.push(erroOculto[i] * this.derivadaSigmoide(this.saidaOculta[i]));
        }

       
        for (let i = 0; i < this.pesosEntradaOculto.length; i++) {
            for (let j = 0; j < this.pesosEntradaOculto[i].length; j++) {
                this.pesosEntradaOculto[i][j] += taxaAprendizagem * ajustesOculto[j] * entrada[i];
            }
        }
    }

   
    multiplicarMatriz(vetor, matriz) {
        let resultado = [];
        for (let j = 0; j < matriz[0].length; j++) {
            let soma = 0;
            for (let i = 0; i < vetor.length; i++) {
                soma += vetor[i] * matriz[i][j];
            }
            resultado.push(soma);
        }
        return resultado;
    }
}


let rede = new RedeNeural(48, 96, 10);


for (let i = 0; i < 10000; i++) {  // 10.000 iterações de treinamento
    for (let dados of treinamento) {
        rede.treinar(dados.entrada.flat(), dados.resultadoEsperado, 0.1);
    }
}

console.log("Rede treinada com sucesso!");

let numeroParaTestar = [
    [1,1,1,1,1,0],
    [0,0,0,0,0,1],
    [0,0,0,0,1,0],
    [0,0,1,1,1,0],
    [0,0,0,0,0,1],
    [0,0,0,0,0,1],
    [0,0,0,0,0,1],
    [1,1,1,1,1,0]
];


let resultado = rede.feedforward(numeroParaTestar.flat());
console.log(resultado);

// Encontrar a posição da matriz com o maior valor
let maxIndex = resultado.indexOf(Math.max(...resultado));
console.log("O número informado é:", maxIndex);

