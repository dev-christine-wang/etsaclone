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

  componentWillUnmount() {
    this.props.clearSessionErrors();
  }

  componentDidUpdate() {
    this.redirectIfLoggedIn();
  }

  componentWillReceiveProps(nextProps) {
    if (this.props.formType !== nextProps.formType) {
      this.props.clearSessionErrors();
    }
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
    this.props.processForm(user);
  }

  navLinks() {
    if (this.props.formType === 'signin') {
      return <Link to='/register'>Register</Link>;
    } else {
      return <Link to='/signin'>Sign In</Link>;
    }
  }

  render() {
    if (this.props.formType === 'register') {
      return (
        <div className='register-form-container'>
          <form onSubmit={this.handleSubmit} className='register-form-box'>
            <div className='register-message'>
              <span>Create an EtsAClone account and start shopping</span>
            </div>
            <div className='register-form'>
              <label>First Name
                <br/>
                <input id='form-field'
                        type='text'
                        value={this.state.first_name}
                        onChange={this.update('first_name')}
                        className='register-input' />
                &nbsp;&nbsp;
                <span>{this.props.errors.first_name}</span>
              </label>
              <br/>
              <label>Last Name
                <br/>
                <input id='form-field'
                        type='text'
                        value={this.state.last_name}
                        onChange={this.update('last_name')}
                        className='register-input' />
                &nbsp;&nbsp;
                <span>{this.props.errors.last_name}</span>
              </label>
              <br/>
              <label>Email
                <br/>
                <input id='form-field'
                        type='text'
                        value={this.state.email}
                        onChange={this.update('email')}
                        className='register-input' />
                &nbsp;&nbsp;
                <span>{this.props.errors.email}</span>
              </label>
              <br/>
              <label>Password
                <br/>
                <input id='form-field'
                        type='password'
                        value={this.state.password}
                        onChange={this.update('password')}
                        className='register-input' />
                &nbsp;&nbsp;
                <span>{this.props.errors.password}</span>
              </label>
              <br/>
              <input type='submit' value='Register' />
              <br/>
              <p>By clicking Register, you agree to consider hiring me.</p>
            </div>
          </form>
        </div>
      );
    } else {
      return (
        <div className='signin-form-container'>
          <form onSubmit={this.handleSubmit} className='signin-form-box'>
            <div className='sign-in-message'>
              <span>Sign into EtsAClone</span>
            </div>
            <div className='signin-form'>
              <label>Email
                <br/>
                <input id='form-field'
                        type='text'
                        value={this.state.email}
                        onChange={this.update('email')}
                        className='signin-input' />
                &nbsp;&nbsp;
                <span>{this.props.errors.base}</span>
              </label>
              <br/>
              <label>Password
                <br/>
                <input id='form-field'
                        type='password'
                        value={this.state.password}
                        onChange={this.update('password')}
                        className='signin-input' />
                &nbsp;&nbsp;
                <span>{this.props.errors.base}</span>
              </label>
              <br/>
              <input type='submit' value='Sign In' />
              <br/>
            </div>
          </form>
        </div>
      );
    }
  }
}

export default withRouter(SessionForm);
