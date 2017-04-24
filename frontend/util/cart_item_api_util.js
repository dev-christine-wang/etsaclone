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
