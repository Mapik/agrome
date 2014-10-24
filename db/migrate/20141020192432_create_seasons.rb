class CreateSeasons < ActiveRecord::Migration
  def change
    create_table :seasons do |t|
      t.references :field, index: true
      t.string :season

      t.timestamps
    end
    add_index :seasons, [:field_id, :season]
  end
end
