import React, { useState } from 'react';
import axios from 'axios';

function Form() {
  const [nome, setNome] = useState('');
  const [descricao, setDescricao] = useState('');
  const [preco, setPreco] = useState('');
  const [imagem, setImagem] = useState('');

  const [errorNome, setErrorNome] = useState('');
  const [errorDescricao, setErrorDescricao] = useState('');
  const [errorPreco, setErrorPreco] = useState('');
  const [errorImagem, setErrorImagem] = useState('');

  const handleSubmit = async (e) => {
    e.preventDefault();

    if (!nome || !descricao || !preco || !imagem) {
      setErrorNome(nome ? '' : 'Campo obrigatório');
      setErrorDescricao(descricao ? '' : 'Campo obrigatório');
      setErrorPreco(preco ? '' : 'Campo obrigatório');
      setErrorImagem(imagem ? '' : 'Campo obrigatório');
      return;
    }

    const novoProduto = {
      name: nome,
      description: descricao,
      price: parseFloat(preco),
      photo_url: imagem,
    };

    try {
      await axios.post('http://localhost:3001/products', novoProduto);

      setNome('');
      setDescricao('');
      setPreco('');
      setImagem('');

      setErrorNome('');
      setErrorDescricao('');
      setErrorPreco('');
      setErrorImagem('');

      console.log('Produto adicionado com sucesso!');
    } catch (error) {
      console.error('Erro ao adicionar produto:', error);
    }
  };

  const estiloForm = `
    .form-container {
      background: #ccc;
      padding: 20px;
      border-radius: 10px;
      width: 300px; 
      margin: 20px auto;
    }

    .form-container h1 {
      text-align: center;
    }

    .form-container div {
      margin-bottom: 15px; 
    }

    .form-container label {
      display: block;
      margin-bottom: 5px;
    }

    .form-container input {
      width: calc(100% - 16px); 
      padding: 8px;
      border-radius: 5px;
      border: 1px solid #aaa;
    }

    .form-container button {
      width: 100%;
      padding: 10px;
      background: black;
      color: white;
      border: none;
      border-radius: 5px;
      cursor: pointer;
    }
  `;

  return (
    <>
      <style>{estiloForm}</style>
      <div className="form-container">
        <h1>NOVO PRODUTO</h1>
        <form onSubmit={handleSubmit}>
          <div>
            <label>Nome:</label>
            <input type="text" value={nome} onChange={(e) => setNome(e.target.value)} />
            <span className="error-message">{errorNome}</span>
          </div>
          <div>
            <label>Descrição:</label>
            <input type="text" value={descricao} onChange={(e) => setDescricao(e.target.value)} />
            <span className="error-message">{errorDescricao}</span>
          </div>
          <div>
            <label>Preço:</label>
            <input type="text" value={preco} onChange={(e) => setPreco(e.target.value)} />
            <span className="error-message">{errorPreco}</span>
          </div>
          <div>
            <label>Imagem:</label>
            <input type="text" value={imagem} onChange={(e) => setImagem(e.target.value)} />
            <span className="error-message">{errorImagem}</span>
          </div>
          <button type="submit">Enviar</button>
        </form>
      </div>
    </>
  );
}

export default Form;
