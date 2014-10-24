class AddSeasonIdToSeasons < ActiveRecord::Migration
  def change
    add_column :seasons, :season_id, :integer
  end
end
