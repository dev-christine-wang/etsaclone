export const fetchCarts = () => {
  return $.ajax({
    method: 'GET',
    url: 'api/carts'
  });
};
