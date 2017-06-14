class Skill < ActiveRecord::Base

  belongs_to :job_category
  has_many :skillables, dependent: :destroy

end
