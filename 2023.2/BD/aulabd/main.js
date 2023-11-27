const express = require('express');
const mongoose = require('mongoose');
const app = express();
const port = 3000;
mongoose.connect("mongodb://127.0.0.1:27017/myapp", {
useNewUrlParser: true,
useUnifiedTopology: true,
});

const Schema = mongoose.Schema;


const clienteSchema = new Schema({
    nome: String,
    email: String,
    cidade: String,
    cpf: String,
    rg: String,
    dataNascimento: Date,
    telefone: String
});

const restauranteSchema = new Schema({
    nome: String,
    localizacao: Object,
    cnpj: String,
    rg: String,
    dataNascimento: Date,
    telefone: String
});

const cardapioSchema = new Schema({
    nome: String,
    imagem: String,
    descricao: String
});

const Cliente = mongoose.model('Cliente', clienteSchema);
const Restaurante = mongoose.model('Restaurante', restauranteSchema);
const Cardapio = mongoose.model('Cardapio', cardapioSchema);

app.use(express.json());

//POST CLIENTE
app.post('/clientes', async (req, res) => {
try {
    const newCliente = new Cliente(req.body);
    const cliente = await newCliente.save();
    res.json(cliente);
    
} catch (error) {
    res.status(500).json({ error: 'Não foi possível salvar o Cliente.' });
}
});

//GET CLIENTES
app.get('/clientes', async (req, res) => {
try {
    const clientes = await Cliente.find();
    res.json(clientes);
        
} catch (error) {
    res.status(500).json({ error: 'Não foi possível obter os Clientes.' });
}
});

//GET ID CLIENTE
app.get('/clientes/:id', async (req, res) => {
    const clientes = await Cliente.findById(req.params.id);
    res.json(clientes)
})

//DELETE CLIENTE
app.delete('/clientes/:id', async (req, res) => {
    const clienteDeleted = await Cliente.findByIdAndDelete(req.params.id)
    res.json(clienteDeleted)

})

//uUPDATE CLIENTE
app.put('/clientes/:id', async (req, res) => {
    const clientes = await Cliente.findById(req.params.id)

    clientes.nome = req.body.nome
    clientes.email = req.body.email
    clientes.cidade = req.body.cidade
    clientes.cpf = req.body.cpf
    clientes.rg = req.body.rg
    clientes.dataNascimento = req.body.dataNascimento
    clientes.telefone = req.body.telefone

    const clientesUpdated = await clientes.save();
    res.json(clientesUpdated)
})

//GET RESTAURANTES
app.get('/restaurantes', async (req, res) => {
try {
    const restaurantes = await Restaurante.find();
    res.json(restaurantes);
            
} catch (error) {
    res.status(500).json({ error: 'Não foi possível obter os Restaurantes.' });
}
});

//GET ID RESTAURANTE
app.get('/restaurantes/:id', async (req, res) => {
    const restaurantes = await Restaurante.findById(req.params.id);
    res.json(restaurantes)
})

//GET PARAMS RESTAURANTE
app.get('/restaurantes/:lat/:long/:distance', async (req, res) => {
    const restaurantes= await Restaurante.find[{
        localizacao: {
            $near: {
                $geometry: {
                    type: "Point",
                    coordinates: [Number(req.params.lat), Number(req.params.long)]
                },
                $maxDistance: Number(req.params.distance)
            }
        }
    }]
    res.json(restaurantes)
})

//DELETE RESTAURANTE
app.delete('/restaurantes/:id', async (req, res) => {
    const restauranteDeleted = await Restaurante.findByIdAndDelete(req.params.id)
    res.json(restauranteDeleted)
    

})

//UPDATE RESTAURANTES

app.put('/restaurantes/:id', async (req, res) => {
    const restaurantes = await Restaurante.findById(req.params.id)

    restaurantes.nome = req.body.nome
    restaurantes.localizacao = req.body.localizacao
    restaurantes.cnpj = req.body.cnpj
    restaurantes.cpf = req.body.cpf
    restaurantes.rg = req.body.rg
    restaurantes.dataNascimento = req.body.dataNascimento
    restaurantes.telefone = req.body.telefone

    const restauranteUpdated = await restaurantes.save();
    res.json(restauranteUpdated)
})

//POST RESTAURANTES
app.post('/restaurantes', async (req, res) => {
try {
    const newRestaurante = new Restaurante(req.body);
    const restaurante = await newRestaurante.save();
    res.json(restaurante);
        
} catch (error) {
    res.status(500).json({ error: 'Não foi possível salvar o Restaurante.' });
}
});

//GET CARDAPIO
app.get('/cardapios', async (req, res) => {
try {
    const cardapios = await Cardapio.find();
    res.json(cardapios);
            
} catch (error) {
    res.status(500).json({ error: 'Não foi possível obter os Cardapios.' });
}
});

//POST CARDAPIO
app.post('/cardapios', async (req, res) => {
try {
    const newCardapio = new Cardapio(req.body);
    const cardapio = await newCardapio.save();
    res.json(cardapio);
        
} catch (error) {
    res.status(500).json({ error: 'Não foi possível salvar o Cardapio.' });
}
});

//GET ID CARDAPIO
app.get('/cardapios/:id', async (req, res) => {
    const cardapios = await Cardapio.findById(req.params.id);
    res.json(cardapios)
})

//DELETE CARDAPIO
app.delete('/cardapios/:id', async (req, res) => {
    const cardapioDeleted = await Cardapio.findByIdAndDelete(req.params.id)
    res.json(cardapioDeleted)

})

//uUPDATE CARDAPIOS
app.put('/cardapios/:id', async (req, res) => {
    const cardapios = await Cardapio.findById(req.params.id)

    cardapios.nome = req.body.nome
    cardapios.imagem = req.body.imagem
    cardapios.descricao = req.body.descricao

    const cardapiosUpdated = await cardapios.save();
    res.json(cardapiosUpdated)
})

app.listen(port, () => {
console.log(`Servidor está rodando em http://localhost:${port}`);
});