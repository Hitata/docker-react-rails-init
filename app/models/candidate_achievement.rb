class CandidateAchievement < ActiveRecord::Base
  belongs_to :candidate, touch: true
  belongs_to :candidate
  belongs_to :job_posting
  belongs_to :sale_user
end
