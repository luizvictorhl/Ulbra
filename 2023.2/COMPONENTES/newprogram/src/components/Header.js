import React from 'react';

function Header() {
  const headerStyle = {
    backgroundColor: '#007bff',
    color: '#fff',
    padding: '20px',
    textAlign: 'center',
    fontSize: '24px',
  };

  return (
    <div style={headerStyle}>
      Meu Evento
    </div>
  );
}

export default Header;
