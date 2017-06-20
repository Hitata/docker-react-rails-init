import React, { Component } from 'react';
import PropTypes from 'prop-types';
import ImmutablePropTypes from "react-immutable-proptypes";

import {Link} from 'react-router'

const SkillList = ({skills}) => {
  return (
      <ul className="list-group">
        {skills.map((skill) =>
          <li key={skill.get('id')}>
            <Link to={'/skills/' + skill.get('id')}>{skill.get('name_en')}</Link>
          </li>
        )}
      </ul>
  );
};

SkillList.propTypes = {
  skills: ImmutablePropTypes.list.isRequired,
};

export default SkillList;
