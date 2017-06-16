import React, { Component } from 'react';
import PropTypes from 'prop-types';
import {Link} from 'react-router'

const SkillList = ({skills}) => {
  return (
      <ul className="list-group">
        {skills.map((skill) =>
          <li key={skill.id}>
            <Link to={'/skills/' + skill.id}>{skill.name_en}</Link>
          </li>
        )}
      </ul>
  );
};

SkillList.propTypes = {
  skills: PropTypes.array.isRequired
};

export default SkillList;
