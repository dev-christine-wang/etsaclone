export const fetchCarts = () => {
  return $.ajax({
    method: 'GET',
    url: 'api/carts'
  });
};

export const createCart = cart => {
  return $.ajax({
    method: 'POST',
    url: 'api/carts',
    data: { cart }
  });
};

export const updateCart = cart => {
  return $.ajax({
    method: 'PATCH',
    url: `api/carts/${cart.id}`,
    data: { cart }
  });
};
