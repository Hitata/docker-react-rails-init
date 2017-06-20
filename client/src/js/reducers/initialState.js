import { fromJS } from 'immutable';

export default fromJS({
  counter: 0,
  asyncLoading: false,
  asyncError: null,
  asyncData: null,

  skills: [],
})