import React from 'react';
import Header from '../Components/Header';
import ConteudoProducts from '../Components/ConteudoProducts';

function Produtos() {
  const h2Style = {
    textAlign: 'center', // Centraliza o texto
  };

  return (
    <>
      <Header title={"PRODUTOS"} />
      <h2 style={h2Style}>Lista de Produtos</h2>
      <ConteudoProducts />
    </>
  );
}

export default Produtos;
