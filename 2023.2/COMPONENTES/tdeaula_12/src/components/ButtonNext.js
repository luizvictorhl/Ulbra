function ButtonNext({click}){
    const buttonContainerStyle = {
        display: 'flex',
        justifyContent: 'center',
        marginBottom: '10px',
        marginTop: '10px'
    };

    const buttonStyle = {
        backgroundColor: '#007bff',
        color: '#fff',
        padding: '10px 20px',
        fontSize: '16px',
        border: 'none',
        borderRadius: '4px',
        cursor: 'pointer'
    };

    return(
        <div style={buttonContainerStyle}>
            <button type="button" style={buttonStyle} onClick={click}>Next</button>
        </div>
    );
}

export default ButtonNext;