class AddColumnToTaskType < ActiveRecord::Migration
  def change
    add_column :task_types, :div_id, :integer
  end
end
