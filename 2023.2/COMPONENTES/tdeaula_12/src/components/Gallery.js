import ButtonNext from "./ButtonNext";
import Header from "./Header";
import ShowDetails from "./ShowDetails";
import Image from "./Image";
import { useState } from "react";
import { data } from "../data";

function Gallery(){

    const [index, setIndex] = useState(0)

    function handleClickIndex(){
        if (index + 1 !== data.length){
            setIndex(index + 1)
        }
    }
    

    let galleryData = data[index]

    return(
        <div style={{height:"400px", width:"100%"}}>
            <ButtonNext click={handleClickIndex}/>
            <Header title={galleryData.name} sizeList={data.length} index={index + 1}/>
            <div style={{textAlign: 'center'}}> {/* Adicione esta div para centralizar */}
                <ShowDetails description={galleryData.description}/>
            </div>
            <Image urlImg={galleryData.url} alt={galleryData.alt}/>
        </div>
    )
}

export default Gallery;