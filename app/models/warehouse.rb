class Warehouse < ActiveRecord::Base
  belongs_to :user
  has_one :volumeunit
  default_scope -> { order('name ASC') }

  validates :name,  presence: true, 
                    length: { maximum: 40 },
                    uniqueness: { scope: :user_id }

  validates :volume, length: { maximum: 10 }

end
