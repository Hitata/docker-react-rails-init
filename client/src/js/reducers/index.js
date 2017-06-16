import { combineReducers } from 'redux';
import app from 'reducers/app';
import skill from 'reducers/skillReducer';

export default combineReducers({
  app,
  skill,
});
