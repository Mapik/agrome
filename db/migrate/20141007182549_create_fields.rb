class CreateFields < ActiveRecord::Migration
  def change
    create_table :fields do |t|
      t.references :user, index: true
      t.string :name
      t.float :area
      t.references :area_unit, index: true
      t.string :location

      t.timestamps
    end
    add_index :fields, [:user_id, :created_at]
  end
end
