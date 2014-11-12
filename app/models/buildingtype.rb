class Buildingtype < ActiveRecord::Base

  has_many :buildings
  
  validates :name, presence: true, uniqueness: true

end
