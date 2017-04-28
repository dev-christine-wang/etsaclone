import React from 'react';
import { Link } from 'react-router';

const Footer = () => (
  <div className='footer'>
    <ul className='my-info'>
      <li>Project by Christine Wang</li>
    </ul>
    <ul className='links'>
      <li className='github'>
        <a href={'https://github.com/christinewang319'}>Github</a>
      </li>
      <li>
        <a href={'https://www.linkedin.com/in/christinewang319/'}>LinkedIn</a>
      </li>
    </ul>
    <ul className='disclaimer'>
      <li>Disclaimer: For educational purposes only.</li>
    </ul>
  </div>
);

export default Footer;
