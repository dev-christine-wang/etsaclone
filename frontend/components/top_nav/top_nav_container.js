import { connect } from 'react-redux';
import { signout } from '../../actions/session_actions';
import SessionLinks from './top_nav';

const mapStateToProps = ({ session }) => ({
  currentUser: session.currentUser
});

const mapDispatchToProps = dispatch => ({
  signout: () => dispatch(signout())
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(SessionLinks);
