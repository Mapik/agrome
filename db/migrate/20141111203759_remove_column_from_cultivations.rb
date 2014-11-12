class RemoveColumnFromCultivations < ActiveRecord::Migration
  def down
    remove_column :cultivations, :name, :string
  end
end
