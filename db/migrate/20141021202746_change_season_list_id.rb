class ChangeSeasonListId < ActiveRecord::Migration
  def change
    rename_column :seasons, :season_list_id, :seasonlist_id
  end
end
