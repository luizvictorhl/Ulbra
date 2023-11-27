import {BrowserRouter} from 'react-router-dom'
import {Routes} from 'react-router-dom'
import {Route} from 'react-router-dom'
import './App.css';
import Home from './pages/Home';
import Produtos from './pages/Produtos';
import PageError from './pages/PageError';
import Contato from './pages/Contato';
import ProdutoSobre from './pages/ProdutoSobre';

function App() {
  return(
  <BrowserRouter>
    <Routes>
    <Route path='/' element={<Home />}/>
      <Route path='/home' element={<Home />}/>
      <Route path='/produtos' element={<Produtos />} />
      <Route path='/produtos/:id/*' element={<ProdutoSobre />} />
      <Route path='/contato' element={<Contato />} />
      <Route path='*' element={<PageError />}/>

    </Routes>
  </BrowserRouter>
  )
}

export default App;
