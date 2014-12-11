class CreateTaskTypes < ActiveRecord::Migration
  def change
    create_table :task_types do |t|
      t.string :name
      t.integer :is_for_cultivation
      t.integer :is_for_mob
      t.integer :is_for_machine
      t.integer :is_for_building
      t.integer :is_for_warehouse
      t.integer :is_for_offer
      t.integer :is_for_groupdeal
      t.timestamps
    end
  end
end
