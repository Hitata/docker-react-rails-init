class Interview < ActiveRecord::Base

  belongs_to :company
  belongs_to :job_application
  belongs_to :message

  has_one :candidate, through: :job_application
  has_one :job_posting, through: :job_application
  has_many :interview_datetimes, dependent: :destroy

end
