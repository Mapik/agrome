class AddBreedToMob < ActiveRecord::Migration
  def change
    add_column :mobs, :breed, :string
  end
end
