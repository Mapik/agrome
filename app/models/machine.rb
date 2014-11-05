class Machine < ActiveRecord::Base

  belongs_to :user
  default_scope -> { order('buy_date DESC') }

end
