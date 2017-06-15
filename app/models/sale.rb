class Sale < ActiveRecord::Base

  has_one :sale_user, dependent: :destroy
  
end
