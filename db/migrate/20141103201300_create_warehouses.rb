class CreateWarehouses < ActiveRecord::Migration
  def change
    create_table :warehouses do |t|
      t.references :user, index: true
      t.string :name
      t.integer :volume 
      t.references :volumeunit
      t.timestamps
    end
  end
end
