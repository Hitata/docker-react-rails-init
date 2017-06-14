class JobApplication < ActiveRecord::Base

  belongs_to :candidate
  belongs_to :job_posting, counter_cache: :applications_count
  
  has_one :company, through: :job_posting
  has_many :messages, dependent: :destroy
  has_many :interviews, dependent: :destroy
  has_many :employment_histories, as: :employable, dependent: :destroy
  has_many :education_histories, as: :educationable, dependent: :destroy
  has_many :languages, as: :languageable, dependent: :destroy
  has_many :skillables, as: :skillable, dependent: :destroy
  has_many :skills, through: :skillables, dependent: :destroy

end
