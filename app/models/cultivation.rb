class Cultivation < ActiveRecord::Base
  belongs_to :season
  has_one :croptype
  validates :croptype_id, presence: true
  validates :croparea, length: { maximum: 5 }
  validates :variety, length: { maximum: 50 }
end
