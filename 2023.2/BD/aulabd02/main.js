const express = require('express')
const mysql = require('mysql')

const app = express()
const port = 3000

const db = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "password",
    database:"bancoteste"
})

db.connect((error) => {
    if (error) {
        console.log("erro na conexão", error)
        return
    }
    console.log("conexão ok")
})

app.get("/produtos", (req, res) => {
    db.query("SELECT * FROM produtos", (error, result) => {
        if(error){
            res.status(500).send("erro ao executar a consulta")
        }else{
            res.json(result)
        }
    })
})

app.use(express.json())

app.post("/produtos", (req, res) => {
    const registro = {
        descricao: req.body.descricao,
        preco: req.body.preco,
        nome_categoria: req.body.nome_categoria,
        descricao_categoria: req.body.descricao_categoria,
    }


    const sql = "INSERT INTO produtos SET ? :"

    db.query(sql, registro, (error, result) =>{
    if(error){
        res.status(500).send("erro ao executar o insert")
    }else{
        res.json(result)
    }
})

app.listen(port, () =>{
    console.log("Servidor rodando!")
})
})