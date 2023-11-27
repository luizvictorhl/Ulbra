import React, { useState } from 'react';

function newCliente() {
  const [nome, setNome] = useState('');
  const [email, setEmail] = useState('');
  const [telefone, setTelefone] = useState('');
  const [cidade, setCidade] = useState('');

  const handleSubmit = (e) => {
    e.preventDefault();
    window.location.reload(); 
  }

  return (
    <div className="form-container" style={{ background: '#ccc', padding: '20px' }}>
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
        <button type="submit" style={{ background: 'black', color: 'white' }}>Enviar</button>
      </form>
    </div>
  );
}

export default newCliente;
