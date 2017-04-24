import { combineReducers } from 'redux';

import SessionReducer from './session_reducer';
import ItemsReducer from './items_reducer';
import CartItemsReducer from './cart_items_reducer';
import CartsReducer from './carts_reducer';

const RootReducer = combineReducers({
  session: SessionReducer,
  items: ItemsReducer,
  cartItems: CartItemsReducer,
  carts: CartsReducer
});

export default RootReducer;
