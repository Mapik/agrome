class CreateBuildingtypes < ActiveRecord::Migration
  def change
    create_table :buildingtypes do |t|
      t.string :name
      t.timestamps
    end
  end
end
