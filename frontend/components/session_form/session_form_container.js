import { connect } from 'react-redux';
import { register, signin, signout, clearSessionErrors } from '../../actions/session_actions';
import SessionForm from './session_form';

const mapStateToProps = ({ session }) => ({
  signedIn: Boolean(session.currentUser),
  errors: session.errors
});

const mapDispatchToProps = (dispatch, { location }) => {
  const formType = location.pathname.slice(1);
  const processForm = (formType === 'register') ? register : signin;

  return {
    processForm: user => dispatch(processForm(user)),
    clearSessionErrors: () => dispatch(clearSessionErrors()),
    formType
  };
};

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(SessionForm);
