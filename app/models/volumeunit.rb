class Volumeunit < ActiveRecord::Base

  validates :name, presence: true, uniqueness: true
  validates :symbol, presence: true, uniqueness: true

end
