class CreateCultivations < ActiveRecord::Migration
  def change
    create_table :cultivations do |t|
      t.references :croptype, index: true
      t.string :name
      t.integer :croparea

      t.timestamps
    end
  end
end
