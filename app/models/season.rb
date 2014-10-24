class Season < ActiveRecord::Base
  belongs_to :field
  has_many :cultivations
  default_scope -> { order('season_name DESC') }
  validates :field_id, presence: true
  validates :season_name, presence: true
  
end
