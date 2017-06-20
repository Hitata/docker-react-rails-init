import React, { Component } from 'react';
import { connect } from 'react-redux';
import PropTypes from 'prop-types';
import ImmutablePropTypes from "react-immutable-proptypes";

import { loadSkillSuccess, getAllSkill } from 'actions/skillAction';

import SkillList from 'components/Skill/skillList'

@connect(state => ({
  skills: state.skill.get('skills'),
}))
export default class SkillContainer extends Component {
  static propTypes = {
    skills: ImmutablePropTypes.list,
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
    console.log(skills)
    return (
      <div className='Skills'>
        <h2>Skills List </h2>
        <hr />
        <button onClick={ this.handlePopulateSkillButton } >Populate Skills</button>
        <SkillList skills = { skills }/>
      </div>
    );
  }
}