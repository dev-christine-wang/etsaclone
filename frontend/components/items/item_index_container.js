import { connect } from 'react-redux';

import { selectAllItems, selectFewItems } from '../../reducers/selectors';
import { fetchItems, fetchSearchedItems, clearItems } from '../../actions/item_actions';
import ItemIndex from './item_index';

const mapStateToProps = state => ({
  items: selectAllItems(state),
  fewItems: selectFewItems(state)
});

const mapDispatchToProps = dispatch => ({
  fetchItems: () => dispatch(fetchItems()),
  fetchSearchedItems: searchWords => dispatch(fetchSearchedItems(searchWords)),
  clearItems: () => dispatch(clearItems())
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(ItemIndex);
