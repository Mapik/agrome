class ChangeColumnNameInAreaUnitsSecondTime < ActiveRecord::Migration
  def change
    rename_column :area_units, :symbol, :unit_symbol
  end
end
