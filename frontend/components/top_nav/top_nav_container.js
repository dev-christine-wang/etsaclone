import { connect } from 'react-redux';
import { signin, signout } from '../../actions/session_actions';
import SessionLinks from './top_nav';

const mapStateToProps = ({ session }) => ({
  currentUser: session.currentUser
});

const mapDispatchToProps = dispatch => ({
  signout: () => dispatch(signout()),
  signin: user => dispatch(signin(user))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(SessionLinks);
