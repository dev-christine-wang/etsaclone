export const addCartItem = cartItem => {
  return $.ajax({
    method: 'POST',
    url: 'api/cart_items',
    data: { cart_item: cartItem }
  });
};

export const fetchCartItems = () => {
  return $.ajax({
    method: 'GET',
    url: 'api/cart_items'
  });
};

export const updateCartItem = cartItem => {
  return $.ajax({
    method: 'PATCH',
    url: `api/cart_items/${cartItem.cart_item_id}`,
    data: { cart_item: cartItem }
  });
};

export const deleteCartItem = id => {
  return $.ajax({
    method: 'DELETE',
    url: `api/cart_items/${id}`
  });
};
