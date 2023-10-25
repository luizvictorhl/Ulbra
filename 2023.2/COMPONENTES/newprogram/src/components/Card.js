import React, {useState} from 'react';

const Card = ({ nome, egressoConvidado, pago, urlFoto }) => {
  return (
    <div
      style={{
        backgroundColor: '#ccc',
        padding: '30px',
        borderRadius: '10px',
        marginBottom: '10px',
        height: '200px',
        width: '200px',
        display: 'flex',
        flexDirection: 'column',
        justifyContent: 'space-between',
      }}
      className="card"
    >
      <div>
      <img
        src={urlFoto}
        alt={nome}
        style={{ maxWidth: '100%', maxHeight: '100px', borderRadius: '60%' }}
      />
        <p><b>Nome:</b> {nome}</p>
        <p><b>Egresso/Convidado:</b> {egressoConvidado === 'sim' ? 'Sim' : 'Não'}</p>
        <p><b>Pago:</b> {pago === 'sim' ? 'Sim' : 'Não'}</p>
      </div>
    </div>
  );
}
export default Card;
