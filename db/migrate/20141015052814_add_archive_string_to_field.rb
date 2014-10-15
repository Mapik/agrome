class AddArchiveStringToField < ActiveRecord::Migration
  def change
    add_column :fields, :archive_string, :string
  end
end
