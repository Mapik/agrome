class Building < ActiveRecord::Base
  belongs_to :user
  has_one :buildingtype
  default_scope -> { order('name ASC') }
end
