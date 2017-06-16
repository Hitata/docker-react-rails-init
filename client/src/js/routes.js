import React, { Component } from 'react';
import { Router, Route, IndexRoute, browserHistory } from 'react-router';

import App from 'views/App';
import Dashboard from 'views/Dashboard';
import About from 'views/About';
import Skill from 'views/Skill';
import NotFound from 'views/NotFound';

const publicPath = '/';

export const routeCodes = {
  DASHBOARD: publicPath,
  ABOUT: `${ publicPath }about`,
  SKILL: `${ publicPath }skill`,
};

export default class Routes extends Component {
  render() {
    return (
      <Router history={ browserHistory }>
        <Route path={ publicPath } component={ App }>
          <IndexRoute component={ Dashboard } />
          <Route path={ routeCodes.DASHBOARD } component={ Dashboard } />
          <Route path={ routeCodes.ABOUT } component={ About } />
          <Route path={ routeCodes.SKILL } component={ Skill } />
          <Route path='*' component={ NotFound } />
        </Route>
      </Router>
    );
  }
}
