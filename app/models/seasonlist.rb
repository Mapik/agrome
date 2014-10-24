class Seasonlist < ActiveRecord::Base
  has_many :seasons
  default_scope -> { order('name DESC') }
end
