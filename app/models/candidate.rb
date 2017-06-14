class Candidate < ActiveRecord::Base
  enum gender: {
    unspecified: 0,
    male: 1,
    female: 2,
    other: 3
  }



end
