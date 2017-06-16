import axios from 'axios';

//temporary setup for bypass COR
const myApi = axios.create({
  baseURL: 'http://0.0.0.0:3000',
  timeout: 10000,
  withCredentials: true,
  headers: {
    'Accept': 'application/json',
    'Content-Type': 'application/json',
  }
});

export const GET_ALL_SKILL_SUCCESS = 'GET_ALL_SKILL_SUCCESS';

function loadSkillSuccess (skills) {
  return {
    type: GET_ALL_SKILL_SUCCESS,
    skills,
  };
}

export function getAllSkill () {
  return function (dispatch) {

    myApi.get("/skills")
      .then(response => dispatch(loadSkillSuccess(response.data)))
      .catch(error => {throw(error)});
  };
}