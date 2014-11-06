class Mob < ActiveRecord::Base
  belongs_to :user
  has_many :submobs
  has_one :mobtype
  
  default_scope -> { order('creation_date DESC') }
  validates :user_id, presence: true
  
  validates :name, presence: true, length: { maximum: 20 }

  validates :breed, length: { maximum: 20 }

  validates :mobtype_id, presence: true
end
