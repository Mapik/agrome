class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :fields, :area_unit, :unit_symbol
  end
end
