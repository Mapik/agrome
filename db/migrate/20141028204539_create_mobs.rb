class CreateMobs < ActiveRecord::Migration
  def change
    create_table :mobs do |t|
      t.references :user, index: true
      t.string :name
      t.integer :quantity
      t.references :mobtype
      t.datetime :creation_date
      t.integer :archive
      t.timestamps
    end
  end
end
