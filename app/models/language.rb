class Language < ActiveRecord::Base

 belongs_to :languageable, polymorphic: true, touch: true

end
