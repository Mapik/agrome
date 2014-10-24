class ChangeSeasonIdToSeasonListId < ActiveRecord::Migration
  def change
    rename_column :seasons, :season_id, :season_list_id
  end
end
