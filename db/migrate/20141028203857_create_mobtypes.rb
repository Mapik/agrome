class CreateMobtypes < ActiveRecord::Migration
  def change
    create_table :mobtypes do |t|
      t.string :name
      t.timestamps
    end
  end
end
