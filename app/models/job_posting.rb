class JobPosting < ActiveRecord::Base

  has_one :address, as: :addressable, dependent: :destroy
  has_many :languages, as: :languageable, dependent: :destroy
  has_many :skillables, as: :skillable, dependent: :destroy
  has_many :skills, through: :skillables

  has_many :job_applications, dependent: :destroy
  has_many :messages, through: :job_applications
  has_many :interviews, through: :job_applications
  has_many :candidates, through: :job_applications

  #Sales Person
  has_one :sale_user, through: :company
  has_many :candidate_job_statuses, dependent: :destroy
  has_many :notes, as: :notable
  has_many :favourites, as: :favouritable
  has_many :histories, as: :historable

  belongs_to :company, counter_cache: true, touch: true

  belongs_to :job, class_name: 'JobCategory', foreign_key: 'job_category_id', touch: true #there is a old job category field


end
