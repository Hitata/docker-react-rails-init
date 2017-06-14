class EmploymentHistory < ActiveRecord::Base

  belongs_to :employable, polymorphic: true, touch: true

end
