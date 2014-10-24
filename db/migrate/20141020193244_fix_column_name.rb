class FixColumnName < ActiveRecord::Migration
  def change
    def change
      rename_column :seasons, :season, :season_name
    end
  end
end
