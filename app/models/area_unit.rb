class AreaUnit < ActiveRecord::Base
  validates :unit, presence: true, 
           uniqueness: true
end
