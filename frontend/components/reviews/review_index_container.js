import { connect } from 'react-redux';

import { selectReviews } from '../../reducers/selectors';
import { fetchReviews } from '../../actions/review_actions';
import ReviewIndex from './review_index';

const mapStateToProps = (state, ownProps) => ({
  reviews: selectReviews(state),
  itemId: ownProps.itemId
});

const mapDispatchToProps = dispatch => ({
  fetchReviews: itemId => dispatch(fetchReviews(itemId))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(ReviewIndex);
