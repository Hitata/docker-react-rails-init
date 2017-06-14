class CandidateJobStatus < ActiveRecord::Base

  belongs_to :candidate
  belongs_to :job_posting
  belongs_to :sale_user

end
