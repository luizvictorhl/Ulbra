import React, { useState } from 'react';

function Localizacao() {
  const [mostrarInfo, setMostrarInfo] = useState(false);
  const [endereco, setEndereco] = useState(null);

  const handleClick = () => {
    if (mostrarInfo) {
      setMostrarInfo(false);
    } else {
      setMostrarInfo(true);
      buscarEndereco();
    }
  };

  const infoStyle = {
    display: 'flex',
    justifyContent: 'space-between',
  };

  const botaoStyle = {
    backgroundColor: '#fffff',
    color: '#007bff',
    padding: '5px',
    cursor: 'pointer',
  };

  const botaoHoverStyle = {
    backgroundColor: '#0056b3',
  };

  const buscarEndereco = async () => {
    try {
      const response = await fetch(`https://viacep.com.br/ws/91787430/json/`);
      const data = await response.json();
      setEndereco({
        cep: data.cep,
        cidade: data.localidade,
        bairro: data.bairro,
      });
    } catch (error) {
      console.error('Erro ao buscar endereço:', error);
    }
  };

  return (
    <div>
      <div style={botaoStyle}>
        <button
          style={mostrarInfo ? { ...botaoHoverStyle, ...botaoStyle } : botaoStyle}
          onClick={handleClick}
        >
                <h2>Localização</h2>

        </button>
      </div>
      {mostrarInfo && endereco && (
        <div style={infoStyle}>
        <p><b>Rua: Avenida Beira Rio</b></p>
        <p><b>Horário: 19:30</b></p>
        <p><b>Bairro: {endereco.bairro}</b></p>
        <p><b>Cidade: {endereco.cidade}</b></p>
        <p><b>CEP: {endereco.cep}</b></p>
        <p><b></b></p>
        </div>
      )}
    </div>
  );
}

export default Localizacao;
