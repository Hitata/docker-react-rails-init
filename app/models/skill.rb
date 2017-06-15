class Skill < ActiveRecord::Base

  belongs_to :job_category
  has_many :skillables, dependent: :destroy

  validates_presence_of :name_en, :name_ja

end
