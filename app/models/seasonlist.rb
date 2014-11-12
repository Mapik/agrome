class Seasonlist < ActiveRecord::Base
  has_many :seasons
  default_scope -> { order('name DESC') }
 
  validates :name, presence: true, uniqueness: true

end
