class JobCategory < ActiveRecord::Base

  has_many :skills
  has_many :job_postings
  # :candidates has multiple job categories

end
