class Charge < ActiveRecord::Base

  # belongs_to :subscription, foreign_key: :stripe_subscription_id,
  #                           primary_key: :stripe_id

end
