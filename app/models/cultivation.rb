class Cultivation < ActiveRecord::Base
  belongs_to :croptype
  belongs_to :season
end
