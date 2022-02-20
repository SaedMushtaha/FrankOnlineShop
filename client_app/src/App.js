import React from 'react';
import { BrowserRouter, Route, Link, Routes } from 'react-router-dom'
import './App.css';
import HomeScreen from './Screens/HomeScreen';

function App() {
  return (
    
    <BrowserRouter>
      <div className="grid-container">
        <header className="header">
          <div className="brand"> 
            <Link to="/" >Frank Online Shopping</Link>
          </div>
        </header>
        
        <main className="main">
          <div className="content">
            <Routes>
             <Route path="/" exact={true} element={<HomeScreen />}/>
</Routes>

          </div>

        </main>
        <footer className="footer">
        @2022
    </footer>
      </div>
    </BrowserRouter>
  );
}

export default App;