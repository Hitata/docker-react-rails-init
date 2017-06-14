class ScoutMessage < ActiveRecord::Base

  belongs_to :scout_candidate
  belongs_to :sender, :polymorphic => true

end
