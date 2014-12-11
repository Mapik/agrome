class ChangeColumnInTask < ActiveRecord::Migration
  def change
        add_column :tasks, :stock_name, :string
  end
end
