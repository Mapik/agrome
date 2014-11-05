class AddArchiveToWarehouse < ActiveRecord::Migration
  def change
    add_column :warehouses, :archive, :integer
  end
end
