class CreateModelSensors < ActiveRecord::Migration
  def change
    create_table :model_sensors do |t|
      t.references :model, index: true, foreign_key: true
      t.references :sensor, index: true, foreign_key: true

      t.decimal :latitude, null: false
      t.decimal :longitude, null: false
      t.decimal :sec, null: false

      t.string :sensor_state, null: false, default: :active

      t.timestamps null: false
    end
  end
end
