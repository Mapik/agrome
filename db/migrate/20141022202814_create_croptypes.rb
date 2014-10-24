class CreateCroptypes < ActiveRecord::Migration
  def change
    create_table :croptypes do |t|
      t.string :type

      t.timestamps
    end
  end
end
