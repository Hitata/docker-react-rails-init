class Favourite < ActiveRecord::Base

  belongs_to :favouritable, polymorphic: true
  belongs_to :admin_user, inverse_of: :favourites

end
