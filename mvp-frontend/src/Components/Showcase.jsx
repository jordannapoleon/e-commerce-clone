import React, {useState, useEffect} from 'react';
import ShowCaseDisplay from './ShowCaseDisplay';

const Showcase = (props) =>{

    function loadInitial(){
        fetch('http://localhost:5001/api/products')
        .then(res => res.json())
        .then((data)=> props.setDisplay(data))
    }

    useEffect(() => {loadInitial()}, []);

    return(
        <div id="showcase-container">
            <h1>Browsing {props.isBrowse}</h1>
            <div id="showcase">


            {props.display.map((element)=>(
                <ShowCaseDisplay value={element} {...props} />
            ))}

            </div>    
        </div>
    )
}

export default Showcase;