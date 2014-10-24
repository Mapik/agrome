class ChangeColumnNameInSeasons < ActiveRecord::Migration
  def change
    rename_column :seasons, :season, :season_name
  end
end
