import React, {useState, useEffect} from 'react';
import CategoryItem from './CatagoryItem';

const Categories = (props) =>{

    function loadCategories (){
        fetch('https://e-comm-api.onrender.com/api/categories')
        .then(res => res.json())
        .then((data)=> props.setCategories(data))

    }

    useEffect(() => {loadCategories()},[]);

    return(
        <div id="categories">
            {props.categories.map((element, index)=>(
                <CategoryItem key={index} value={element} {...props} />
            ))}
        </div>
    )
}

export default Categories;