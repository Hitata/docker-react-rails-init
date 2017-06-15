class Message < ActiveRecord::Base

  # belongs_to :original_message, class_name: 'Message'
  belongs_to :sender, polymorphic: true
  belongs_to :receiver, polymorphic: true

  belongs_to :job_application
  has_one :candidate, through: :job_application
  has_one :job_posting, through: :job_application
  # has_many :messages, foreign_key: 'original_message_id'
  
  belongs_to :interview

end
