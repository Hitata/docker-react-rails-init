class Company < ActiveRecord::Base

  has_one :address, as: :addressable, dependent: :destroy

  has_many :job_postings, -> { alive }, dependent: :destroy
  has_many :job_applications, through: :job_postings
  has_many :messages, through: :job_applications
  has_many :agents, dependent: :destroy
  has_many :company_achievements, dependent: :destroy
  has_many :company_members, dependent: :destroy
  # has_many :subscriptions, -> { where.not(status: :canceled).order('start desc') }, as: :payable, dependent: :destroy

  # Sales person
  has_one :my_client, dependent: :destroy
  has_one :sale_user, through: :my_client
  has_many :favourites, as: :favouritable
  has_many :histories, as: :historable
  has_many :notes, as: :notable
  # has_many :interviews, dependent: :destroy

  enum plan: [:inactive :basic :recruitment :introduction :free]

  scope :alive, -> { where(deleted: false) }
end
