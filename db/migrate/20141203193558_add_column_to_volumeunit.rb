class AddColumnToVolumeunit < ActiveRecord::Migration
  def change
    add_column :volumeunits, :is_for_livestock, :integer
  end
end
