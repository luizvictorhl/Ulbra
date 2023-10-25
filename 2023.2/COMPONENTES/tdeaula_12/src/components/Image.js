function Image({urlImg, alt}){
    const imageStyle = {
        display: 'block',
        margin: 'auto',
        paddingTop: '10px'
    };

    return(
        <img style={imageStyle} src={urlImg} width={140} height={140} alt={alt}/>
    );
}

export default Image;