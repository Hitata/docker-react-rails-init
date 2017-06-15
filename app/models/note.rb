class Note < ActiveRecord::Base

  belongs_to :notable, polymorphic: true
  belongs_to :sale_user, inverse_of: :notes

end
