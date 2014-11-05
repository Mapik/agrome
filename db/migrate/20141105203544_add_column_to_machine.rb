class AddColumnToMachine < ActiveRecord::Migration
  def change
    add_column :machines, :archive, :integer
    add_reference :machines, :machinetype, index: true
  end
end
