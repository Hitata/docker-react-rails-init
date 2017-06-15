class Consultant < ActiveRecord::Base

  has_one :consultant_user, dependent: :destroy
  has_many :consultant_templates, dependent: :destroy
  has_many :consultant_messages, dependent: :destroy
  has_many :scout_candidates, dependent: :destroy
  has_many :candidates, through: :scout_candidates

end
