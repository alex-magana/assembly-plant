class CreateSpecialties < ActiveRecord::Migration[5.0]
  def change
    create_table :specialties do |t|
      t.references :plant, foreign_key: true
      t.references :vehicle, foreign_key: true

      t.timestamps
    end
  end
end
