const express = require('express');
const mongoose = require('mongoose');
const app = express();
const port = 3000;
mongoose.connect("mongodb://127.0.0.1:27017/meu-projeto-as", {
useNewUrlParser: true,
useUnifiedTopology: true,
});

const Schema = mongoose.Schema;

//PARTE 1

const atletaSchema = new Schema({
    nome: String,
    idade: String,
    esporte: String,
    equipe: String
});


const Atleta = mongoose.model('Atleta', atletaSchema);
app.use(express.json());

//POST ATLETA
app.post('/atleta', async (req, res) => {
try {
    const newAtleta = new Atleta(req.body);
    const atleta = await newAtleta.save();
    res.json(atleta);
    
} catch (error) {
    res.status(500).json({ error: 'Não foi possível salvar o Atleta.' });
}
});

//GET ATLETA
app.get('/atleta', async (req, res) => {
try {
    const atleta = await Atleta.find();
    res.json(atleta);
        
} catch (error) {
    res.status(500).json({ error: 'Não foi possível obter os Atletas.' });
}
});

//GET ID CLIENTE
app.get('/atleta/:id', async (req, res) => {
    const atleta = await Atleta.findById(req.params.id);
    res.json(atleta)
})

//DELETE CLIENTE
app.delete('/atleta/:id', async (req, res) => {
    const atletaDeleted = await Atleta.findByIdAndDelete(req.params.id)
    res.json(atletaDeleted)

})

//uUPDATE CLIENTE
app.put('/atleta/:id', async (req, res) => {
    const atleta = await Atleta.findById(req.params.id)

    atleta.nome = req.body.nome
    atleta.idade = req.body.idade
    atleta.esporte = req.body.esporte
    atleta.equipe = req.body.equipe

    const atletaUpdated = await atleta.save();
    res.json(atletaUpdated)
})


app.listen(port, () => {
console.log(`Servidor está rodando em http://localhost:${port}`);
});

//PARTE 2

// CREATE VIEW vw_notas_alunos AS
// SELECT
//     a.nome AS nome_aluno,
//     n.disciplina,
//     n.nota
// FROM
//     alunos a
// JOIN
//     notas n ON a.id_aluno = n.id_aluno;
    
// SELECT * FROM vw_notas_alunos;