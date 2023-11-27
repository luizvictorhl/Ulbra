import React, { useState } from 'react';

function Form() {
  const [nome, setNome] = useState('');
  const [email, setEmail] = useState('');
  const [telefone, setTelefone] = useState('');
  const [cidade, setCidade] = useState('');

  const handleSubmit = (e) => {
    e.preventDefault();
    setNome('');
    setEmail('');
    setTelefone('');
    setCidade('');
  }

  const estiloForm = `
    .form-container {
      background: #ccc;
      padding: 20px;
      border-radius: 10px;
      width: 300px; 
      margin-left: auto;
      margin-right: 20px; 
      margin-top: 20px; 
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
        <h1>NOVO CLIENTE</h1>
        <form onSubmit={handleSubmit}>
          <div>
            <label>Nome:</label>
            <input type="text" value={nome} onChange={(e) => setNome(e.target.value)} />
          </div>
          <div>
            <label>Email:</label>
            <input type="email" value={email} onChange={(e) => setEmail(e.target.value)} />
          </div>
          <div>
            <label>Telefone:</label>
            <input type="text" value={telefone} onChange={(e) => setTelefone(e.target.value)} />
          </div>
          <div>
            <label>Cidade:</label>
            <input type="text" value={cidade} onChange={(e) => setCidade(e.target.value)} />
          </div>
          <button type="submit">Enviar</button>
        </form>
      </div>
    </>
  );
}

export default Form;
