import React from 'react';
import { Link, withRouter } from 'react-router';

class SearchForm extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      searchWords: ''
    };

    this.handleChange = this.handleChange.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  handleChange(e) {
    this.setState({ searchWords: e.target.value });
  }

  handleSubmit(e) {
    e.preventDefault();
    this.props.router.push(`/items?searchWords=${ this.state.searchWords }`);
    this.setState({ searchWords: '' });
  }

  render() {
    return (
      <form onSubmit={ this.handleSubmit }>
        <ul className='search-bar'>
          <li>
            <input className='search-input' type='text' placeholder={'Search jewelry collection'} value={ this.state.searchWords } onChange={ this.handleChange } />
          </li>
          <li>
            <input className='search-submit-button' type='submit' value='Search' />
          </li>
        </ul>
      </form>
    );
  }
}

export default withRouter(SearchForm);
