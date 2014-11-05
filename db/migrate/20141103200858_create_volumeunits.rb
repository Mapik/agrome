class CreateVolumeunits < ActiveRecord::Migration
  def change
    create_table :volumeunits do |t|
      t.string :name
      t.string :symbol
      t.timestamps
    end
  end
end
