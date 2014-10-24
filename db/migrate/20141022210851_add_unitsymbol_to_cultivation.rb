class AddUnitsymbolToCultivation < ActiveRecord::Migration
  def change
    add_column :cultivations, :unitsymbol, :string
  end
end
