import React, { Component } from 'react';
import { connect } from 'react-redux';
import PropTypes from 'prop-types';

import { loadSkillSuccess, getAllSkill } from 'actions/skillAction';

import SkillList from 'components/Skill/skillList'

@connect(state => ({
  skills: state.skill.skills,
}))
export default class SkillContainer extends Component {
  static propTypes = {
    skills: PropTypes.array,
    // from react-redux connect
    dispatch: PropTypes.func,
  }

  constructor() {
    super();
    this.handlePopulateSkillButton = this.handlePopulateSkillButton.bind(this);
  }

  handlePopulateSkillButton() {
    const {dispatch} = this.props;
    dispatch(getAllSkill());
  }

  render() {
    const {skills} = this.props;
    console.log(this.props)
    return (
      <div className='Skills'>
        <h2>Skills List </h2>
        <hr />
        <button onClick={ this.handlePopulateSkillButton } >Populate Skills</button>
      </div>
    );
  }
}