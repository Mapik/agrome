class AddColumnToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :is_for_cultivation, :integer
    add_column :tasks, :is_for_mob, :integer
    add_column :tasks, :is_for_machine, :integer
    add_column :tasks, :is_for_building, :integer
    add_column :tasks, :is_for_warehouse, :integer
    add_column :tasks, :is_for_offer, :integer
    add_column :tasks, :is_for_groupdeal, :integer
  end
end
