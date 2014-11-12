class Mobtype < ActiveRecord::Base

  has_many :mobs
  
  validates :name, presence: true, uniqueness: true
  
end
