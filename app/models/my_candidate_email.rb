class MyCandidateEmail < ActiveRecord::Base

  belongs_to :sale_user
  belongs_to :candidate

end
