class CreateSeasonLists < ActiveRecord::Migration
  def change
    create_table :season_lists do |t|
      t.string :season_name_from_list

      t.timestamps
    end
  end
end
