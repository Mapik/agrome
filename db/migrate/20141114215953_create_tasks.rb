class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.references :user
      t.references :task_type
      t.references :cultivation
      t.references :submob
      t.references :machine
      t.references :building
      t.references :warehouse
      t.integer :is_done
      t.timestamps
    end
  end
end
