import React, { createContext, useContext, useState } from 'react';

const TemaContexto = createContext();

export function ProvedorTema({ children }) {
  const [tema, setTema] = useState('claro');

  return (
    <TemaContexto.Provider value={{ tema, setTema }}>
      {children}
    </TemaContexto.Provider>
  );
}

export function useTema() {
  const context = useContext(TemaContexto);
  if (!context) {
    throw new Error('useTema deve ser usado dentro de um ProvedorTema');
  }
  return context;
}
