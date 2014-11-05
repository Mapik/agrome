class AddArchiveToEquipment < ActiveRecord::Migration
  def change
    add_column :equipment, :archive, :integer
  end
end
