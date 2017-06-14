class Skillable < ActiveRecord::Base

  belongs_to :skill
  belongs_to :skillable, polymorphic: true, touch: true

end
