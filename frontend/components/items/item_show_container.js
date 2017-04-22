import { connect } from 'react-redux';

import { selectItem } from '../../reducers/selectors';
import { fetchItem } from '../../actions/item_actions';
import ItemShow from './item_show';

const mapStateToProps = (state, { params }) => {
  const itemId = parseInt(params.itemId);
  const item = selectItem(state, itemId);
  return { item };
};

const mapDispatchToProps = dispatch => ({
  fetchItem: id => dispatch(fetchItem(id))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(ItemShow);
