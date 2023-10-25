import React, { useState } from 'react';

function Formulario({card, setCard}) {
  const [formData, setFormData] = useState({
    nome: '',
    telefone: '',
    egressoConvidado: 'nao',
    pago: 'nao',
    urlFoto: '',
  });

  const handleChange = (e) => {
    const { name, value } = e.target;
    setFormData({
      ...formData,
      [name]: value,
    });
  };

  const handleSubmit = (e) => {
    e.preventDefault();
    console.log('Formulário submetido:',);
    setCard([...card,formData]);
  };

  return (
    <form
    onSubmit={handleSubmit}
    style={{
      backgroundColor: '#ccc',
      padding: '20px',
      width: '300px',
      display: 'flex',
      flexDirection: 'column',
      borderRadius: '10px',
      fontFamily: 'Roboto, sans-serif',
      marginRight: 'auto',
      marginLeft: 'auto'
    }}
  >
      <div style={{ marginBottom: '10px', borderRadius: '5px', overflow: 'hidden' }}>
        <label>
          Nome:
          <input 
            type="text"
            name="nome"
            value={formData.nome}
            onChange={handleChange}
            required
            style={{ width: '100%', padding: '8px', border: 'none', borderRadius: '5px' }}
          />
        </label>
      </div>
      <div style={{ marginBottom: '10px', borderRadius: '5px', overflow: 'hidden' }}>
        <label>
          Telefone:
          <input 
            type="text"
            name="telefone"
            value={formData.telefone}
            onChange={handleChange}
            required
            style={{ width: '100%', padding: '8px', border: 'none', borderRadius: '5px' }}
          />
        </label>
      </div>
      <div style={{ marginBottom: '10px' }}>
        <label>
          Egresso/Convidado:
          <div style={{ display: 'flex', alignItems: 'center' }}>
            <label style={{ display: 'flex', alignItems: 'center', marginRight: '10px' }}>
              <input 
                type="radio"
                name="egressoConvidado"
                value="sim"
                checked={formData.egressoConvidado === 'sim'}
                onChange={handleChange}
                style={{ transform: 'scale(1.5)' }}
              />
              <span style={{ marginLeft: '5px' }}>Sim</span>
            </label>
            <label style={{ display: 'flex', alignItems: 'center' }}>
              <input 
                type="radio"
                name="egressoConvidado"
                value="nao"
                checked={formData.egressoConvidado === 'nao'}
                onChange={handleChange}
                style={{ transform: 'scale(1.5)' }}
              />
              <span style={{ marginLeft: '5px' }}>Não</span>
            </label>
          </div>
        </label>
      </div>
      <div style={{ marginBottom: '10px' }}>
        <label>
          Pago:
          <div style={{ display: 'flex', alignItems: 'center' }}>
            <label style={{ display: 'flex', alignItems: 'center', marginRight: '10px' }}>
              <input 
                type="radio"
                name="pago"
                value="sim"
                checked={formData.pago === 'sim'}
                onChange={handleChange}
                style={{ transform: 'scale(1.5)' }}
              />
              <span style={{ marginLeft: '5px' }}>Sim</span>
            </label>
            <label style={{ display: 'flex', alignItems: 'center' }}>
              <input 
                type="radio"
                name="pago"
                value="nao"
                checked={formData.pago === 'nao'}
                onChange={handleChange}
                style={{ transform: 'scale(1.5)' }}
              />
              <span style={{ marginLeft: '5px' }}>Não</span>
            </label>
          </div>
        </label>
      </div>
      <div style={{ marginBottom: '10px', borderRadius: '5px', overflow: 'hidden' }}>
        <label>
          URL da Foto:
          <input 
            type="text"
            name="urlFoto"
            value={formData.urlFoto}
            onChange={handleChange}
            style={{ width: '100%', padding: '8px', border: 'none', borderRadius: '5px' }}
          />
        </label>
      </div>
      <div style={{ textAlign: 'center', marginTop: '20px' }}>
        <button type="submit" style={{ backgroundColor: '#007bff', color: '#fff', border: 'none', padding: '10px 20px', cursor: 'pointer' }}>Cadastrar</button>
      </div>
    </form>
  );
}

export default Formulario;
