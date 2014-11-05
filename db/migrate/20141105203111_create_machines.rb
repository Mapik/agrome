class CreateMachines < ActiveRecord::Migration
  def change
    create_table :machines do |t|
      t.references :user, index: true
      t.string :name
      t.date :production_date
      t.string :manufacturer_name
      t.string :model_name
      t.date :buy_date
      t.timestamps

      t.timestamps
    end
  end
end
