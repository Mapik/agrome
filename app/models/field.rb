class Field < ActiveRecord::Base
  belongs_to :user
  has_many :seasons
  has_one :area_unit
  default_scope -> { order('name ASC') }
  
  validates :user_id, presence: true
  
  validates :name,  presence: true, 
                    length: { maximum: 20 },
                    uniqueness: { scope: :user_id }
  
  VALID_AREA_REGEX = /\A\d+(\.\d{1,2})?\z/
  validates :area,  presence: true,
                    length: { maximum: 5 },
                    format: { with: VALID_AREA_REGEX }
  
  validates :area_unit_id, presence: true

  validates :location, length: { maximum: 20 }

  validates :unit_symbol, presence: true

end
