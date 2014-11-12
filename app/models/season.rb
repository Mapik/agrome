class Season < ActiveRecord::Base
  belongs_to :field
  has_many :cultivations
  has_one :seasonlist
  default_scope -> { order('seasonlist_id DESC') }
  
  validates :field_id, presence: true
  
  validates :seasonlist_id,   presence: true, 
                            uniqueness: { scope: :field_id} 
  
end
