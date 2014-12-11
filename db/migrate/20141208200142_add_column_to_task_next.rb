class AddColumnToTaskNext < ActiveRecord::Migration
  def change
    add_column :tasks, :is_for_budget, :integer
    add_column :tasks, :is_for_calendar, :integer
  end
end
