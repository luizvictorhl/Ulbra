let perguntas = [
    {
        identificador: "verificar-veiculo-liga",
        pergunta: "O veículo liga normalmente?",
        respostas: [
            {
                respostaPossivel: "Sim",
                redireciona: "verificar-luzes-no-painel"
            },
            {
                respostaPossivel: "Não",
                redireciona: "verificar-bateria"
            },
            {
                respostaPossivel: "Não sei",
                redireciona: "consultar-mecanico"
            },
        ]
    },
    {
        identificador: "verificar-bateria",
        pergunta: "A bateria do veículo está funcionando corretamente?",
        respostas: [
            {
                respostaPossivel: "Sim",
                redireciona: "verificar-motor-de-arranque"
            },
            {
                respostaPossivel: "Não",
                diagnostico: "Problema na bateria",
                redireciona: "fim"
            },
            {
                respostaPossivel: "Não sei",
                redireciona: "consultar-eletricista"
            },
        ]
    },
    {
        identificador: "verificar-motor-de-arranque",
        pergunta: "O motor de arranque está fazendo algum barulho ao tentar ligar o carro?",
        respostas: [
            {
                respostaPossivel: "Sim",
                diagnostico: "Possível problema no motor de arranque",
                redireciona: "fim"
            },
            {
                respostaPossivel: "Não",
                redireciona: "verificar-combustivel"
            },
            {
                respostaPossivel: "Não sei",
                redireciona: "consultar-mecanico"
            },
        ]
    },
    {
        identificador: "verificar-combustivel",
        pergunta: "O veículo tem combustível suficiente?",
        respostas: [
            {
                respostaPossivel: "Sim",
                redireciona: "verificar-ignicao"
            },
            {
                respostaPossivel: "Não",
                diagnostico: "Falta de combustível",
                redireciona: "fim"
            },
            {
                respostaPossivel: "Não sei",
                redireciona: "consultar-posto"
            },
        ]
    },
    {
        identificador: "verificar-ignicao",
        pergunta: "O sistema de ignição está funcionando corretamente?",
        respostas: [
            {
                respostaPossivel: "Sim",
                redireciona: "verificar-luzes-no-painel"
            },
            {
                respostaPossivel: "Não",
                diagnostico: "Problema no sistema de ignição",
                redireciona: "fim"
            },
            {
                respostaPossivel: "Não sei",
                redireciona: "consultar-eletricista"
            },
        ]
    },
    {
        identificador: "verificar-luzes-no-painel",
        pergunta: "Alguma luz de advertência no painel está acesa?",
        respostas: [
            {
                respostaPossivel: "Sim",
                redireciona: "verificar-luz-oleo"
            },
            {
                respostaPossivel: "Não",
                redireciona: "verificar-som-do-motor"
            },
        ]
    },
    {
        identificador: "verificar-luz-oleo",
        pergunta: "A luz do óleo está acesa?",
        respostas: [
            {
                respostaPossivel: "Sim",
                diagnostico: "Nível baixo de óleo ou problema na bomba de óleo",
                redireciona: "fim"
            },
            {
                respostaPossivel: "Não",
                redireciona: "verificar-luz-motor"
            },
        ]
    },
    {
        identificador: "verificar-luz-motor",
        pergunta: "A luz do motor está acesa?",
        respostas: [
            {
                respostaPossivel: "Sim",
                diagnostico: "Possível problema no motor ou sensores",
                redireciona: "fim"
            },
            {
                respostaPossivel: "Não",
                redireciona: "verificar-som-do-motor"
            },
        ]
    },
    {
        identificador: "verificar-som-do-motor",
        pergunta: "O motor faz algum barulho anormal enquanto o veículo está em funcionamento?",
        respostas: [
            {
                respostaPossivel: "Sim",
                diagnostico: "Possível problema no motor",
                redireciona: "fim"
            },
            {
                respostaPossivel: "Não",
                redireciona: "verificar-desempenho-veiculo"
            },
            {
                respostaPossivel: "Não sei",
                redireciona: "consultar-mecanico"
            },
        ]
    },
    {
        identificador: "verificar-desempenho-veiculo",
        pergunta: "O desempenho do veículo (aceleração, freio, etc.) está normal?",
        respostas: [
            {
                respostaPossivel: "Sim",
                redireciona: "fim"
            },
            {
                respostaPossivel: "Não",
                diagnostico: "Problema de desempenho(Procurar mecânico mais próximo)",
                redireciona: "fim"
            },
            {
                respostaPossivel: "Não sei",
                redireciona: "consultar-mecanico"
            },
        ]
    },
    {
        identificador: "consultar-mecanico",
        pergunta: "Consultar um mecânico especializado para diagnosticar o problema.",
        respostas: []
    },
    {
        identificador: "consultar-eletricista",
        pergunta: "Consultar um eletricista automotivo especializado para diagnosticar o problema.",
        respostas: []
    },
    {
        identificador: "consultar-posto",
        pergunta: "Verificar o nível de combustível no posto de gasolina mais próximo.",
        respostas: []
    },
    {
        identificador: "fim",
        pergunta: "Fim do diagnóstico.",
        respostas: []
    }
];

diagnostico = [];
const readline = require('readline');
const respostaInterface = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});

async function fazPergunta(pergunta) {
    return new Promise((resolve) => {
        respostaInterface.question(pergunta, (resposta) => {
            resolve(resposta);
        });
    });
}

Object.prototype.hasOwnProperty = function (property) {
    return this[property] !== undefined;
};

// Motor de inferência
async function processNode(node) {
    let opcoes = "\n";
    for (let index = 0; index < node.respostas.length; index++) {
        opcoes += index + " - " + node.respostas[index].respostaPossivel + "\n";
    }
    let respostaEscolhida = await fazPergunta(node.pergunta + opcoes);
    if (node.respostas[respostaEscolhida].hasOwnProperty('diagnostico')) {
        diagnostico.push(node.respostas[respostaEscolhida].diagnostico);
    }
    if (node.respostas[respostaEscolhida].hasOwnProperty('redireciona')) {
        let identificador = node.respostas[respostaEscolhida].redireciona;
        if (identificador === 'fim') {
            return false;
        }
        var otherNode = perguntas.find(item => item.identificador == identificador);
        return await processNode(otherNode);
    }
}

async function iniciarPerguntas(perguntas) {
    resposta = await processNode(perguntas[0]);
    respostaInterface.close();
    if (diagnostico.length > 0) {
        console.log("Problemas identificados no veículo:");
        for (let index = 0; index < diagnostico.length; index++) {
            console.log(diagnostico[index] + "\n");
        }
    } else {
        console.log("Nenhum problema foi identificado.");
    }
}

iniciarPerguntas(perguntas);
