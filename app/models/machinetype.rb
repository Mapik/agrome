class Machinetype < ActiveRecord::Base

  has_many :machines
  
  validates :name, presence: true, uniqueness: true

end
