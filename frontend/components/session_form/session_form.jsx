import React from 'react';
import { Link, withRouter } from 'react-router';

class SessionForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      first_name: '',
      last_name: '',
      email: '',
      password: ''
    };
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  componentDidUpdate() {
    this.redirectIfLoggedIn();
  }

  redirectIfLoggedIn() {
    if (this.props.signedIn) {
      this.props.router.push('/');
    }
  }

  update(field) {
    return e => this.setState({
      [field]: e.currentTarget.value
    });
  }

  handleSubmit(e) {
    e.preventDefault();
    const user = this.state;
    this.props.processForm({ user });
  }

  navLinks() {
    if (this.props.formType === 'signin') {
      return <Link to='/register'>Register</Link>;
    } else {
      return <Link to='/signin'>Sign In</Link>;
    }
  }

  renderErrors() {
    return(
      <ul>
        {this.props.errors.map((error, i) => (
          <li key={ `error-${i}` }>
            { error }
          </li>
        ))}
      </ul>
    );
  }

  render() {
    return (
      <div className='signin-form-container'>
        <form onSubmit={this.handleSubmit} className='signin-form-box'>
          {this.renderErrors()}
          <div className='signin-form'>
            <br/>
            <label> Email
              <input type='text'
                      value={this.state.email}
                      onChange={this.update('username')}
                      className='signin-input' />
            </label>
            <br/>
            <label> Password
              <input type='password'
                      value={this.state.password}
                      onChange={this.update('password')}
                      className='signin-input' />
            </label>
            <br/>
            <input type='submit' value='Sign in' />
          </div>
        </form>
      </div>
    );
  }
}

export default withRouter(SessionForm);
