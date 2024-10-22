const distancias = [
    // Matriz de distâncias entre as cidades (5 cidades)
    [0, 2, 4, 3, 6],  // Cidades 1 a outras
    [2, 0, 4, 3, 7],  // Cidades 2 a outras
    [4, 4, 0, 3, 3],  // Cidades 3 a outras
    [3, 3, 3, 0, 3],  // Cidades 4 a outras
    [6, 7, 3, 3, 0]   // Cidades 5 a outras
];

const tamanhoPopulacao = 200;
const mutationRate = 0.01; // Taxa de mutação
const geracoes = 10000;

function calcularDistanciaTotal(percurso) {
    let distanciaTotal = 0;
    for (let i = 0; i < percurso.length - 1; i++) {
        distanciaTotal += distancias[percurso[i] - 1][percurso[i + 1] - 1];
    }
    // Retornar à cidade inicial
    distanciaTotal += distancias[percurso[percurso.length - 1] - 1][percurso[0] - 1];
    return distanciaTotal;
}

function criarIndividuo() {
    const individuo = [1, 2, 3, 4, 5]; // Cidades 1 a 5
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
    const torneio = [];
    for (let i = 0; i < 5; i++) {
        torneio.push(escolhaAleatoria(populacao));
    }
    torneio.sort((a, b) => aptidao(b) - aptidao(a));
    return torneio[0];
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

    console.log(`Melhor percurso final: ${melhorIndividuo.join(' -> ')}`);
    console.log(`Distância final: ${melhorDistancia}`);
}

algoritmoGenetico();
