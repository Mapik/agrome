class Machine < ActiveRecord::Base

  belongs_to :user
  has_one :machintype
  default_scope -> { order('buy_date DESC') }

end
