import logo from './logo.svg';
import './App.css';
import {  BrowserRouter as Router, Route, Link } from 'react-router-dom';
import OtherPage from './OtherPage';
import Fib from './Fib'

function App() {
  return (
    <Router>
      <div className="App">
        <header className="App-header">
          <img heigth="500" src={logo} className="App-logo" alt="logo" />
          <h1>VERSIONE 3</h1>
          <Link to="/">Fibonacci Calculator</Link>
          <Link to = "/otherpage">Other Page</Link>
        </header>
        <div>
          <Route exact path='/' component={Fib} />
          <Route path='/otherpage' component={OtherPage} />
        </div>
      </div>
    </Router>
    
  );
}

export default App;
