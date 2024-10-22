const perguntas = [
    {
        pergunta: "É Homem?",
        subElemento: {
            sim: {
                pergunta: "Ele joga futebol?",
                subElemento: {
                    sim: "Neymar",
                    nao: "Ayrton Senna"
                }
            },
            nao: {
                pergunta: "Ela é mulher?",
                subElemento: {
                    sim: {
                        pergunta: "Ela é modelo?",
                        subElemento: {
                            sim: "Gisele Bündchen",
                            nao: "Margot Robbie"
                        }
                    }
                }
            }
        }
    },
    {
        pergunta: "É Personagem animado?",
        subElemento: {
            sim: {
                pergunta: "Ele é do Dragon Ball?",
                subElemento: {
                    sim: "Goku",
                    nao: "Naruto"
                }
            }
        }
    },
    {
        pergunta: "É um animal?",
        subElemento: {
            sim: {
                pergunta: "Ele é o melhor amigo do homem?",
                subElemento: {
                    sim: "Cachorro",
                    nao: "Vaca"
                }
            }
        }
    }
];

const arrayDeRespostasPossiveis = ["Neymar", "Ayrton Senna", "Gisele Bündchen", "Margot Robbie", "Goku", "Naruto", "Cachorro", "Vaca"];

console.log("Pense em uma das opções abaixo para eu tentar adivinhar");
arrayDeRespostasPossiveis.forEach(resposta => {
    console.log(resposta);
});

const readline = require('readline');

const resposta = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});

// Função para fazer perguntas e aguardar respostas
async function fazPergunta(pergunta) {
    return new Promise(resolve => {
        resposta.question(pergunta + " (1 para SIM, 2 para NÃO)\n", answer => {
            resolve(answer === '1' ? 'sim' : 'nao');
        });
    });
}

// Função recursiva para processar as perguntas
async function processaPerguntas(perguntaAtual) {
    if (typeof perguntaAtual === 'string') {
        console.log("A resposta é: " + perguntaAtual);
        resposta.close(); 
        return;
    }

    const respostaUsuario = await fazPergunta(perguntaAtual.pergunta);
    
    if (perguntaAtual.subElemento && perguntaAtual.subElemento[respostaUsuario]) {
        await processaPerguntas(perguntaAtual.subElemento[respostaUsuario]);
    } else {
        console.log("Não consegui adivinhar.");
        resposta.close(); 
    }
}

// Função para iniciar o processo de perguntas
async function iniciarPerguntas() {
    for (const pergunta of perguntas) {
        await processaPerguntas(pergunta);
        break; 
    }
}

iniciarPerguntas();
