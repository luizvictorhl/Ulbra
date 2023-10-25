import { useState } from "react";

import (useState)

function ShowDetails({description}){
    const [enable, setEnable] = useState(false);

    const containerStyle = {
        marginBottom: '10px',
        display: 'flex',
        justifyContent: 'center'
    };

    const buttonStyle = {
        backgroundColor: '#007bff',
        color: '#fff',
        padding: '5px 10px',
        fontSize: '14px',
        border: 'none',
        borderRadius: '4px',
        cursor: 'pointer',
        marginRight: '10px'
    };

    const detailsStyle = {
        fontSize: '16px',
        marginTop: '5px',
        marginBottom: '10px'
    };

    function handleClickEnableDetails(){
        setEnable(!enable);
    }

    return(
        <div style={containerStyle}>
            {enable && <p style={detailsStyle}>{description}</p>}
            <button type="button" style={buttonStyle} onClick={handleClickEnableDetails}>
                {enable ? "Hide Details" : "Show Details"}
            </button>
        </div>
    );
}
export default ShowDetails;