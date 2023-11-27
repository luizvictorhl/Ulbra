import { useContext, useEffect, useState } from "react";
import { useParams } from "react-router-dom";
import Header from "../components/Header";
import { ProdutoContext } from "../contexts/produtoContext";

function ProdutoSobre(){
    const parms = useParams()

    const [data, setData]= useState()
    const produtoContext = useContext(ProdutoContext)
    
    useEffect(() => {
      console.log(produtoContext.produto)
        const produtoClicado = produtoContext.produto.filter((product) => product.id == parms.id)
        setData(produtoClicado[0])
    
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
