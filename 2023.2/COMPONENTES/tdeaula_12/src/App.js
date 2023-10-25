import './App.css';
import Gallery from './components/Gallery';

function App() {
  const appStyle = {
    fontFamily: 'Arial, sans-serif',
    textAlign: 'center',
    backgroundColor: '#b5b5b5',
    padding: '20px'
  };

  return (
    <div style={appStyle}>
      <Gallery/>
    </div>
  );
}
export default App;
