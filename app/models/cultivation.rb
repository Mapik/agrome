class Cultivation < ActiveRecord::Base
  belongs_to :season
  has_one :croptype
end
