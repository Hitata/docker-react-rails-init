class Candidate < ActiveRecord::Base

  has_one :account, as: :accountable, dependent: :destroy
  has_one :address, -> { where(address_type: 'current_location') }, as: :addressable, dependent: :destroy
  has_one :home_town, -> { where(address_type: 'home_town') }, as: :addressable, dependent: :destroy
  has_many :employment_histories, as: :employable, dependent: :destroy
  has_many :education_histories, as: :educationable, dependent: :destroy
  has_many :languages, as: :languageable, dependent: :destroy
  has_many :additional_links, dependent: :destroy

  has_many :candidate_achievements, dependent: :destroy
  has_many :additional_interests, dependent: :destroy


  has_many :job_applications, dependent: :destroy
  has_many :job_postings, through: :job_applications

  has_many :sent_messages, as: :sender, class_name: 'Message'
  has_many :received_messages, as: :receiver, class_name: 'Message'
  has_many :messages, through: :job_applications
  has_many :interviews, through: :job_applications

  has_many :skillables, as: :skillable, dependent: :destroy
  has_many :skills, through: :skillables, dependent: :destroy

  # Sales person 
  has_many :my_candidates, dependent: :destroy # Sales person's candidate list
  has_many :sale_users, through: :my_candidates
  has_one :candidate_note, dependent: :destroy # Sales person's note on their candidate
  has_many :candidate_job_statuses
  has_many :histories, as: :historable
  has_many :notes, as: :notable # Sales person conversation about candidate
  has_many :favourites, as: :favouritable
  has_many :my_candidate_emails, dependent: :destroy # Sales person's scout candidate

  # Consultant
  has_many :consultants, through: :scout_candidates
  has_many :scout_candidates, dependent: :destroy
  has_many :scout_messages, through: :scout_candidates
  has_many :sent_scout_messages, as: :sender, class_name: 'ScoutMessage'

  enum gender: {
    unspecified: 0,
    male: 1,
    female: 2,
    other: 3
  }
  #enum visa_type: [:none, :working, :non_working, :family_related]
end
