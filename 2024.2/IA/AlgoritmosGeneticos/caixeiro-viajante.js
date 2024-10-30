const distancias = [
    [0, 2, 4, 3, 6, 8, 3, 5, 7, 9],  // Cidades 1 a outras
    [2, 0, 4, 3, 7, 6, 5, 4, 8, 2],  // Cidades 2 a outras
    [4, 4, 0, 3, 3, 5, 6, 2, 1, 7],  // Cidades 3 a outras
    [3, 3, 3, 0, 3, 6, 4, 8, 9, 2],  // Cidades 4 a outras
    [6, 7, 3, 3, 0, 5, 6, 4, 1, 3],  // Cidades 5 a outras
    [8, 6, 5, 6, 5, 0, 7, 8, 9, 4],  // Cidades 6 a outras
    [3, 5, 6, 4, 6, 7, 0, 2, 3, 5],  // Cidades 7 a outras
    [5, 4, 2, 8, 4, 8, 2, 0, 6, 7],  // Cidades 8 a outras
    [7, 8, 1, 9, 1, 9, 3, 6, 0, 2],  // Cidades 9 a outras
    [9, 2, 7, 2, 3, 4, 5, 7, 2, 0]   // Cidades 10 a outras
];

const tamanhoPopulacao = 200;
const mutationRate = 0.01;
const geracoes = 10000;

function calcularDistanciaTotal(percurso) {
    let distanciaTotal = 0;
    for (let i = 0; i < percurso.length - 1; i++) {
        distanciaTotal += distancias[percurso[i] - 1][percurso[i + 1] - 1];
    }
    distanciaTotal += distancias[percurso[percurso.length - 1] - 1][percurso[0] - 1];
    return distanciaTotal;
}

function criarIndividuo() {
    const individuo = Array.from({ length: distancias.length }, (_, i) => i + 1);
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
