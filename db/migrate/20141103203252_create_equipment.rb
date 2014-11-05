class CreateEquipment < ActiveRecord::Migration
  def change
    create_table :equipment do |t|
      t.references :user, index: true
      t.references :equipmenttype
      t.string :name
      t.date :production_date
      t.string :manufacturer_name
      t.string :model_name
      t.date :buy_date
      t.timestamps
    end
  end
end


