class Submob < ActiveRecord::Base
  belongs_to :mob
  default_scope -> { order('creation_date DESC') }

  validates :mob_id, presence: true

  validates :name,  presence: true, 
                    length: { maximum: 40 },
                    uniqueness: { scope: :mob_id }

  validates :breed, length: { maximum: 40 }

  VALID_Q_REGEX = /\A\d+(\.\d{1,2})?\z/
  validates :quantity,  format: { with: VALID_Q_REGEX },
                        length: { maximum: 5 }
end
