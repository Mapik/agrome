class ChangeColumnNameInUserTypes < ActiveRecord::Migration
  def change
    rename_column :user_types, :type, :user_type
  end
end
