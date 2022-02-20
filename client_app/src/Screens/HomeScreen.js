import React, { useEffect } from 'react';
import { Link } from 'react-router-dom'
import { useSelector, useDispatch } from 'react-redux';
import { listProducts } from '../actions/productActions';
import logo from '../assets/commerce.png';

function HomeScreen(props) {
  const productList = useSelector(state => state.productList);
  const { products, loading, error } = productList;
  const dispatch = useDispatch();
  useEffect(() => {
    dispatch(listProducts());

    return () => {
      //
    };
  }, [])

  return loading ? <div>Loading...</div> :
    error ? <div>{error}</div> :
      <ul className="products">
        {
          products.map(product =>
            <li key={product._id}>
              <div className="product">

              {product.licensed == 1? 
                <Link to={'/product/' + product.id}>
                  <img className="product-image" src={logo} alt="product" />
                </Link> 
                : 
                  <img className="product-image" src={logo} alt="product" />
              }
                
                <div className="product-name">
                {product.licensed == 1? 
                <Link to={'/product/' + product.id}>   {product.make}</Link>
                : 
               <Link to={'#'} onClick={() => {alert('The Car is Not licensed!');}}>{product.make}</Link>
                }
                  
                </div>
                <div className="product-model"> <b>{product.licensed > 0 ? "licensed" : "Not licensed"}</b></div>
                <div className="product-model">{product.model}</div>
                <div className="product-price">$ {product.price}</div>
                <div className="product-year"><h3>{product.yearModel}</h3> </div>   </div>
            </li>)
        }



      </ul>
}
export default HomeScreen;