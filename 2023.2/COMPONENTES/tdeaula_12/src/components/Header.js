function Header({title, sizeList, index}){
    const headerStyle = {
        textAlign: 'center',
        backgroundColor: '#007bff',
        padding: '10px',
        marginBottom: '10px' // Adicionando margem inferior de 10 pixels
    };

    const indexStyle = {
        fontSize: '14px',
        color: '#555'
    };

    return(
        <div style={headerStyle}>
            <h1>{title}</h1>
            <p style={indexStyle}>({index} of {sizeList})</p>
        </div>
    );
}

export default Header;