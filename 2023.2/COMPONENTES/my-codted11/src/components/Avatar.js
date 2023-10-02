// eslint-disable-next-line react/prop-types, no-unused-vars
function Avatar({srcImage, size}){
    return(
        <img src={srcImage} style={{borderRadius: "20px"}} width={size} height={size} alt="imagem pessoa"/>
    )
}

export default Avatar