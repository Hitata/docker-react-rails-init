class Subscription < ActiveRecord::Base

  belongs_to :payable, polymorphic: true, touch: true
  # has_many :charges, primary_key: :stripe_id,
  #   foreign_key: :stripe_subscription_id,
  #   dependent: :destroy


end
