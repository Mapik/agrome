class AddObligatoryColumnToTask < ActiveRecord::Migration
  def change
    add_column :tasks, :operation_date, :date
    add_column :tasks, :operation_costs, :float
  end
end
