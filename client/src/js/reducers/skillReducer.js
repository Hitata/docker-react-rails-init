import initialState from 'reducers/initialState';

import {
  GET_ALL_SKILL_SUCCESS,
} from 'actions/skillAction';

const actionsMap = {
  [GET_ALL_SKILL_SUCCESS]: (state, action) => {
    //Temporary not using merge
    return {
      skills: action.skills,
    }
  },
};

export default function reducer(state = initialState, action = {}) {  
  const fn = actionsMap[action.type];
  return fn ? fn(state, action) : state;
}