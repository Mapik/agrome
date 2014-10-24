class AddSeasonIndexToCultivation < ActiveRecord::Migration
  def change
    add_column :cultivations, :season_id, :integer, index: true
  end
end
