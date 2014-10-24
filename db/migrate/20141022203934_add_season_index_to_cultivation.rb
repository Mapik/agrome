class AddSeasonIndexToCultivation < ActiveRecord::Migration
  def change
    add_column :cultivations, :season_id, :reference, index: true
  end
end
