class ConsultantUser < ActiveRecord::Base

  # devise :database_authenticatable, :registerable, :confirmable,
  #        :recoverable, :rememberable, :trackable, :validatable

  belongs_to :consultant

end
