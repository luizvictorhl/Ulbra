class Cidade {
    constructor(x, y) {
        this.x = x;
        this.y = y;
    }


    distanciaPara(outraCidade) {
        return Math.sqrt((this.x - outraCidade.x) ** 2 + (this.y - outraCidade.y) ** 2);
    }
}

const cidades = [
    new Cidade(56.5, 57.5),
    new Cidade(2.5, 18.5),
    new Cidade(34.5, 75.0),
    new Cidade(94.5, 68.5),
    new Cidade(84.5, 65.5),
    new Cidade(88.0, 66.0),
    new Cidade(2.5, 23.0),
    new Cidade(52.5, 100.0),
    new Cidade(58.0, 117.5),
    new Cidade(65.0, 113.0)
];


const tamanhoPopulacao = 200;
const mutationRate = 0.01;
const geracoes = 10000;


function calcularDistanciaTotal(percurso) {
    let distanciaTotal = 0;
    for (let i = 0; i < percurso.length - 1; i++) {
        distanciaTotal += cidades[percurso[i] - 1].distanciaPara(cidades[percurso[i + 1] - 1]);
    }
    
    distanciaTotal += cidades[percurso[percurso.length - 1] - 1].distanciaPara(cidades[percurso[0] - 1]);
    return distanciaTotal;
}

function criarIndividuo() {
    const individuo = Array.from({ length: cidades.length }, (_, i) => i + 1);
    for (let i = individuo.length - 1; i > 0; i--) {
        const j = Math.floor(Math.random() * (i + 1));
        [individuo[i], individuo[j]] = [individuo[j], individuo[i]];
    }
    return individuo;
}

function criarPopulacao(tamanho) {
    const populacao = [];
    for (let i = 0; i < tamanho; i++) {
        populacao.push(criarIndividuo());
    }
    return populacao;
}

function aptidao(individuo) {
    return 1 / calcularDistanciaTotal(individuo);
}

function selecao(populacao) {
    const torneio = new Set();
    while (torneio.size < 5) {
        torneio.add(escolhaAleatoria(populacao));
    }
    return [...torneio].sort((a, b) => aptidao(b) - aptidao(a))[0];
}

function cruzamento(pai1, pai2) {
    const tamanho = pai1.length;
    const start = Math.floor(Math.random() * tamanho);
    const end = Math.floor(Math.random() * (tamanho - start)) + start;

    const filho = new Array(tamanho).fill(null);
    for (let i = start; i < end; i++) {
        filho[i] = pai1[i];
    }

    let indice = 0;
    for (let i = 0; i < tamanho; i++) {
        const cidade = pai2[i];
        if (!filho.includes(cidade)) {
            while (filho[indice] !== null) {
                indice++;
            }
            filho[indice] = cidade;
        }
    }
    return filho;
}

function mutacao(individuo) {
    for (let i = 0; i < individuo.length; i++) {
        if (Math.random() < mutationRate) {
            const j = Math.floor(Math.random() * individuo.length);
            [individuo[i], individuo[j]] = [individuo[j], individuo[i]];
        }
    }
    return individuo;
}

function escolhaAleatoria(array) {
    return array[Math.floor(Math.random() * array.length)];
}

function algoritmoGenetico() {
    let populacao = criarPopulacao(tamanhoPopulacao);
    let melhorIndividuo = null;
    let melhorDistancia = Infinity;

    for (let geracao = 0; geracao < geracoes; geracao++) {
        populacao.sort((a, b) => calcularDistanciaTotal(a) - calcularDistanciaTotal(b));

        const melhorIndividuoAtual = populacao[0];
        const melhorDistanciaAtual = calcularDistanciaTotal(melhorIndividuoAtual);

        if (melhorDistanciaAtual < melhorDistancia) {
            melhorIndividuo = melhorIndividuoAtual;
            melhorDistancia = melhorDistanciaAtual;
            console.log(`Geração: ${geracao}, Melhor distância: ${melhorDistancia}`);
        }

        if (melhorDistancia === 25) {
            console.log(`Melhor percurso encontrado na geração ${geracao}`);
            break;
        }

        const novaPopulacao = [];

        while (novaPopulacao.length < tamanhoPopulacao) {
            const pai1 = selecao(populacao);
            const pai2 = selecao(populacao);
            let filho = cruzamento(pai1, pai2);
            filho = mutacao(filho);
            novaPopulacao.push(filho);
        }

        populacao = novaPopulacao;
    }

    const percursoFinal = [...melhorIndividuo, melhorIndividuo[0]];
    console.log(`Melhor percurso final: ${percursoFinal.join(' -> ')}`);
    console.log(`Distância final: ${melhorDistancia}`);
}

algoritmoGenetico();
