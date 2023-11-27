import React from 'react';
import Header from '../Components/Header';
import cProdutos from '../Components/cProdutos';
function Produtos(){
  return (
    <>
      <Header title={"PRODUTOS"} />
      <h2>Lista de Produtos</h2>
      <cProdutos />
      
    
    </>
    
  );
}

export default Produtos;
