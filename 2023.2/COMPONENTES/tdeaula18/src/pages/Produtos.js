import React, { useEffect, useState } from 'react';
import Header from '../Components/Header';
import { useNavigate } from 'react-router-dom';

function Produtos() {

  const [data, setData] = useState([])
  const h2Style = {
    textAlign: 'center',
  };

  const navigate = useNavigate()

  useEffect(() => {
    const fetchProducts = async () => {
      const result = await fetch("http://localhost:3001/products")
      const products = await result.json()
      setData(products)
    }

    fetchProducts()
  }, [])

  function handleClick(id) {
    navigate(`${id}`)
  }

  return (
    <>
      <Header title={"PRODUTOS"} />
      <h2 style={h2Style}>LISTA DE PRODUTOS</h2>

      <div style={{ display: 'flex', flexWrap: 'wrap', justifyContent: 'space-between', padding: '0 10px', maxWidth: '1000px', margin: '0 auto' }}>
        {data && data.map((product) => (
          <div key={product.id} onClick={() => handleClick(product.id)} style={{ width: '48%', backgroundColor: "black", margin: '10px 0', padding: '10px', color: "white", borderRadius: '10px', boxSizing: 'border-box' }}>
            <img src={product.photo_url} style={{ maxWidth: '100%', height: 'auto', borderRadius: '5px' }} />
            <h1 style={{ fontSize: '1.2em', margin: '0 0 10px' }}>{product.name}</h1>
            <p style={{ margin: '0' }}>Preço: R${product.price}</p>
            <p style={{ margin: '0' }}>{product.description}</p>
          </div>
        ))}
      </div>
    </>
  );
}

export default Produtos;
