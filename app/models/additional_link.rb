class AdditionalLink < ActiveRecord::Base
  belongs_to :candidate, touch: true

end
