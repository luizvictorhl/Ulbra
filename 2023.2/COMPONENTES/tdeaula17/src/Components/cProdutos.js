import React from 'react';

function cProdutos() {
  return (
    <div className="conteudo">

      <div className="produto">
        <img src="./images/cadeira.jpg" alt="Produto 1"/>
        <p>Descrição do Produto 1</p>
        <p>Valor: R$100,00</p>
      </div>

      <div className="produto">
        <img src="./images/cadeira.jpg" alt="Produto 2" />
        <p>Descrição do Produto 2</p>
        <p>Valor: R$120,00</p>
      </div>

      <div className="produto">
        <img src="./images/cadeira.jpg" alt="Produto 3" />
        <p>Descrição do Produto 3</p>
        <p>Valor: R$80,00</p>
      </div>

      <div className="produto">
        <img src="./images/cadeira.jpg" alt="Produto 4" />
        <p>Descrição do Produto 4</p>
        <p>Valor: R$90,00</p>
      </div>
    </div>
  );
}

export default cProdutos;


