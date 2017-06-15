class ScoutCandidate < ActiveRecord::Base

  belongs_to :consultant
  belongs_to :candidate
  has_many :scout_messages

end
