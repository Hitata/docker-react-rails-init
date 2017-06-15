class EducationHistory < ActiveRecord::Base

  belongs_to :educationable, polymorphic: true

end
