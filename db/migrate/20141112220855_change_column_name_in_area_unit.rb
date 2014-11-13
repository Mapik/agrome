class ChangeColumnNameInAreaUnit < ActiveRecord::Migration
  def change
    rename_column :volumeunits, :symbol, :volumesymbol
    
  end
end
