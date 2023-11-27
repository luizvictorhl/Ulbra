import React from 'react';

function ConteudoProducts() {
  const estiloProduto = `
    .conteudo {
      display: flex;
      justify-content: space-around;
      margin: 20px;
    }

    .produto {
      background-color: black;
      padding: 10px;
      margin: 10px;
      text-align: center;
      border-radius: 10px; /* Adicionando bordas arredondadas */
      overflow: hidden; /* Para que as bordas arredondadas se apliquem corretamente */
    }

    .imagem-container {
      position: relative;
      margin-bottom: 10px;
      border-radius: 10px; /* Adicionando bordas arredondadas */
      overflow: hidden; /* Para que as bordas arredondadas se apliquem corretamente */
    }

    .imagem-container img {
      width: 100%;
      height: 100%;
      border-radius: 10px; /* Adicionando bordas arredondadas */
    }

    .info {
      color: white;
      padding: 5px;
      line-height: 1.5; 
      margin-top: -10px; 
    }

    .info p {
      margin: 0;
    }
  `;

  return (
    <div>
      <style>{estiloProduto}</style>
      <div className="conteudo">

        <div className="produto">
          <div className="imagem-container">
            <img src="https://abracasa.vteximg.com.br/arquivos/ids/179079-1000-1000/cadeira-de-escritorio-still-giratoria-preta-diagonal.jpg?v=637820026315000000" alt="Produto 1" />
          </div>
          <div className="info">
            <p>PRODUTO 1</p>
            <p>Valor: R$100,00</p>
          </div>
        </div>

        <div className="produto">
          <div className="imagem-container">
            <img src="https://abracasa.vteximg.com.br/arquivos/ids/179079-1000-1000/cadeira-de-escritorio-still-giratoria-preta-diagonal.jpg?v=637820026315000000" alt="Produto 2" />
          </div>
          <div className="info">
            <p>PRODUTO 2</p>
            <p>Valor: R$120,00</p>
          </div>
        </div>

        <div className="produto">
          <div className="imagem-container">
            <img src="https://abracasa.vteximg.com.br/arquivos/ids/179079-1000-1000/cadeira-de-escritorio-still-giratoria-preta-diagonal.jpg?v=637820026315000000" alt="Produto 3" />
          </div>
          <div className="info">
            <p>PRODUTO 3</p>
            <p>Valor: R$80,00</p>
          </div>
        </div>

        <div className="produto">
          <div className="imagem-container">
            <img src="https://abracasa.vteximg.com.br/arquivos/ids/179079-1000-1000/cadeira-de-escritorio-still-giratoria-preta-diagonal.jpg?v=637820026315000000" alt="Produto 4" />
          </div>
          <div className="info">
            <p>PRODUTO 4</p>
            <p>Valor: R$90,00</p>
          </div>
        </div>
      </div>
    </div>
  );
}

export default ConteudoProducts;
