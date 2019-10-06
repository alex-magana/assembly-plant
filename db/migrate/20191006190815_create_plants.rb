class CreatePlants < ActiveRecord::Migration[5.0]
  def change
    create_table :plants do |t|
      t.string :name
      t.decimal :latitude
      t.decimal :longitude
      t.string :opening_time
      t.string :closing_time
      t.boolean :is_active

      t.timestamps
    end
  end
end
