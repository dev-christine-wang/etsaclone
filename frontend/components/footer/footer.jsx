import React from 'react';
import { Link } from 'react-router';

const Footer = () => (
  <div className='footer'>
    <div className='my-info'>Project by Christine Wang</div>
    <ul className='links'>
      <li>
        <a href={'https://github.com/christinewang319'}>Github</a>
      </li>
      <li>
        <a href={'https://www.linkedin.com/in/christinewang319/'}>LinkedIn</a>
      </li>
    </ul>
    <div className='disclaimer'>Disclaimer: For educational purposes only.</div>
  </div>
);

export default Footer;
