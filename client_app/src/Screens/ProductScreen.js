import React, { useEffect } from 'react';
import { Link, useParams } from 'react-router-dom';
import { useSelector, useDispatch } from 'react-redux';
import { detailsProduct } from '../actions/productActions';
import logo from '../assets/commerce.png';
// import GoogleMap from '../maps/map'
import GoogleMap from '../maps/map'

function ProductScreen(props) {
  const productDetails = useSelector(state => state.productDetails);
  const { product, loading, error } = productDetails;
  const dispatch = useDispatch();
  const { id  } = useParams();
  useEffect(() => {
    dispatch(detailsProduct(id));
    return () => {
      //
    };
  }, []);

  const containerStyle = {
    width: '400px',
    height: '400px'
  };
  
  const center = {
    lat: -3.745,
    lng: -38.523
  };

  return <div>
    <div className="back-to-result">
      <Link to="/">Back to result</Link>
    </div>
    {loading ? <div>Loading...</div> :
      error ? <div>{error} </div> :
        (
          <div className="details">
            <div className="details-image">
              <img src={logo} alt="product" ></img>
            </div>
            <div className="details-info">
              <ul>
                <li>
                  <h2>{product.make}</h2>
                </li>
                <li>
                  {product.model}
          </li>
          <li>
               <h4>Ware House:  </h4> 
            <div>
            {product.wareHouseName}
                  </div>
                </li>
                <li>
                <h4>location: </h4>   
            <div>
                    {product.locationName}
                  </div>
                </li>
                <li>
                <h4>Price:    <b>$ {product.price}</b></h4> 
                </li>

                <li>
                <h4>Year Model: </h4> 
            <div>
                    {product.yearModel}
                  </div>
                </li>
              </ul>
            </div>
            <div className="details-action">
              <ul>
                <li>
                  Price: <b>$ {product.price}</b> 
                </li>
                <li>
                  Status: {product.licensed > 0 ? "licensed" : "Not licensed."}
                </li>
              
              </ul>
              <GoogleMap
  onLoad={map => {
    const bounds = new window.google.maps.LatLngBounds();
    map.fitBounds(bounds);
  }}
  onUnmount={map => {
    // do your stuff before map is unmounted
  }}
/>
            </div>
          </div>
        )
    }


  </div>
}
export default ProductScreen;