class Agent < ActiveRecord::Base

  has_one :account, as: :accountable, dependent: :destroy
  belongs_to :company
  has_many :sent_messages, :as => :sender, :class_name => 'Message'
  has_many :received_messages, :as => :receiver, :class_name => 'Message'

end
