export const fetchItems = () => {
  return $.ajax({
    method: 'GET',
    url: 'api/items',
  });
};

export  const fetchItem = (id) => {
  return $.ajax({
    method: 'GET',
    url: `api/items/${id}`
  });
};

export const fetchSearchedItems = searchWords => {
  return $.ajax({
    method: 'GET',
    url: `api/items?searchWords=${searchWords}`
  });
};
