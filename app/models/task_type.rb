class TaskType < ActiveRecord::Base
  has_many :tasks
  default_scope -> { order('name ASC') }

end
