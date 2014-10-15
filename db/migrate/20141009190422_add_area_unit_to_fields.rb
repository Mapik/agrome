class AddAreaUnitToFields < ActiveRecord::Migration
  def change
    add_column :fields, :area_unit, :string
  end
end
