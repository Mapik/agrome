class AddColumnToCultivations < ActiveRecord::Migration
  def change
    add_column :cultivations, :variety, :string
  end
end
