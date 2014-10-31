class CreateSubmobs < ActiveRecord::Migration
  def change
    create_table :submobs do |t|
      t.references :mob, index: true
      t.string :name
      t.integer :quantity
      t.date :creation_date
      t.integer :archive
      t.string :breed
      t.timestamps

      t.timestamps
    end
  end
end
