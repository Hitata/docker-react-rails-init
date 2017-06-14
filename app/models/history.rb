class History < ActiveRecord::Base

  belongs_to :historable, polymorphic: true

end
