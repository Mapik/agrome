class AddArchiveToField < ActiveRecord::Migration
  def change
    add_column :fields, :archive, :integer
  end
end
