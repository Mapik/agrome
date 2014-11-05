class CreateBuildings < ActiveRecord::Migration
  def change
    create_table :buildings do |t|
      t.references :user, index: true
      t.references :buildingtype
      t.string :name
      t.date :build_date
      t.integer :area
      t.timestamps
    end
  end
end


