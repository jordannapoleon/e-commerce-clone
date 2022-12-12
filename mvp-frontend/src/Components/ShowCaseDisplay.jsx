import React from "react";

function showCaseDisplay(props){
    console.log(props)
    return(
    <div className='onDisplay'>
        <button class="material-symbols-outlined">shopping_cart</button>
        <div id="product-title">{props.value.name}</div>
        
        <div className="product-details" id="product-size">Size: {props.value.size}</div>
        <div className="product-details" id="product-color">Color: {props.value.color}</div>
    </div>
    )
}

export default showCaseDisplay;