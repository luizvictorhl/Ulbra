import React from 'react';
import { ProvedorTema } from './components/TemaContexto';
import ComponenteConsumidor from './components/ComponenteConsumidor';

function App() {
  return (
    <ProvedorTema>
      <div className="App">
        <h1>Exemplo de useContext</h1>
        <ComponenteConsumidor />
      </div>
    </ProvedorTema>
  );
}

export default App;
