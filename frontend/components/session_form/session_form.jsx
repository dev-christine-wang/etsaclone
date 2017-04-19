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
    this.props.processForm(user);
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
    if (this.props.formType === 'register') {
      return (
        <div className='register-form-container'>
          <form onSubmit={this.handleSubmit} className='register-form-box'>
            {this.renderErrors()}
            <div className='register-form'>
              <br/>
              <label>First Name&nbsp;
                <input type='text'
                        value={this.state.first_name}
                        onChange={this.update('first_name')}
                        className='register-input' />
              </label>
              <br/>
              <label>Last Name&nbsp;
                <input type='text'
                        value={this.state.last_name}
                        onChange={this.update('last_name')}
                        className='register-input' />
              </label>
              <br/>
              <label> Email&nbsp;
                <input type='text'
                        value={this.state.email}
                        onChange={this.update('email')}
                        className='register-input' />
              </label>
              <br/>
              <label> Password&nbsp;
                <input type='password'
                        value={this.state.password}
                        onChange={this.update('password')}
                        className='register-input' />
              </label>
              <br/>
              <input type='submit' value='Register' />
            </div>
          </form>
        </div>
      );
    } else {
      return (
        <div className='signin-form-container'>
          <form onSubmit={this.handleSubmit} className='signin-form-box'>
            {this.renderErrors()}
            <div className='signin-form'>
              <label> Email&nbsp;
                <input type='text'
                  value={this.state.email}
                  onChange={this.update('email')}
                  className='signin-input' />
              </label>
              <br/>
              <label> Password&nbsp;
                <input type='password'
                  value={this.state.password}
                  onChange={this.update('password')}
                  className='signin-input' />
              </label>
              <br/>
              <input type='submit' value='Sign In' />
            </div>
          </form>
        </div>
      );
    }
  }
}

export default withRouter(SessionForm);
