class MyClient < ActiveRecord::Base

  belongs_to :sale_user
  belongs_to :company

end
