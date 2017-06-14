class CompanyAchievement < ActiveRecord::Base

  belongs_to :company, touch: true

end
