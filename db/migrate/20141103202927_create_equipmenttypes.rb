class CreateEquipmenttypes < ActiveRecord::Migration
  def change
    create_table :equipmenttypes do |t|
      t.string  :name
      t.timestamps
    end
  end
end
