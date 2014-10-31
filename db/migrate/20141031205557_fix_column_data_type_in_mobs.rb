class FixColumnDataTypeInMobs < ActiveRecord::Migration
  def change
    change_column :mobs, :creation_date,  :date
  end
end
