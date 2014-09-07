class AddCharacteristicToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :user_type_id, :integer
  	add_column :users, :number_of_hectars, :integer
  	add_column :users, :main_cultivation, :string
  	add_column :users, :main_herd, :string
  	add_column :users, :size_of_herd, :integer
  	add_column :users, :main_production_type, :string
  	add_column :users, :date_of_birth, :date
  	add_column :users, :gender, :string
  end
end
