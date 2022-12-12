import React, { useState, useEffect } from 'react'
import Categories from './Components/Categories';
import Showcase from './Components/Showcase';
import UserInterface from './Components/User-section';
import Cart from './Components/Cart';


function App() {
  const [categories, setCategories] = useState([]);
  const [isBrowse, setIsBrowse] = useState("All"); //Text of current search product
    const [display, setDisplay] = useState([]); //Array of items on display

  var propsObj = {
    isBrowse, setIsBrowse,
    categories, setCategories,
    display, setDisplay
  }

  return (
    <div id="App">
    <header id="head">
      <div id="announcement">Order by December 12 and receive it by Christmas</div>
      <h1 id="title">REACTIFY</h1>
    </header>
      <Categories {...propsObj}/>
      <Showcase {...propsObj}/>
      <UserInterface />
      <Cart />
    <footer id="foot"></footer>
    </div>
  )
}

export default App
