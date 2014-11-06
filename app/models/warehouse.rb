class Warehouse < ActiveRecord::Base
  belongs_to :user
  has_one :volumeunit
  default_scope -> { order('name ASC') }
end
