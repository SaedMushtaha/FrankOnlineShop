import React, { useEffect , useState } from 'react';
import { Link, useParams, useNavigate } from 'react-router-dom';
import { useSelector, useDispatch } from 'react-redux';
import { detailsProduct } from '../actions/productActions';
import logo from '../assets/commerce.png';
import GoogleMap from '../maps/map'

function ProductScreen(props) {
    const [qty, setQty] = useState(1);
    const navigate = useNavigate();
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

  const handleAddToCart = () => {
    navigate("/cart/" + id + "/" + qty)
  }

  return <div>
    <div className="back-to-result">
      <Link to="/">Back to result</Link>
    </div>
    {loading ? <div>Loading...</div> :
      error ? <div>{error} </div> :
        (
          <div className="details">
            <div className="details-image">
             <div> <img src={logo} alt="product" ></img> </div>
             <div>  <GoogleMap
  onLoad={map => {
    const bounds = new window.google.maps.LatLngBounds();
    map.fitBounds(bounds);
  }}
  onUnmount={map => {
    // do your stuff before map is unmounted
  }}
/></div>
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
                <h4>Data Added: </h4>   
            <div>
                    {product.dateAdded}
                  </div>
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
                <li>
                  Qty: <select value={qty} onChange={(e) => { setQty(e.target.value) }}>
                    {[...Array(6).keys()].map(x =>
                      <option key={x + 1} value={x + 1}>{x + 1}</option>
                    )}
                  </select>
                </li>
                <li>
                  { <button onClick={handleAddToCart} className="button primary" >Add to Cart</button>
                  }
                </li>
              </ul>
              
            </div>
          </div>
        )
    }


  </div>
}
export default ProductScreen;