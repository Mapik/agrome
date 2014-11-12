class Building < ActiveRecord::Base
  belongs_to :user
  has_one :buildingtype
  default_scope -> { order('name ASC') }

  validates :name, presence: true,
            uniqueness: { scope: :user_id },
            length: { maximum: 20 } 
  
  validates :buildingtype_id, presence: true
end
