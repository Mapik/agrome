class Machine < ActiveRecord::Base

  belongs_to :user
  has_one :machintype
  default_scope -> { order('buy_date DESC') }

  validates :name,  presence: true, 
                    length: { maximum: 20 },
                    uniqueness: { scope: :user_id }

  validates :manufacturer_name, length: { maximum: 20 }

  validates :model_name, length: { maximum: 20 }

  validates :machinetype_id,  presence: true
end
