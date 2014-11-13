class ChangeColumnNameInVolumeUnits < ActiveRecord::Migration
  def change
    add_column :area_units, :added_column, :string
  end
end
