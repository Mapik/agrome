class ChangeTypeIntoCropname < ActiveRecord::Migration
  def change
    rename_column :croptypes, :type, :cropname
  end
end
