class AddColumnToBuilding < ActiveRecord::Migration
  def change
    add_column :buildings, :archive, :integer
  end
end
