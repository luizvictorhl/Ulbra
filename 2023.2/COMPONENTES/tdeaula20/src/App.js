import {BrowserRouter} from 'react-router-dom'
import {Routes} from 'react-router-dom'
import {Route} from 'react-router-dom'
import './App.css';
import Home from './pages/Home';
import Produtos from './pages/Produtos';
import PageError from './pages/PageError';
import ProdutoSobre from './pages/ProdutoSobre';
import { useState } from 'react';
import { ProdutoContext } from './contexts/produtoContext';
import Cadastro from './pages/Cadastro';

function App() {

  const [produto, setProduto] = useState()
  return(
    <ProdutoContext.Provider value={{produto, setProduto}}>
        <BrowserRouter>
          <Routes>
          <Route path='/' element={<Home />}/>
            <Route path='/home' element={<Home />}/>
            <Route path='/produtos' element={<Produtos />} />
            <Route path='/produtos/:id/*' element={<ProdutoSobre />} />
            <Route path='/cadastro' element={<Cadastro />} />
            <Route path='*' element={<PageError />}/>

          </Routes>
        </BrowserRouter>
  </ProdutoContext.Provider>
  )
}

export default App;
