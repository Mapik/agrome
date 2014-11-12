class Croptype < ActiveRecord::Base
  has_many :cultivations  
  validates :cropname, presence: true, uniqueness: true
end
