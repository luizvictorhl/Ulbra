import { useEffect, useState } from "react";
import { useParams } from "react-router-dom";
import Header from "../Components/Header";

function ProdutoSobre(){
    const parms = useParams()

    const [data, setData]= useState()

    useEffect(() => {
        const fetchProducts = async () => {
          const result = await fetch("http://localhost:3001/products")
          const products = await result.json()

          const produtoClicado = products.filter((product) => product.id == parms.id)

          setData(produtoClicado[0])
        }
        
        fetchProducts()
        //eslint-disable-next-line react-hooks/exhaustive-deps
      }, [])
    

    return(
        
        <>
        <Header title={"DETALHES DO PRODUTO"} />
        {data && 
        <div style={{ textAlign: 'center' }}>
            <h1>Sobre o produto {data.id} - {data.name} - {data.price}</h1>
            <h1>{data.description}</h1>
            <img src={data.photo_url} style={{ maxWidth: '100%', height: 'auto', borderRadius: '5px' }} />
        </div>
        }
        </>
        
    )
}

export default ProdutoSobre;
