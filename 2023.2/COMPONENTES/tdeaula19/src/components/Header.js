import { Link } from 'react-router-dom';

function Header({ title }) {
    const headerStyle = {
        backgroundColor: 'black', 
        color: 'white', 
        display: 'flex',
        justifyContent: 'space-between',
        padding: '40px', 
        alignItems: 'center'
    };

    const navStyle = {
        display: 'flex',
        gap: '10px', 
        marginLeft: 'auto' 
    };

    const linkStyle = {
        color: 'white',
        textDecoration: 'none' 
    };

    const titleStyle = {
        margin: '0 100px',
        fontFamily: 'Roboto, sans-serif'
    };

    return (
        <div style={headerStyle}>
            <h1 style={titleStyle}>{title}</h1>
            <nav style={navStyle}>
                <Link to={"/home"} style={linkStyle}>HOME</Link>
                <Link to={"/produtos"} style={linkStyle}>PRODUTOS</Link>
                <Link to={"/contato"} style={linkStyle}>CONTATO</Link>
            </nav>
        </div>
    )
}

export default Header;
