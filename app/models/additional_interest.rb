class AdditionalInterest < ActiveRecord::Base
  belongs_to :candidate, touch: true
  
end
