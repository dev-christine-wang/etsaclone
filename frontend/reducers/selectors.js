import { values } from 'lodash';

export const selectAllItems = ({ items }) => values(items);

export const selectItem = ({ items }, id) => {
  return items[id];
}
