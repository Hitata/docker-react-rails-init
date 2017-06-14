class Account < ActiveRecord::Base

  # devise :database_authenticatable, :registerable, :confirmable,
  #        :recoverable, :rememberable, :trackable, :validatable
  belongs_to :accountable, polymorphic: true

  enum language_preference: [:en, :ja]
end
