class Task < ActiveRecord::Base
  belongs_to :user
  has_one :task_type
  has_one :cultivation
  has_one :submob
  has_one :machine
  has_one :building
  has_one :warehouse

  validates :task_type_id, presence: true
  
  validates :operation_date, presence: true
  
  VALID_COSTS_REGEX = /\A\d+(\.\d{1,2})?\z/
  validates :operation_costs, presence: true,
                              format: { with: VALID_COSTS_REGEX }


end
