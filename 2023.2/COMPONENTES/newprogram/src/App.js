import React, { useState } from 'react';
import Header from './components/Header';
import Formulario from './components/Formulario';
import Localizacao from './components/Localizacao';
import Card from './components/Card';
import './App.css';

function App() {
  const [cards, setCards] = useState([]);

  const handleCadastro = (data) => {
    setCards([...cards, data]);
  }

  return (
    <div>
      <Header />
      <Localizacao />
      <h1>Bem-vindo, {cards.length !== 0 && cards[0].nome}</h1>
      <Formulario card={cards} setCard={setCards} />
      <h2>Confirmados</h2>
      <div className="cards-container">
        {cards.map((card, index) => (
          <Card
            key={index}
            nome={card.nome}
            egressoConvidado={card.egressoConvidado}
            pago={card.pago}
            urlFoto={card.urlFoto}
          />
        ))}
      </div>
    </div>
  );
}

export default App;