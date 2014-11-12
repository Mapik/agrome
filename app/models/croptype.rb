class Croptype < ActiveRecord::Base
  has_many :cultivations  
  validates :name, presence: true, uniqueness: true
end
