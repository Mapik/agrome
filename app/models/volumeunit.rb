class Volumeunit < ActiveRecord::Base

  validates :name, presence: true, uniqueness: true
  validates :volumesymbol, presence: true, uniqueness: true

end
