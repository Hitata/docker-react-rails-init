import React, { Component } from 'react';
import { IndexLink, Link } from 'react-router';
import { routeCodes } from '../../routes';
import signContractImg from '../../../assets/img/sign-contract.svg';

export default class Menu extends Component {

  render() {
    return (
      <div className='Menu'>
        <div className='Menu-logo'>
          <img
            src={ signContractImg }
            alt='sign contract logo'
          />
        </div>
        <div className='Menu-links'>
          <IndexLink
            activeClassName='Menu-link--active'
            className='Menu-link'
            to={ routeCodes.DASHBOARD }
          >
            Home
          </IndexLink>
          <Link
            activeClassName='Menu-link--active'
            className='Menu-link'
            to={ routeCodes.ABOUT }
          >
            About
          </Link>
          <Link
            activeClassName='Menu-link--active'
            className='Menu-link'
            to={ routeCodes.SKILL }
          >
            Skills
          </Link>
          <Link
            activeClassName='Menu-link--active'
            className='Menu-link'
            to='404'
          >
            404
          </Link>
        </div>
      </div>
    );
  }
}
