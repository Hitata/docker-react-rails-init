class SaleUser < ActiveRecord::Base

  belongs_to :sale
  has_many :my_clients, dependent: :destroy
  has_many :companies, through: :my_clients
  has_many :job_postings, through: :companies

  has_many :my_candidates, dependent: :destroy
  has_many :candidates, through: :my_candidates

  has_many :candidate_job_statuses, dependent: :destroy
  has_many :notes, inverse_of: :sale_user
  has_many :my_candidate_emails, dependent: :destroy


end
