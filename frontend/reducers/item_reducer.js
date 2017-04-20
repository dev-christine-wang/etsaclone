import { RECEIVE_ITEMS, RECEIVE_ITEM } from '../actions/item_actions';
import merge from 'lodash/merge';

const ItemsReducer = (state = {}, action) => {
  Object.freeze(state);

  switch(action.type) {
    case RECEIVE_ITEMS:
      return action.items;
    case RECEIVE_ITEM:
      const newItem = { [action.item.id]: action.item };
      return merge({}, state, newItem);
    default: {
      return state;
    }
  }
};

export default ItemsReducer;
