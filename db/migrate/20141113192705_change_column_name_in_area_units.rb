class ChangeColumnNameInAreaUnits < ActiveRecord::Migration
  def change
    add_column :area_units, :symbol, :string
  end
end
