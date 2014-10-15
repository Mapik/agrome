class Field < ActiveRecord::Base
  belongs_to :user
  default_scope -> { order('name ASC') }
  #has_many :area_units
  #has_one :area_unit
  
  validates :user_id, presence: true
  
  validates :name, presence: true, length: { maximum: 20 }
  
  VALID_AREA_REGEX = /\A\d+(\.\d{1,2})?\z/
  validates :area, presence: true,
              format: { with: VALID_AREA_REGEX }
  
  validates :location, length: { maximum: 20 }

  validates :unit_symbol, presence: true

end
