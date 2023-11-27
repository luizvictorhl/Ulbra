import React from 'react';
import { useTema } from './TemaContexto';

function ComponenteConsumidor() {
  const { tema, setTema } = useTema();

  function trocarTema() {
    setTema(tema === 'claro' ? 'escuro' : 'claro');
  }

  return (
    <div style={{ background: tema === 'claro' ? '#fff' : '#333', color: tema === 'claro' ? '#000' : '#fff' }}>
      <p>O tema atual é: {tema}</p>
      <button onClick={trocarTema}>Trocar Tema</button>
    </div>
  );
}

export default ComponenteConsumidor;
