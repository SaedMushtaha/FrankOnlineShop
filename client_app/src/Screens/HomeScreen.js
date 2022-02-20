import React, { useState, useEffect } from 'react';
import axios from 'axios';
import logo from '../assets/commerce.png';

function HomeScreen(props) {

  const [products, setProducts] = useState([]);

  const fetchProducts = async () => {      
          const {data} = await axios.get( `${process.env.REACT_APP_SERVER_URL}/api/WareHouse/Vehicles`);
      setProducts(data);
    };
    

    useEffect(() => {
        fetchProducts();
    }, [] )


  return <ul className="products">
    {
      products.map(product =>
        <li key={product._id}>
          <div className="product">          
              <img className="product-image" src={logo} alt="product" />          
            <div className="product-name">
              {product.make}
            </div>
            <div className="product-model">{product.model}</div>
            <div className="product-price">$ {product.price}</div>
            <div className="product-year"><h3>{product.yearModel}</h3> </div>
          </div>
        </li>)
    }



  </ul>
}
export default HomeScreen;