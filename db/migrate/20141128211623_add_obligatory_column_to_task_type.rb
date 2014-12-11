class AddObligatoryColumnToTaskType < ActiveRecord::Migration
  def change
    add_column :task_types, :operation_date, :date
    add_column :task_types, :operation_costs, :float
  end
end
