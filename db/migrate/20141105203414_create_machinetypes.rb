class CreateMachinetypes < ActiveRecord::Migration
  def change
    create_table :machinetypes do |t|
      t.string  :name
      t.timestamps
    end
  end
end
