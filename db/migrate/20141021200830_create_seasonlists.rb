class CreateSeasonlists < ActiveRecord::Migration
  def change
    create_table :seasonlists do |t|
      t.string :name

      t.timestamps
    end
  end
end
