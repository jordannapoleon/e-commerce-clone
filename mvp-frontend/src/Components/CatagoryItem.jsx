import React, { useState } from 'react';

const CategoryItem = (props) =>{


    function clickEvent(e){;
        
        if(e.target.innerHTML === props.isBrowse){
            return null
        } else {
            
            fetch(`https://e-comm-api.onrender.com/api/products/${e.target.innerHTML}`)
            .then(res => res.json())
            .then((data)=> props.setDisplay(data))
            props.setIsBrowse(e.target.innerHTML);
        }

     }
        return(
            
                <button type="button" className='clothingType' onClick={clickEvent}>
                    {props.value.type}
                </button>
            
        )
    
 
    
}

export default CategoryItem;